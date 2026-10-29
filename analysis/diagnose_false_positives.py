#!/usr/bin/env python3
"""Summarize blacklist reasons in the existing 30-node, no-attack mobile runs.

This is descriptive log diagnosis only; it does not change the primary result tables
or treat individual nodes/events as independent experimental replicates.
"""
import csv
import json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
RUNS = ROOT / "output" / "runs"
OUT = ROOT / "output" / "preliminary" / "learning_fp_diagnostic.csv"
REASONS = {1: "secure_rpl", 2: "c1_count", 3: "rule", 4: "fused_evidence",
           5: "dao_evidence", 6: "limsd", 7: "q_learning"}
DEFENSES = {4: "fixed_rule", 6: "learning_v1", 7: "learning_v2"}

rows = []
for defense, label in DEFENSES.items():
    for path in sorted(RUNS.glob(f"m0_k0_i3_mob3_d{defense}_s*/result.json")):
        result = json.loads(path.read_text())
        first_by_node = {}
        all_events = []
        for suspect, events in result.get("_flags", {}).items():
            for time_s, reporter, reason in events:
                all_events.append((float(time_s), int(suspect), int(reporter), int(reason)))
                prior = first_by_node.get(int(suspect))
                item = (float(time_s), int(reason), int(reporter))
                if prior is None or item[0] < prior[0]:
                    first_by_node[int(suspect)] = item
        first_counts = Counter(REASONS.get(x[1], f"reason_{x[1]}") for x in first_by_node.values())
        event_counts = Counter(REASONS.get(x[3], f"reason_{x[3]}") for x in all_events)
        row = {
            "run_id": result["run_id"], "seed": result["seed"],
            "defense": label, "defense_id": defense,
            "unique_legitimate_nodes_flagged": len(first_by_node),
            "run_fpr_pct": result.get("fpr", float("nan")) * 100,
            "first_flag_median_s": sorted(x[0] for x in first_by_node.values())[len(first_by_node)//2]
                if first_by_node else "",
            "blacklist_events_total": len(all_events),
            "first_flags_q_learning": first_counts.get("q_learning", 0),
            "first_flags_c1_count": first_counts.get("c1_count", 0),
            "first_flags_rule": first_counts.get("rule", 0),
            "first_flags_fused_evidence": first_counts.get("fused_evidence", 0),
            "first_flags_dao_evidence": first_counts.get("dao_evidence", 0),
            "events_q_learning": event_counts.get("q_learning", 0),
            "events_c1_count": event_counts.get("c1_count", 0),
            "events_rule": event_counts.get("rule", 0),
            "events_fused_evidence": event_counts.get("fused_evidence", 0),
            "events_dao_evidence": event_counts.get("dao_evidence", 0),
        }
        rows.append(row)

if len(rows) != 30:
    raise SystemExit(f"Expected 30 completed runs (10 seeds x 3 defenses); found {len(rows)}")
OUT.parent.mkdir(parents=True, exist_ok=True)
with OUT.open("w", newline="") as f:
    writer = csv.DictWriter(f, fieldnames=list(rows[0]))
    writer.writeheader()
    writer.writerows(rows)

for label in DEFENSES.values():
    group = [r for r in rows if r["defense"] == label]
    print(f"{label}: unique FP nodes/run mean={sum(r['unique_legitimate_nodes_flagged'] for r in group)/len(group):.2f}; "
          f"blacklist events/run mean={sum(r['blacklist_events_total'] for r in group)/len(group):.1f}; "
          f"first flags by Q-learning={sum(r['first_flags_q_learning'] for r in group)}; "
          f"all Q-learning reason events={sum(r['events_q_learning'] for r in group)}")
print(f"wrote {OUT.relative_to(ROOT)}")
