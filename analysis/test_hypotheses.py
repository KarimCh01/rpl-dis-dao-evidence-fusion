#!/usr/bin/env python3
"""Decide hypotheses H1-H5 from the stored result tables (no simulation).

Inputs are the tables rebuilt by `make reproduce` and by the extension replay.
Outputs: output/hypotheses/ (CSV + JSON) and LaTeX tables in full_paper/generated/.
"""

import json
from pathlib import Path

import numpy as np
import pandas as pd

from aggregate import holm, paired_test

ROOT = Path(__file__).resolve().parents[1]
RES = ROOT / "output" / "results"
EXT = ROOT / "output" / "experiments" / "journal_extension" / "analysis"
OUT = ROOT / "output" / "hypotheses"
TEX = ROOT / "full_paper" / "generated"
ALPHA = 0.05
CONDS = [(k, m) for k in (3, 7, 14) for m in (0.0, 0.3)]
MOB = {0.0: "static", 0.3: "30% mobile"}
AEF, FIXED, FDM, LIMSD = 7, 4, 3, 5


def ari_tests(r):
    rows = []
    for comp, mode, prop, other, alt in [
        ("AEF-RPL vs DIS-FDM", 3, AEF, FDM, "two-sided"),
        ("AEF-RPL vs Li-MSD", 3, AEF, LIMSD, "two-sided"),
        ("AEF-RPL vs learning off", 3, AEF, FIXED, "two-sided"),
        ("Combined vs DIS flooding", None, 3, 1, "less"),
        ("Combined vs DAO manipulation", None, 3, 2, "less"),
    ]:
        for k, m in CONDS:
            base = r[
                (r.attackers == k)
                & (r.mobile_frac == m)
                & (r.dis_interval == 3)
                & (r.fdm_window == 10)
            ]
            if mode is None:
                a = (
                    base[(base.attack_mode == prop) & (base.defense == 0)]
                    .set_index("seed")
                    .ari
                )
                b = (
                    base[(base.attack_mode == other) & (base.defense == 0)]
                    .set_index("seed")
                    .ari
                )
            else:
                a = (
                    base[(base.attack_mode == mode) & (base.defense == prop)]
                    .set_index("seed")
                    .ari
                )
                b = (
                    base[(base.attack_mode == mode) & (base.defense == other)]
                    .set_index("seed")
                    .ari
                )
            common = a.index.intersection(b.index).sort_values()
            n, med, p, rrb = paired_test(
                a.loc[common].values, b.loc[common].values, alt
            )
            rows.append(
                {
                    "comparison": comp,
                    "attackers": k,
                    "mobility": MOB[m],
                    "n_pairs": n,
                    "mean_a": a.loc[common].mean(),
                    "mean_b": b.loc[common].mean(),
                    "median_diff": med,
                    "p": p,
                    "rank_biserial": rrb,
                }
            )
    t = pd.DataFrame(rows)
    t["p_holm"] = t.groupby("comparison")["p"].transform(holm)
    return t


def pick(s, baseline, attack, metric):
    return s[(s.baseline == baseline) & (s.attack == attack) & (s.metric == metric)]


def count(df, cond):
    return int(cond(df).sum()), len(df)


