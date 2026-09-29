#!/usr/bin/env python3
import glob
import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from scipy import stats

ROOT = Path(__file__).resolve().parents[1]
RES = ROOT / "output" / "results"
FIG = ROOT / "output" / "figures"
SKIP = ("smoke", "verify", "radio", "tsch")

DEF = {0: "RPL (no defense)", 1: "Secure-RPL", 2: "RPL-MRC", 3: "DIS-FDM", 4: "DIS-FDM + DAO evidence"}
ATK = {0: "No attack", 1: "DIS flooding", 2: "DAO manipulation", 3: "Combined DIS + DAO"}
COL = {0: "#6c757d", 1: "#f08c00", 2: "#7048e8", 3: "#1971c2", 4: "#2f9e44"}
MOB = {0.0: "static", 0.3: "30% mobile"}
MAIN_K = (3, 7, 14)
PCT = {3: 10, 7: 25, 14: 50}

METRICS = ["pdr_up", "pdr_down", "delay_up_ms", "rtt_ms", "dio_total", "dis_total", "dao_total",
           "tx_power_mw", "radio_power_mw", "parent_switches_legit", "tpr", "fpr", "precision",
           "detect_latency_s", "fp_before_attack"]


def load():
    rows = []
    for f in glob.glob(str(ROOT / "output/runs/*/result.json")):
        rid = Path(f).parent.name
        if rid.startswith(SKIP):
            continue
        r = json.loads(Path(f).read_text())
        rows.append({k: v for k, v in r.items() if not k.startswith("_")})
    df = pd.DataFrame(rows)
    df["mobile_frac"] = df["mobile_frac"].round(1)
    return df.sort_values(["attack_mode", "attackers", "dis_interval", "mobile_frac", "defense", "seed"])


def ci(x):
    x = pd.Series(x).dropna()
    n = len(x)
    if n == 0:
        return np.nan, np.nan, 0
    m = x.mean()
    if n < 2:
        return m, 0.0, n
    h = stats.t.ppf(0.975, n - 1) * x.std(ddof=1) / np.sqrt(n)
    return m, h, n


def summarize(df):
    keys = ["attack_mode", "attackers", "dis_interval", "mobile_frac", "defense"]
    out = []
    for k, g in df.groupby(keys):
        row = dict(zip(keys, k))
        row["n"] = len(g)
        for m in METRICS:
            mean, h, _ = ci(g[m])
            row[m] = mean
            row[m + "_ci95"] = h
            row[m + "_sd"] = g[m].std(ddof=1)
        out.append(row)
    return pd.DataFrame(out)


def holm(p):
    p = np.asarray(p, dtype=float)
    idx = np.argsort(np.where(np.isnan(p), 2, p))
    adj = np.full_like(p, np.nan)
    m = np.sum(~np.isnan(p))
    running = 0.0
    for rank, i in enumerate(idx):
        if np.isnan(p[i]):
            continue
        running = max(running, min(1.0, (m - rank) * p[i]))
        adj[i] = running
    return adj


def paired_test(a, b, alternative="two-sided"):
    d = (np.asarray(a, float) - np.asarray(b, float))
    d = d[~np.isnan(d)]
    n = len(d)
    if n == 0:
        return n, np.nan, np.nan, np.nan
    if np.allclose(d, 0):
        return n, 0.0, 1.0, 0.0
    res = stats.wilcoxon(d, alternative=alternative, zero_method="wilcox")
    nz = d[d != 0]
    ranks = stats.rankdata(np.abs(nz))
    wpos = ranks[nz > 0].sum()
    wneg = ranks[nz < 0].sum()
    rrb = (wpos - wneg) / (wpos + wneg) if (wpos + wneg) else 0.0
    return n, float(np.median(d)), float(res.pvalue), float(rrb)


def pair(df, sel_a, sel_b, metric):
    a = df.query(sel_a).set_index("seed")[metric]
    b = df.query(sel_b).set_index("seed")[metric]
    common = a.index.intersection(b.index)
    return a.loc[common].values, b.loc[common].values


def line_plot(ax, sub, x, metric, defenses, scale=1.0):
    for d in defenses:
        s = sub[sub.defense == d].sort_values(x)
        if s.empty:
            continue
        ax.errorbar(s[x], s[metric] * scale, yerr=s[metric + "_ci95"] * scale, marker="o",
                    capsize=3, color=COL[d], label=DEF[d] if d else "RPL under attack (no defense)")


