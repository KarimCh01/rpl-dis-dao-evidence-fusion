#!/usr/bin/env python3
import csv
import glob
import json
import math
import os
import sys
from multiprocessing import Pool
from pathlib import Path

from parse_run import ATTACK_START_S, open_log

ROOT = Path(__file__).resolve().parents[1]
RUNS = Path(os.environ.get("AGG_RUNS", ROOT / "output" / "runs"))
OUT = Path(os.environ.get("AGG_RESULTS", ROOT / "output" / "results"))
SEND_S = 10
PRE_FROM_S = 120
SMOOTH_MIN = 3
LEVEL = 0.9
STABLE_MIN = 5
FIELDS = [
    "run_id",
    "seed",
    "nodes",
    "attackers",
    "attack_mode",
    "dis_interval",
    "defense",
    "mobile_frac",
    "fdm_window",
    "reference",
    "reference_exact",
    "e_attacked",
    "e_reference",
    "ari",
    "pre_level",
    "drt_s",
    "drt_censored",
]


def round_trips(run_dir):
    run_dir = Path(run_dir)
    meta = json.loads((run_dir / "meta.json").read_text())
    tx = {}
    echoed = set()
    with open_log(run_dir) as f:
        for line in f:
            parts = line.split()
            if len(parts) < 4 or parts[2] not in ("#T", "#E"):
                continue
            try:
                key = (int(parts[1]), int(parts[3]))
                t = int(parts[0]) / 1e6
            except ValueError:
                continue
            if parts[2] == "#T":
                tx[key] = t
            else:
                echoed.add(key)
    return meta, tx, echoed


def count(tx, echoed, nodes, t_from):
    return sum(
        1 for k, t in tx.items() if k[0] in nodes and t >= t_from and k in echoed
    )


def recovery(tx, echoed, nodes, duration_s, send_s=SEND_S):
    minutes = int(duration_s // 60)
    done = [0] * minutes
    for k, t in tx.items():
        if k[0] in nodes and k in echoed and t < duration_s:
            done[int(t // 60)] += 1
    expected = len(nodes) * 60 / send_s
    frac = [d / expected for d in done]
    smooth = [
        sum(frac[max(0, m - SMOOTH_MIN + 1) : m + 1])
        / (m - max(0, m - SMOOTH_MIN + 1) + 1)
        for m in range(minutes)
    ]
    pre = frac[PRE_FROM_S // 60 : ATTACK_START_S // 60]
    pre_level = sum(pre) / len(pre) if pre else float("nan")
    limit = LEVEL * pre_level
    start = ATTACK_START_S // 60
    fall = next((m for m in range(start, minutes) if smooth[m] < limit), None)
    if fall is None:
        return pre_level, 0.0, False
    for m in range(fall, minutes - STABLE_MIN + 1):
        if all(smooth[x] >= limit for x in range(m, m + STABLE_MIN)):
            return pre_level, (m - fall) * 60.0, False
    return pre_level, (minutes - fall) * 60.0, True


def reference_id(meta):
    mob = int(round(meta["mobile_frac"] * 10))
    tail = f"_n{meta['nodes']}" if meta["nodes"] != 30 else ""
    if meta["duration_min"] != 60:
        tail += f"_t{meta['duration_min']}"
    exact = f"m0_k{meta['attackers']}_i3_mob{mob}_d0_s{meta['seed']}{tail}"
    if meta["attackers"] and (RUNS / exact / "result.json").exists():
        return exact
    return f"m0_k0_i3_mob{mob}_d0_s{meta['seed']}{tail}"


def evaluate(run_dir):
    meta, tx, echoed = round_trips(run_dir)
    ref_dir = RUNS / reference_id(meta)
    if not (ref_dir / "meta.json").exists():
        return None
    ref_meta, ref_tx, ref_echoed = round_trips(ref_dir)
    attackers = set(meta["attacker_ids"])
    legit = {i for i in range(2, meta["nodes"] + 1) if i not in attackers}
    e_att = count(tx, echoed, legit, ATTACK_START_S)
    e_ref = count(ref_tx, ref_echoed, legit, ATTACK_START_S)
    pre_level, drt, censored = recovery(
        tx, echoed, legit, meta["duration_min"] * 60, meta.get("send_s", SEND_S)
    )
    exact = meta["mobile_frac"] == 0 or set(meta.get("mobile_ids", [])) == set(
        ref_meta.get("mobile_ids", [])
    )
    return {
        "run_id": meta["run_id"],
        "seed": meta["seed"],
        "nodes": meta["nodes"],
        "attackers": meta["attackers"],
        "attack_mode": meta["attack_mode"],
        "dis_interval": meta["dis_interval"],
        "defense": meta["defense"],
        "mobile_frac": round(meta["mobile_frac"], 1),
        "fdm_window": meta.get("fdm_window", 10),
        "reference": ref_meta["run_id"],
        "reference_exact": int(exact),
        "e_attacked": e_att,
        "e_reference": e_ref,
        "ari": e_att / e_ref if e_ref else float("nan"),
        "pre_level": round(pre_level, 4),
        "drt_s": drt,
        "drt_censored": int(censored),
    }


def main():
    runs = sorted(glob.glob(str(RUNS / "*" / "meta.json")))
    dirs = [
        str(Path(r).parent) for r in runs if (Path(r).parent / "result.json").exists()
    ]
    workers = int(sys.argv[1]) if len(sys.argv) > 1 else 4
    with Pool(workers) as pool:
        rows = [r for r in pool.map(evaluate, dirs, chunksize=4) if r is not None]
    rows.sort(key=lambda r: r["run_id"])
    OUT.mkdir(parents=True, exist_ok=True)
    with open(OUT / "resilience.csv", "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=FIELDS)
        w.writeheader()
        for r in rows:
            w.writerow(
                {
                    k: (
                        f"{r[k]:.6f}"
                        if isinstance(r[k], float) and not math.isnan(r[k])
                        else r[k]
                    )
                    for k in FIELDS
                }
            )
    print(f"{len(rows)} runs written to {OUT / 'resilience.csv'}")


if __name__ == "__main__":
    main()