def main():
    s = pd.read_csv(RES / "stats_rq3_rq4_proposed_vs_baselines.csv")
    s2 = pd.read_csv(RES / "stats_rq2_combined_vs_single.csv")
    rep = pd.read_csv(RES / "reproduction_vs_paper.csv")
    res = pd.read_csv(RES / "resilience.csv")
    runs = pd.read_csv(RES / "all_runs.csv")
    ari = ari_tests(res)
    ext = pd.read_csv(EXT / "paired_comparisons.csv")
    benign = pd.read_csv(
        ROOT / "output" / "preliminary" / "learning_fp_extension_summary.csv"
    ).iloc[0]
    sig = lambda d: d.p_holm < ALPHA
    comb = "Combined DIS + DAO"
    ev = {}

    # H1: reproduction of DIS-FDM trends (direction of each effect, interval 3 s, 5 attackers).
    def val(exp, x, cond, metric, col):
        q = rep[
            (rep.experiment == exp)
            & (rep.x == x)
            & (rep.condition == cond)
            & (rep.metric == metric)
        ]
        return float(q[col].iloc[0]) if len(q) else np.nan

    checks = []
    for name, exp, x, hi, lo, metric in [
        ("DIS flooding raises DIO", "interval", 3, "RPL-DIS", "RPL", "dio"),
        ("DIS-FDM lowers DIO under attack", "interval", 3, "RPL-DIS", "DIS-FDM", "dio"),
        ("RPL-MRC lowers DIO under attack", "interval", 3, "RPL-DIS", "RPL-MRC", "dio"),
        (
            "DIS-FDM lowers DIO more than RPL-MRC",
            "interval",
            3,
            "RPL-MRC",
            "DIS-FDM",
            "dio",
        ),
        ("DIS flooding lowers PDR", "interval", 3, "RPL", "RPL-DIS", "pdr_pct"),
        ("DIS-FDM restores PDR", "interval", 3, "DIS-FDM", "RPL-DIS", "pdr_pct"),
        ("DIS flooding raises delay", "interval", 3, "RPL-DIS", "RPL", "delay_ms"),
        ("DIS flooding raises power", "interval", 3, "RPL-DIS", "RPL", "power_mw"),
    ]:
        p_hi, p_lo = val(exp, x, hi, metric, "paper"), val(exp, x, lo, metric, "paper")
        o_hi, o_lo = val(exp, x, hi, metric, "ours"), val(exp, x, lo, metric, "ours")
        rel = (o_hi - o_lo) / abs(o_lo) if o_lo else np.nan
        checks.append(
            {
                "effect": name,
                "paper_diff": p_hi - p_lo,
                "ours_diff": o_hi - o_lo,
                "ours_rel_change": rel,
                "reproduced": bool(
                    np.isfinite(o_hi) and o_hi - o_lo > 0 and rel > 0.01
                ),
            }
        )
    h1 = pd.DataFrame(checks)
    ev["H1"] = {
        "checks": h1.to_dict("records"),
        "reproduced": int(h1.reproduced.sum()),
        "total": len(h1),
    }

    # H2: combined attack worse than each single attack (one-sided, original campaign).
    vs_dis = s2[
        (s2.comparison == "Combined vs DIS flooding") & (s2.metric == "pdr_down")
    ]
    vs_dao_dio = s2[
        (s2.comparison == "Combined vs DAO manipulation") & (s2.metric == "dio_total")
    ]
    vs_dao_pdr = s2[
        (s2.comparison == "Combined vs DAO manipulation") & (s2.metric == "pdr_down")
    ]
    ari_dis = ari[ari.comparison == "Combined vs DIS flooding"]
    ari_dao = ari[ari.comparison == "Combined vs DAO manipulation"]
    vs_dis_dio = s2[
        (s2.comparison == "Combined vs DIS flooding") & (s2.metric == "dio_total")
    ]
    power_dis = s2[
        (s2.comparison == "Combined vs DIS flooding") & (s2.metric == "tx_power_mw")
    ]
    power_dao = s2[
        (s2.comparison == "Combined vs DAO manipulation") & (s2.metric == "tx_power_mw")
    ]
    delay_dis = s2[
        (s2.comparison == "Combined vs DIS flooding") & (s2.metric == "delay_up_ms")
    ]
    delay_dao = s2[
        (s2.comparison == "Combined vs DAO manipulation") & (s2.metric == "delay_up_ms")
    ]
    ev["H2"] = {
        "pdr_down_vs_dis": count(vs_dis, sig),
        "dio_vs_dao": count(vs_dao_dio, sig),
        "pdr_down_vs_dao": count(vs_dao_pdr, sig),
        "dio_vs_dis": count(vs_dis_dio, sig),
        "power_vs_dis": count(power_dis, sig),
        "power_vs_dao": count(power_dao, sig),
        "delay_vs_dis": count(delay_dis, sig),
        "delay_vs_dao": count(delay_dao, sig),
        "ari_vs_dis": count(ari_dis, sig),
        "ari_vs_dao": count(ari_dao, sig),
    }

    # H3: AEF-RPL vs DIS-FDM under the combined attack (two-sided).
    tpr = pick(s, "DIS-FDM", comb, "tpr")
    prec = pick(s, "DIS-FDM", comb, "precision")
    fpr = pick(s, "DIS-FDM", comb, "fpr")
    down = pick(s, "DIS-FDM", comb, "pdr_down")
    a_fdm = ari[ari.comparison == "AEF-RPL vs DIS-FDM"]
    dao_tpr = pick(s, "DIS-FDM", "DAO manipulation", "tpr")
    ev["H3"] = {
        "tpr_higher": count(
            tpr, lambda d: sig(d) & (d.mean_proposed > d.mean_baseline)
        ),
        "precision_higher": count(
            prec, lambda d: sig(d) & (d.mean_proposed > d.mean_baseline)
        ),
        "fpr_higher": count(
            fpr, lambda d: sig(d) & (d.mean_proposed > d.mean_baseline)
        ),
        "pdr_down_higher": count(
            down, lambda d: sig(d) & (d.mean_proposed > d.mean_baseline)
        ),
        "ari_higher": count(a_fdm, lambda d: sig(d) & (d.mean_a > d.mean_b)),
        "dao_only_tpr_higher": count(
            dao_tpr, lambda d: sig(d) & (d.mean_proposed > d.mean_baseline)
        ),
    }
    for b in ("Li-MSD", "Secure-RPL", "RPL-MRC"):
        q = pick(s, b, comb, "pdr_down")
        ev["H3"][f"pdr_down_higher_vs_{b}"] = count(
            q, lambda d: sig(d) & (d.mean_proposed > d.mean_baseline)
        )

    # H4: learning vs fixed decision rule, same evidence.
    lf = "AEF-RPL, learning off"
    fpr4 = pd.concat([pick(s, lf, comb, "fpr"), pick(s, lf, "No attack", "fpr")])
    lat4 = pick(s, lf, comb, "detect_latency_s")
    a_fix = ari[ari.comparison == "AEF-RPL vs learning off"]
    ev["H4"] = {
        "fpr_lower": count(
            fpr4, lambda d: sig(d) & (d.mean_proposed < d.mean_baseline)
        ),
        "fpr_higher": count(
            fpr4, lambda d: sig(d) & (d.mean_proposed > d.mean_baseline)
        ),
        "fpr_mean_higher": count(fpr4, lambda d: d.mean_proposed > d.mean_baseline),
        "ari_lower": count(a_fix, lambda d: sig(d) & (d.mean_a < d.mean_b)),
        "latency_lower": count(
            lat4, lambda d: sig(d) & (d.mean_proposed < d.mean_baseline)
        ),
        "latency_reduction_pct": [
            round(float(100 * (1 - r.mean_proposed / r.mean_baseline)), 1)
            for r in lat4.itertuples()
        ],
        "benign_fresh_fpr_fixed_pct": round(float(benign.fixed_mean_fpr_pct), 2),
        "benign_fresh_fpr_learning_pct": round(float(benign.learning_mean_fpr_pct), 2),
        "benign_fresh_wilcoxon_p": float(benign.wilcoxon_two_sided_p),
    }
    # Policy stability: states (of 96) whose greedy action changed in the last 10-minute report, per node.
    pol = runs[
        (runs.defense == AEF)
        & (runs.dis_interval == 3)
        & (runs.fdm_window == 10)
        & runs.attack_mode.isin([0, 3])
    ]
    ev["H4"]["policy_changes_last_10min"] = {
        f"{'combined' if a == 3 else 'no_attack'}_{'static' if m == 0 else 'mobile'}": round(
            float(g.mean()), 2
        )
        for (a, m), g in pol.groupby(["attack_mode", "mobile_frac"]).policy_changes_last
    }
    # Largest per-run value under the mobile combined attack: first learning version (6) vs final (7).
    mc = runs[
        (runs.attack_mode == 3)
        & (runs.mobile_frac == 0.3)
        & (runs.dis_interval == 3)
        & (runs.fdm_window == 10)
    ]
    ev["H4"]["policy_changes_max_mobile_combined"] = {
        "first_version": round(float(mc[mc.defense == 6].policy_changes_last.max()), 2),
        "final": round(float(mc[mc.defense == AEF].policy_changes_last.max()), 2),
    }

    # H5: consistency of the H3 service effect across topology, attack rate and reception loss.
    e = ext[
        (ext.reference == "AEF learning")
        & (ext.comparison == "DIS-FDM")
        & (ext.metric == "pdr_down")
        & (ext.attack_mode == 3)
        & ext.experiment.isin(["rate_robustness", "radio_loss"])
    ]
    e = e.assign(ci_above_zero=e.paired_bootstrap_ci95_low > 0)
    ev["H5"] = {
        "static_pdr_down": count(down[down.mobility == "static"], sig),
        "mobile_pdr_down": count(down[down.mobility != "static"], sig),
        "extension_cells_positive": count(
            e, lambda d: d.difference_reference_minus_comparison > 0
        ),
        "extension_cells_ci_above_zero": count(e, lambda d: d.ci_above_zero),
        "extension_cells": e[
            [
                "experiment",
                "mobile_frac",
                "dis_interval",
                "rx_ratio",
                "difference_reference_minus_comparison",
                "paired_bootstrap_ci95_low",
                "paired_bootstrap_ci95_high",
            ]
        ]
        .round(4)
        .to_dict("records"),
    }

    OUT.mkdir(parents=True, exist_ok=True)
    ari.to_csv(OUT / "ari_tests.csv", index=False, float_format="%.6g")
    h1.to_csv(OUT / "h1_reproduction_checks.csv", index=False, float_format="%.6g")
    # Per-condition primary results table (original campaign, combined attack).
    lines = []
    for k, m in CONDS:
        d = down[(down.attackers == k) & (down.mobility == MOB[m])].iloc[0]
        a = a_fdm[(a_fdm.attackers == k) & (a_fdm.mobility == MOB[m])].iloc[0]
        lt = lat4[(lat4.attackers == k) & (lat4.mobility == MOB[m])].iloc[0]
        cell = res[
            (res.attack_mode == 3)
            & (res.attackers == k)
            & (res.mobile_frac == m)
            & (res.dis_interval == 3)
            & (res.fdm_window == 10)
        ]
        rec = [
            int((cell[cell.defense == d].drt_censored == 0).sum()) for d in (AEF, FDM)
        ]
        ev.setdefault("recovered_runs_aef_fdm", {})[
            f"k{k}_{'S' if m == 0 else 'M'}"
        ] = rec
        lines.append(
            f"{k} & {'S' if m == 0 else 'M'} & {100*d.mean_proposed:.1f} / {100*d.mean_baseline:.1f} & "
            f"{d.p_holm:.3f} & {a.mean_a:.3f} / {a.mean_b:.3f} & {a.p_holm:.3f} & "
            f"{lt.mean_proposed:.1f} / {lt.mean_baseline:.1f} & {lt.p_holm:.3f} & {rec[0]} / {rec[1]} \\\\"
        )
    TEX.mkdir(parents=True, exist_ok=True)
    (TEX / "primary_tests_table.tex").write_text(
        "\\begin{tabular}{@{}clrrrrrrr@{}}\n\\toprule\n"
        " & & \\multicolumn{2}{c}{Down PDR (\\%)} & \\multicolumn{2}{c}{ARI} & \\multicolumn{2}{c}{Latency (s)} & Recovered\\\\\n"
        "\\cmidrule(lr){3-4}\\cmidrule(lr){5-6}\\cmidrule(lr){7-8}\\cmidrule(l){9-9}\n"
        "$k$ & Topo. & AEF-RPL / DIS-FDM & $p_H$ & AEF-RPL / DIS-FDM & $p_H$ & Learning / Fixed rule & $p_H$ & AEF-RPL / DIS-FDM\\\\\n\\midrule\n"
        + "\n".join(lines)
        + "\n\\bottomrule\n\\end{tabular}\n"
    )

    (OUT / "evidence.json").write_text(json.dumps(ev, indent=1, default=float))
    h2, h3, h4, h5 = ev["H2"], ev["H3"], ev["H4"], ev["H5"]
    f = lambda c: f"{c[0]}/{c[1]}"
    rows = [
        (
            "H1",
            "DIS-FDM's published trends are reproduced",
            "Same direction as published, with a change above 1\\%, for every checked effect; no test",
            f"{ev['H1']['reproduced']}/{ev['H1']['total']} effect directions",
            "Partly supported",
        ),
        (
            "H2",
            "Combined attack is worse than each single attack",
            "One-sided Wilcoxon, Holm, $p_H<0.05$ against each single attack",
            f"Down PDR vs DIS {f(h2['pdr_down_vs_dis'])}, vs DAO {f(h2['pdr_down_vs_dao'])}; "
            f"DIO vs DIS {f(h2['dio_vs_dis'])}, vs DAO {f(h2['dio_vs_dao'])}; "
            f"Tx power vs DIS {f(h2['power_vs_dis'])}, vs DAO {f(h2['power_vs_dao'])}; "
            f"delay vs DIS {f(h2['delay_vs_dis'])}, vs DAO {f(h2['delay_vs_dao'])}; "
            f"ARI vs DIS {f(h2['ari_vs_dis'])}, vs DAO {f(h2['ari_vs_dao'])}",
            "Partly supported",
        ),
        (
            "H3",
            "AEF-RPL has higher detection accuracy than DIS-FDM against the combined attack",
            "Two-sided Wilcoxon, Holm; TPR or precision higher and FPR not higher",
            f"TPR higher {f(h3['tpr_higher'])}; precision higher {f(h3['precision_higher'])}; "
            f"FPR higher {f(h3['fpr_higher'])}. RQ3 resilience: down PDR {f(h3['pdr_down_higher'])}, "
            f"ARI {f(h3['ari_higher'])}; DAO-only TPR {f(h3['dao_only_tpr_higher'])}",
            "Not supported for detection; resilience improved",
        ),
        (
            "H4",
            "Learning lowers FPR without lowering ARI",
            "Two-sided Wilcoxon, Holm; FPR lower and ARI not lower",
            f"FPR lower {f(h4['fpr_lower'])} (mean FPR higher in {f(h4['fpr_mean_higher'])}, "
            f"significant {f(h4['fpr_higher'])}); ARI lower {f(h4['ari_lower'])}; latency lower {f(h4['latency_lower'])}",
            "Not supported (FPR); latency gain",
        ),
        (
            "H5",
            "The improvements hold across seeds in static and mobile networks, and at 500 and 1000 nodes",
            "H3 and H4 effects significant in static and in mobile networks; direction kept at 500 and 1000 nodes",
            f"Service gain static {f(h5['static_pdr_down'])}, mobile {f(h5['mobile_pdr_down'])}; "
            f"rate and loss cells with CI $>0$ {f(h5['extension_cells_ci_above_zero'])}; 500 and 1000 nodes not tested",
            "Partly supported (service gain, 30 nodes)",
        ),
    ]
    (TEX / "hypothesis_table.tex").write_text(
        "\\begin{tabularx}{\\textwidth}{@{}l>{\\raggedright}p{0.17\\textwidth}>{\\raggedright}p{0.2\\textwidth}X>{\\raggedright\\arraybackslash}p{0.13\\textwidth}@{}}\n"
        "\\toprule\nHyp. & Alternative hypothesis ($H_1$) & Pre-specified decision rule & Evidence (significant conditions / tested, Holm $p_H<0.05$) & Decision\\\\\n"
        "\\midrule\n"
        + "\n".join(" & ".join(r) + " \\\\" for r in rows)
        + "\n\\bottomrule\n\\end{tabularx}\n"
    )

    print(
        json.dumps(
            {
                k: {
                    x: y for x, y in v.items() if x not in ("checks", "extension_cells")
                }
                for k, v in ev.items()
            },
            indent=1,
            default=float,
        )
    )
    print(h1.round(3).to_string(index=False))
    print(ari.round(4).to_string(index=False))


if __name__ == "__main__":
    main()