def repro_figures(summ, ref):
    stat = summ[summ.mobile_frac == 0.0]
    base = stat[(stat.attack_mode == 0) & (stat.defense == 0)]
    specs = [("pdr_up", "Upward packet delivery ratio (%)", 100, "pdr_pct"),
             ("delay_up_ms", "Average end-to-end delay (ms)", 1, "delay_ms"),
             ("dio_total", "Control overhead (DIO messages)", 1, "dio"),
             ("tx_power_mw", "Radio transmit power per node (mW)", 1, None),
             ("radio_power_mw", "Total radio power per node (mW)", 1, "power_mw")]
    for family, x, fixed in (("interval", "dis_interval", ("attackers", 5)),
                             ("attackers", "attackers", ("dis_interval", 3))):
        sub = stat[(stat.attack_mode == 1) & (stat[fixed[0]] == fixed[1])]
        for metric, label, scale, refkey in specs:
            fig, ax = plt.subplots(figsize=(6.4, 4.2))
            line_plot(ax, sub, x, metric, [0, 1, 2, 3], scale)
            if not base.empty:
                v = base[metric].iloc[0] * scale
                ax.axhline(v, color="black", ls="--", lw=1.2, label="RPL, no attack")
            if refkey:
                r = ref[family]
                for name, color in (("RPL", "black"), ("RPL-DIS", COL[0]), ("DIS-FDM", COL[3]),
                                    ("RPL-MRC", COL[2])):
                    vals = r.get(refkey, {}).get(name)
                    if not vals:
                        continue
                    pts = [(xx, vv) for xx, vv in zip(r["x"], vals) if vv is not None]
                    if pts:
                        ax.scatter([p[0] for p in pts], [p[1] for p in pts], marker="D",
                                   facecolors="none", edgecolors=color, s=55, lw=1.5,
                                   label=f"paper: {name}")
            ax.set_xlabel("Attack DIS interval (s)" if family == "interval" else "Number of attackers")
            ax.set_ylabel(label)
            ax.set_title(f"Reproduction (static, {'5 attackers' if family == 'interval' else '3 s interval'})")
            ax.grid(alpha=0.3)
            ax.legend(fontsize=7, ncol=2)
            fig.tight_layout()
            fig.savefig(FIG / f"repro_{family}_{metric}.png", dpi=200)
            plt.close(fig)


def bar_panel(ax, sub, metric, modes, defenses, scale=1.0, width=0.16):
    xs = np.arange(len(modes))
    for j, d in enumerate(defenses):
        vals, errs = [], []
        for mode in modes:
            s = sub[(sub.attack_mode == mode) & (sub.defense == d)]
            vals.append(s[metric].iloc[0] * scale if not s.empty else np.nan)
            errs.append(s[metric + "_ci95"].iloc[0] * scale if not s.empty else 0)
        ax.bar(xs + (j - (len(defenses) - 1) / 2) * width, vals, width, yerr=errs, capsize=2,
               color=COL[d], label=DEF[d])
    ax.set_xticks(xs)
    ax.set_xticklabels([ATK[m] for m in modes], fontsize=8)
    ax.grid(axis="y", alpha=0.3)


