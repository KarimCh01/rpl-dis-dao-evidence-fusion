#!/usr/bin/env python3
"""Which decision rule isolated each honest node (no simulation).

Reads the `#D <target> <reason> <belief>` blacklist lines of the stored
main-campaign logs for DIS-FDM (defense 3) and AEF-RPL with learning off
(defense 4), which share the evidence model of the final AEF-RPL. For every
honest node that was isolated at least once, it records the rule of its first
isolation in each run. Output: output/hypotheses/false_isolation_reasons.csv.
"""

import gzip
import json
import re
from collections import Counter
from pathlib import Path

import pandas as pd

ROOT = Path(__file__).resolve().parents[1]
RUNS = ROOT / "output" / "runs"
OUT = ROOT / "output" / "hypotheses"
RULES = {
    2: "DIS counter saturated",
    3: "DIS-FDM counter rule (DIS and parent changes)",
    4: "DIS-FDM fused rule",
    5: "DAO belief rule",
}
LINE = re.compile(r"#D (\d+) (\d+) ")


def first_reasons(run):
    meta = json.loads((run / "meta.json").read_text())
    attackers = set(meta["attacker_ids"])
    first = {}
    with gzip.open(run / "COOJA.testlog.gz", "rt", errors="ignore") as f:
        for line in f:
            m = LINE.search(line)
            if m:
                target, reason = int(m.group(1)), int(m.group(2))
                if target != 1 and target not in attackers and target not in first:
                    first[target] = reason
    return meta, first.values()


def main():
    rows = []
    for defense in (3, 4):
        for mode in (0, 3):
            for mob in (0.0, 0.3):
                counts = Counter()
                runs = 0
                for run in sorted(
                    RUNS.glob(f"m{mode}_k*_i3_mob{int(mob * 10)}_d{defense}_s*")
                ):
                    meta, reasons = first_reasons(run)
                    if meta["dis_interval"] != 3:
                        continue
                    runs += 1
                    counts.update(reasons)
                total = sum(counts.values())
                for code, name in RULES.items():
                    rows.append(
                        {
                            "defense": defense,
                            "attack_mode": mode,
                            "mobile_frac": mob,
                            "runs": runs,
                            "rule": name,
                            "honest_nodes_isolated": counts[code],
                            "share": counts[code] / total if total else float("nan"),
                        }
                    )
    OUT.mkdir(parents=True, exist_ok=True)
    df = pd.DataFrame(rows)
    df.to_csv(OUT / "false_isolation_reasons.csv", index=False, float_format="%.6g")
    print(df[df.honest_nodes_isolated > 0].round(3).to_string(index=False))


if __name__ == "__main__":
    main()
