#!/usr/bin/env python3
import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
PLANS = ROOT / "output" / "plan"


def cfg(mode, attackers, interval, mobile, defense, seed, duration=60):
    rid = f"m{mode}_k{attackers}_i{interval}_mob{int(round(mobile * 10))}_d{defense}_s{seed}"
    return {"run_id": rid, "seed": seed, "nodes": 30, "attackers": attackers,
            "attack_mode": mode, "dis_interval": interval, "defense": defense,
            "mobile_frac": mobile, "duration_min": duration}


def calibration(seeds):
    return [cfg(0, 0, 3, mob, 0, s) for mob in (0.0, 0.3) for s in seeds]


def reproduction(seeds):
    out = []
    for interval in (3, 6, 10, 15, 30):
        for d in (0, 1, 2, 3):
            out += [cfg(1, 5, interval, 0.0, d, s) for s in seeds]
    for k in (2, 5, 10):
        for d in (0, 1, 2, 3):
            out += [cfg(1, k, 3, 0.0, d, s) for s in seeds]
    out += [cfg(0, 0, 3, 0.0, d, s) for d in (0, 1, 2, 3) for s in seeds]
    return out


SENSOR_NODES = 29
MALICIOUS_PCT = (10, 25, 50)


def attackers_for(pct):
    return round(SENSOR_NODES * pct / 100)


def main_matrix(seeds):
    out = []
    for mode in (1, 2, 3):
        for k in [attackers_for(p) for p in MALICIOUS_PCT]:
            for mob in (0.0, 0.3):
                for d in (0, 1, 2, 3, 4):
                    out += [cfg(mode, k, 3, mob, d, s) for s in seeds]
    for mob in (0.0, 0.3):
        for d in (0, 1, 2, 3, 4):
            out += [cfg(0, 0, 3, mob, d, s) for s in seeds]
    return out


def write(name, rows):
    seen = set()
    uniq = []
    for r in rows:
        if r["run_id"] not in seen:
            seen.add(r["run_id"])
            uniq.append(r)
    PLANS.mkdir(parents=True, exist_ok=True)
    (PLANS / f"{name}.jsonl").write_text("".join(json.dumps(r) + "\n" for r in uniq))
    print(f"{name}: {len(uniq)} runs")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--seeds", type=int, default=10)
    a = ap.parse_args()
    seeds = list(range(1, a.seeds + 1))
    write("calibration", calibration(seeds))
    write("reproduction", reproduction(seeds))
    write("main", main_matrix(seeds))


if __name__ == "__main__":
    main()