def main_figures(summ):
    main = summ[summ.dis_interval == 3]
    for k in MAIN_K:
        fig, axes = plt.subplots(2, 3, figsize=(15, 8))
        for row, mob in enumerate((0.0, 0.3)):
            sub = main[(main.attackers == k) & (main.mobile_frac == mob)]
            for col, (metric, label, scale) in enumerate((("pdr_down", "Downward delivery (%)", 100),
                                                          ("dio_total", "DIO messages", 1),
                                                          ("tx_power_mw", "Transmit power (mW)", 1))):
                ax = axes[row, col]
                bar_panel(ax, sub, metric, [1, 2, 3], [0, 1, 2, 3, 4], scale)
                ax.set_ylabel(label)
                ax.set_title(f"{PCT[k]}% malicious ({k} nodes), {MOB[mob]}")
        axes[0, 0].legend(fontsize=7)
        fig.tight_layout()
        fig.savefig(FIG / f"main_network_k{k}.png", dpi=200)
        plt.close(fig)

        fig, axes = plt.subplots(2, 3, figsize=(15, 8))
        for row, mob in enumerate((0.0, 0.3)):
            sub = main[(main.attackers == k) & (main.mobile_frac == mob)]
            for col, (metric, label, scale) in enumerate((("tpr", "True positive rate (%)", 100),
                                                          ("fpr", "False positive rate (%)", 100),
                                                          ("detect_latency_s", "Detection latency (s)", 1))):
                ax = axes[row, col]
                bar_panel(ax, sub, metric, [1, 2, 3], [1, 3, 4], scale, width=0.25)
                ax.set_ylabel(label)
                ax.set_title(f"{PCT[k]}% malicious ({k} nodes), {MOB[mob]}")
        axes[0, 0].legend(fontsize=7)
        fig.tight_layout()
        fig.savefig(FIG / f"main_detection_k{k}.png", dpi=200)
        plt.close(fig)

    na = summ[summ.attack_mode == 0]
    fig, ax = plt.subplots(figsize=(7, 4))
    xs = np.arange(2)
    for j, d in enumerate([1, 3, 4]):
        vals = [na[(na.mobile_frac == m) & (na.defense == d)]["fpr"].mean() * 100 for m in (0.0, 0.3)]
        errs = [na[(na.mobile_frac == m) & (na.defense == d)]["fpr_ci95"].mean() * 100 for m in (0.0, 0.3)]
        ax.bar(xs + (j - 1) * 0.25, vals, 0.25, yerr=errs, capsize=3, color=COL[d], label=DEF[d])
    ax.set_xticks(xs)
    ax.set_xticklabels(["static, no attack", "30% mobile, no attack"])
    ax.set_ylabel("False positive rate (%)")
    ax.set_title("False alarms with no attacker present")
    ax.grid(axis="y", alpha=0.3)
    ax.legend(fontsize=8)
    fig.tight_layout()
    fig.savefig(FIG / "false_positives_no_attack.png", dpi=200)
    plt.close(fig)

    nd = main[(main.defense == 0) & (main.attack_mode > 0)]
    fig, axes = plt.subplots(1, 4, figsize=(17, 4))
    for ax, (metric, label, scale) in zip(axes, (("pdr_down", "Downward delivery (%)", 100),
                                                 ("dio_total", "DIO messages", 1),
                                                 ("tx_power_mw", "Transmit power (mW)", 1),
                                                 ("delay_up_ms", "Upward delay (ms)", 1))):
        xs = np.arange(3)
        for j, mode in enumerate((1, 2, 3)):
            vals, errs = [], []
            for k in MAIN_K:
                s = nd[(nd.attack_mode == mode) & (nd.attackers == k) & (nd.mobile_frac == 0.0)]
                vals.append(s[metric].iloc[0] * scale if not s.empty else np.nan)
                errs.append(s[metric + "_ci95"].iloc[0] * scale if not s.empty else 0)
            ax.bar(xs + (j - 1) * 0.27, vals, 0.27, yerr=errs, capsize=2,
                   color=["#f08c00", "#7048e8", "#e03131"][j], label=ATK[mode])
        ax.set_xticks(xs)
        ax.set_xticklabels([f"{PCT[k]}%" for k in MAIN_K])
        ax.set_xlabel("Malicious nodes")
        ax.set_ylabel(label)
        ax.grid(axis="y", alpha=0.3)
    axes[0].legend(fontsize=8)
    fig.suptitle("RQ2: damage of each attack with no defense (static)")
    fig.tight_layout()
    fig.savefig(FIG / "rq2_attack_damage.png", dpi=200)
    plt.close(fig)


def rq2_tests(df):
    rows = []
    for k in MAIN_K:
        for mob in (0.0, 0.3):
            for single in (1, 2):
                for metric, better in (("pdr_down", "less"), ("pdr_up", "less"), ("dio_total", "greater"),
                                       ("tx_power_mw", "greater"), ("delay_up_ms", "greater")):
                    base = f"defense == 0 and attackers == {k} and mobile_frac == {mob} and dis_interval == 3"
                    a, b = pair(df, base + " and attack_mode == 3", base + f" and attack_mode == {single}", metric)
                    n, med, p, r = paired_test(a, b, alternative=better)
                    rows.append({"malicious_pct": PCT[k], "attackers": k, "mobility": MOB[mob], "comparison": f"Combined vs {ATK[single]}",
                                 "metric": metric, "alternative": f"combined {better}", "n_pairs": n,
                                 "median_diff": med, "p": p, "rank_biserial": r})
    t = pd.DataFrame(rows)
    t["p_holm"] = holm(t["p"])
    return t


