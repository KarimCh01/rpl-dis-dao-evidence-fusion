#!/usr/bin/env python3
import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
PLANS = ROOT / "output" / "plan"


def cfg(mode, attackers, interval, mobile, defense, seed, duration=60, nodes=30, send_s=10,
        rank_hops=None):
    rid = f"m{mode}_k{attackers}_i{interval}_mob{int(round(mobile * 10))}_d{defense}_s{seed}"
    if nodes != 30:
        rid += f"_n{nodes}"
    if duration != 60:
        rid += f"_t{duration}"
    if send_s != 10:
        rid += f"_p{send_s}"
    if rank_hops is not None:
        rid += f"_r{rank_hops}"
    c = {"run_id": rid, "seed": seed, "nodes": nodes, "attackers": attackers,
         "attack_mode": mode, "dis_interval": interval, "defense": defense,
         "mobile_frac": mobile, "duration_min": duration}
    if send_s != 10:
        c["send_s"] = send_s
    if rank_hops is not None:
        c["rank_hops"] = rank_hops
    return c


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


def limsd(seeds):
    out = []
    for mode in (1, 2, 3):
        for k in [attackers_for(p) for p in MALICIOUS_PCT]:
            for mob in (0.0, 0.3):
                out += [cfg(mode, k, 3, mob, 5, s) for s in seeds]
    for mob in (0.0, 0.3):
        out += [cfg(0, 0, 3, mob, 5, s) for s in seeds]
    return out


def learning(seeds, defense=6):
    out = []
    for mode in (1, 2, 3):
        for k in [attackers_for(p) for p in MALICIOUS_PCT]:
            for mob in (0.0, 0.3):
                out += [cfg(mode, k, 3, mob, defense, s) for s in seeds]
    for mob in (0.0, 0.3):
        out += [cfg(0, 0, 3, mob, defense, s) for s in seeds]
    return out


SCALE_PCT = 25
SCALE_SEND = 60
SCALE_RANK_HOPS = 20


def scale_attackers(nodes):
    return round((nodes - 1) * SCALE_PCT / 100)


def timing():
    return [cfg(3, scale_attackers(n), 3, 0.0, 7, 1, duration=15, nodes=n,
                send_s=SCALE_SEND, rank_hops=SCALE_RANK_HOPS) for n in (500, 1000)]


def scale(seeds_500, seeds_1000):
    out = []
    k = scale_attackers(500)
    for mob in (0.0, 0.3):
        for s in seeds_500:
            out += [cfg(3, k, 3, mob, d, s, nodes=500, send_s=SCALE_SEND,
                        rank_hops=SCALE_RANK_HOPS)
                    for d in (0, 3, 4, 5, 7)]
            out.append(cfg(0, k, 3, mob, 0, s, nodes=500, send_s=SCALE_SEND,
                           rank_hops=SCALE_RANK_HOPS))
    k = scale_attackers(1000)
    for s in seeds_1000:
        out += [cfg(3, k, 3, 0.0, d, s, nodes=1000, send_s=SCALE_SEND,
                    rank_hops=SCALE_RANK_HOPS)
                for d in (3, 7)]
        out.append(cfg(0, k, 3, 0.0, 0, s, nodes=1000, send_s=SCALE_SEND,
                       rank_hops=SCALE_RANK_HOPS))
    return out


def reference(seeds):
    return [cfg(0, k, 3, 0.3, 0, s) for k in [attackers_for(p) for p in MALICIOUS_PCT] for s in seeds]


def sensitivity(seeds):
    out = []
    for interval in (3, 6, 10, 15, 30):
        for s in seeds:
            c = cfg(1, 5, interval, 0.0, 3, s)
            c["run_id"] = c["run_id"].replace("_d3_", "_d3w30_")
            c["fdm_window"] = 30
            out.append(c)
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
    write("sensitivity", sensitivity(seeds))
    write("limsd", limsd(seeds))
    write("reference", reference(seeds))
    write("learning", learning(seeds))
    write("learning_v2", learning(seeds, 7))
    write("timing", timing())
    write("scale", scale(list(range(1, 9)), list(range(1, 7))))


if __name__ == "__main__":
    main()
