#!/usr/bin/env python3
"""Paired analysis of fresh no-attack/mobile learning false-positive runs."""

import csv
import json
import random
import statistics
from pathlib import Path
from scipy.stats import wilcoxon
import parse_run

ROOT = Path(__file__).resolve().parents[1]
RUNS = ROOT / "output" / "runs"
OUT = ROOT / "output" / "preliminary"
SEEDS = range(11, 21)

pairs = {}
for seed in SEEDS:
    for defense in (4, 7):
        run_id = f"m0_k0_i3_mob3_d{defense}_s{seed}"
        p = RUNS / run_id / "result.json"
        if not p.exists():
            p = OUT / "learning_fp_extension" / run_id / "result.json"
        if not p.exists():
            raise SystemExit(f"missing completed run: {run_id}")
        saved = json.loads(p.read_text())
        d = parse_run.parse(p.parent)
        canonical = lambda value: json.dumps(
            {k: v for k, v in value.items() if k != "wall_s"}, sort_keys=True
        )
        if canonical(d) != canonical(saved):
            raise SystemExit(f"raw-log replay mismatch: {run_id}")
        flags = d.get("_flags", {})
        first_reasons = []
        events = 0
        for recs in flags.values():
            events += len(recs)
            if recs:
                first_reasons.append(sorted(recs, key=lambda x: float(x[0]))[0][2])
        pairs.setdefault(seed, {})[defense] = {
            "fpr_pct": float(d["fpr"]) * 100,
            "unique_fp_nodes": int(d["fp"]),
            "blacklist_events": events,
            "q_first_flags": sum(1 for r in first_reasons if int(r) == 7),
        }

seeds = list(SEEDS)
diffs = [pairs[s][7]["fpr_pct"] - pairs[s][4]["fpr_pct"] for s in seeds]
mean_diff = statistics.mean(diffs)
rng = random.Random(20261020)
boot = [statistics.mean(rng.choices(diffs, k=len(diffs))) for _ in range(20000)]
boot.sort()
lo, hi = boot[int(0.025 * len(boot))], boot[int(0.975 * len(boot))]
try:
    p_value = float(wilcoxon(diffs, alternative="two-sided", method="exact").pvalue)
except ValueError:
    p_value = float("nan")

rows = []
for seed in seeds:
    a, b = pairs[seed][4], pairs[seed][7]
    rows.append(
        {
            "seed": seed,
            "fixed_fpr_pct": a["fpr_pct"],
            "learning_fpr_pct": b["fpr_pct"],
            "paired_difference_pp_learning_minus_fixed": b["fpr_pct"] - a["fpr_pct"],
            "fixed_unique_fp_nodes": a["unique_fp_nodes"],
            "learning_unique_fp_nodes": b["unique_fp_nodes"],
            "fixed_blacklist_events": a["blacklist_events"],
            "learning_blacklist_events": b["blacklist_events"],
            "learning_first_q_flags": b["q_first_flags"],
        }
    )
with (OUT / "learning_fp_extension_paired.csv").open("w", newline="") as f:
    w = csv.DictWriter(f, fieldnames=list(rows[0]))
    w.writeheader()
    w.writerows(rows)

summary = {
    "seeds": len(seeds),
    "fixed_mean_fpr_pct": statistics.mean(pairs[s][4]["fpr_pct"] for s in seeds),
    "learning_mean_fpr_pct": statistics.mean(pairs[s][7]["fpr_pct"] for s in seeds),
    "mean_paired_difference_pp": mean_diff,
    "paired_difference_bootstrap_95ci_low_pp": lo,
    "paired_difference_bootstrap_95ci_high_pp": hi,
    "wilcoxon_two_sided_p": p_value,
    "fixed_mean_blacklist_events": statistics.mean(
        pairs[s][4]["blacklist_events"] for s in seeds
    ),
    "learning_mean_blacklist_events": statistics.mean(
        pairs[s][7]["blacklist_events"] for s in seeds
    ),
    "learning_first_q_flags_total": sum(pairs[s][7]["q_first_flags"] for s in seeds),
    "learning_unique_flags_total": sum(pairs[s][7]["unique_fp_nodes"] for s in seeds),
}
with (OUT / "learning_fp_extension_summary.csv").open("w", newline="") as f:
    w = csv.DictWriter(f, fieldnames=list(summary))
    w.writeheader()
    w.writerow(summary)
print(json.dumps(summary, indent=2))