def rq34_tests(df):
    rows = []
    for other in (3, 1, 2):
        for mode in (1, 2, 3):
            for k in MAIN_K:
                for mob in (0.0, 0.3):
                    for metric in ("tpr", "fpr", "precision", "detect_latency_s", "pdr_down", "pdr_up",
                                   "dio_total", "tx_power_mw", "delay_up_ms"):
                        if other == 2 and metric in ("tpr", "fpr", "precision", "detect_latency_s"):
                            continue
                        base = (f"attack_mode == {mode} and attackers == {k} and mobile_frac == {mob} "
                                f"and dis_interval == 3")
                        a, b = pair(df, base + " and defense == 4", base + f" and defense == {other}", metric)
                        n, med, p, r = paired_test(a, b)
                        rows.append({"baseline": DEF[other], "attack": ATK[mode], "malicious_pct": PCT[k],
                                     "attackers": k, "mobility": MOB[mob], "metric": metric, "n_pairs": n,
                                     "mean_proposed": np.nanmean(a) if len(a) else np.nan,
                                     "sd_proposed": np.nanstd(a, ddof=1) if len(a) > 1 else np.nan,
                                     "mean_baseline": np.nanmean(b) if len(b) else np.nan,
                                     "sd_baseline": np.nanstd(b, ddof=1) if len(b) > 1 else np.nan,
                                     "median_diff": med, "p": p, "rank_biserial": r})
        if other in (3, 1):
            for mob in (0.0, 0.3):
                base = f"attack_mode == 0 and mobile_frac == {mob}"
                a, b = pair(df, base + " and defense == 4", base + f" and defense == {other}", "fpr")
                n, med, p, r = paired_test(a, b)
                rows.append({"baseline": DEF[other], "attack": ATK[0], "malicious_pct": 0, "attackers": 0,
                             "mobility": MOB[mob], "metric": "fpr", "n_pairs": n,
                             "mean_proposed": np.nanmean(a) if len(a) else np.nan,
                             "sd_proposed": np.nanstd(a, ddof=1) if len(a) > 1 else np.nan,
                             "mean_baseline": np.nanmean(b) if len(b) else np.nan,
                             "sd_baseline": np.nanstd(b, ddof=1) if len(b) > 1 else np.nan,
                             "median_diff": med, "p": p, "rank_biserial": r})
    t = pd.DataFrame(rows)
    t["p_holm"] = holm(t["p"])
    return t


def repro_table(summ, ref):
    stat = summ[(summ.mobile_frac == 0.0)]
    base = stat[(stat.attack_mode == 0) & (stat.defense == 0)]
    rows = []
    name_def = {"RPL-DIS": 0, "RPL-MRC": 2, "DIS-FDM": 3}
    for family, x, fixed in (("interval", "dis_interval", ("attackers", 5)),
                             ("attackers", "attackers", ("dis_interval", 3))):
        r = ref[family]
        for refkey, metric, scale in (("pdr_pct", "pdr_up", 100), ("delay_ms", "delay_up_ms", 1),
                                      ("dio", "dio_total", 1), ("power_mw", "radio_power_mw", 1)):
            for name, vals in r.get(refkey, {}).items():
                for xx, vv in zip(r["x"], vals):
                    if vv is None:
                        continue
                    if name == "RPL":
                        ours = base[metric].iloc[0] * scale if not base.empty else np.nan
                    else:
                        s = stat[(stat.attack_mode == 1) & (stat.defense == name_def[name]) &
                                 (stat[x] == xx) & (stat[fixed[0]] == fixed[1])]
                        ours = s[metric].iloc[0] * scale if not s.empty else np.nan
                    rows.append({"experiment": family, "x": xx, "condition": name, "metric": refkey,
                                 "paper": vv, "ours": round(ours, 3)})
    return pd.DataFrame(rows)


def fmt(v, h, scale=1.0, nd=1):
    if pd.isna(v):
        return "n/a"
    if pd.isna(h):
        return f"{v * scale:.{nd}f}"
    return f"{v * scale:.{nd}f} ± {h * scale:.{nd}f}"


def markdown(summ, t2, t34, rt):
    L = ["# Results summary", ""]
    L.append("Tables report mean ± standard deviation over 10 seeds per cell. "
             "95% confidence intervals are in summary_by_condition.csv and in the figures.")
    L.append("")
    main = summ[summ.dis_interval == 3]
    for k in MAIN_K:
        for mob in (0.0, 0.3):
            L.append(f"## Main matrix: {PCT[k]}% malicious ({k} of 29 sensor nodes), {MOB[mob]}")
            L.append("")
            L.append("| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | "
                     "Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |")
            L.append("|---|---|---|---|---|---|---|---|---|---|---|")
            sub = main[(main.attackers == k) & (main.mobile_frac == mob)]
            for mode in (1, 2, 3):
                for d in (0, 1, 2, 3, 4):
                    s = sub[(sub.attack_mode == mode) & (sub.defense == d)]
                    if s.empty:
                        continue
                    s = s.iloc[0]
                    L.append(f"| {ATK[mode]} | {DEF[d]} | {fmt(s.pdr_down, s.pdr_down_sd, 100)} | "
                             f"{fmt(s.pdr_up, s.pdr_up_sd, 100)} | {fmt(s.delay_up_ms, s.delay_up_ms_sd)} | "
                             f"{fmt(s.dio_total, s.dio_total_sd, 1, 0)} | "
                             f"{fmt(s.tx_power_mw, s.tx_power_mw_sd, 1, 3)} | {fmt(s.tpr, s.tpr_sd, 100)} | "
                             f"{fmt(s.fpr, s.fpr_sd, 100)} | {fmt(s.precision, s.precision_sd, 100)} | "
                             f"{fmt(s.detect_latency_s, s.detect_latency_s_sd)} |")
            L.append("")
    L.append("## False positives with no attacker present")
    L.append("")
    L.append("| Mobility | Defense | FPR (%) | Legit nodes flagged |")
    L.append("|---|---|---|---|")
    na = summ[summ.attack_mode == 0]
    for mob in (0.0, 0.3):
        for d in (1, 3, 4):
            s = na[(na.mobile_frac == mob) & (na.defense == d)]
            if s.empty:
                continue
            s = s.iloc[0]
            L.append(f"| {MOB[mob]} | {DEF[d]} | {fmt(s.fpr, s.fpr_sd, 100)} | "
                     f"{fmt(s.fp_before_attack, s.fp_before_attack_sd, 1, 2)} |")
    L.append("")
    L.append("## RQ1: reproduction against the paper's published values (static)")
    L.append("")
    L.append("| Experiment | x | Condition | Metric | Paper | Ours |")
    L.append("|---|---|---|---|---|---|")
    for _, r in rt.iterrows():
        L.append(f"| {r.experiment} | {r.x} | {r.condition} | {r.metric} | {r.paper} | {r.ours} |")
    L.append("")
    L.append("## RQ2: combined attack vs each single attack, no defense (one-sided Wilcoxon, Holm-adjusted)")
    L.append("")
    L.append("| Malicious | Mobility | Comparison | Metric | Median diff | p (Holm) | r_rb |")
    L.append("|---|---|---|---|---|---|---|")
    for _, r in t2.iterrows():
        L.append(f"| {r.malicious_pct}% | {r.mobility} | {r.comparison} | {r.metric} | {r.median_diff:.4g} | "
                 f"{r.p_holm:.3g} | {r.rank_biserial:.2f} |")
    L.append("")
    L.append("## RQ3/RQ4: proposed defense vs each baseline (two-sided Wilcoxon, Holm-adjusted p < 0.05)")
    L.append("")
    L.append("| Baseline | Attack | Malicious | Mobility | Metric | Proposed | Baseline | Median diff | p (Holm) | r_rb |")
    L.append("|---|---|---|---|---|---|---|---|---|---|")
    for _, r in t34[t34.p_holm < 0.05].iterrows():
        L.append(f"| {r.baseline} | {r.attack} | {r.malicious_pct}% | {r.mobility} | {r.metric} | "
                 f"{r.mean_proposed:.4g} ± {r.sd_proposed:.2g} | {r.mean_baseline:.4g} ± {r.sd_baseline:.2g} | "
                 f"{r.median_diff:.4g} | {r.p_holm:.3g} | {r.rank_biserial:.2f} |")
    (RES / "summary.md").write_text("\n".join(L) + "\n")


def main():
    RES.mkdir(parents=True, exist_ok=True)
    FIG.mkdir(parents=True, exist_ok=True)
    ref = json.loads((Path(__file__).parent / "paper_reference.json").read_text())
    df = load()
    df.to_csv(RES / "all_runs.csv", index=False)
    summ = summarize(df)
    summ.to_csv(RES / "summary_by_condition.csv", index=False)
    repro_figures(summ, ref)
    main_figures(summ)
    t2 = rq2_tests(df)
    t2.to_csv(RES / "stats_rq2_combined_vs_single.csv", index=False)
    t34 = rq34_tests(df)
    t34.to_csv(RES / "stats_rq3_rq4_proposed_vs_baselines.csv", index=False)
    rt = repro_table(summ, ref)
    rt.to_csv(RES / "reproduction_vs_paper.csv", index=False)
    markdown(summ, t2, t34, rt)
    print(f"{len(df)} runs aggregated")


if __name__ == "__main__":
    main()
