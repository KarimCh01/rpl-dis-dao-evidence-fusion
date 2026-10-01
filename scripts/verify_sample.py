#!/usr/bin/env python3
import argparse
import json
import math
import random
import shutil
import sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scripts"))
import run_matrix

RUNS = ROOT / "output" / "runs"
VERIFY = ROOT / "output" / "verify"
IGNORED = {"wall_s"}


def load_plans():
    cfgs = {}
    for p in sorted((ROOT / "output" / "plan").glob("*.jsonl")):
        for line in p.read_text().splitlines():
            if line.strip():
                c = json.loads(line)
                cfgs.setdefault(c["run_id"], c)
    return cfgs


def same(x, y):
    if isinstance(x, float) and isinstance(y, float) and math.isnan(x) and math.isnan(y):
        return True
    return x == y


def compare(rid):
    a = json.loads((RUNS / rid / "result.json").read_text())
    b = json.loads((VERIFY / rid / "result.json").read_text())
    return [k for k in a if k not in IGNORED and not same(a[k], b.get(k))]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--n", type=int, default=10)
    ap.add_argument("--seed", type=int, default=2026)
    ap.add_argument("--runs", nargs="*")
    ap.add_argument("--workers", type=int, default=4)
    a = ap.parse_args()

    cfgs = load_plans()
    finished = sorted(r for r in cfgs if (RUNS / r / "result.json").exists())
    chosen = a.runs or random.Random(a.seed).sample(finished, min(a.n, len(finished)))
    if VERIFY.exists():
        shutil.rmtree(VERIFY)
    VERIFY.mkdir(parents=True)

    print(f"re-running {len(chosen)} published runs into output/verify/")
    with ThreadPoolExecutor(max_workers=a.workers) as ex:
        statuses = list(ex.map(lambda r: run_matrix.run_one(cfgs[r], VERIFY), chosen))

    matched = 0
    for rid, status in statuses:
        if status != "ok":
            print(f"FAILED TO RUN  {rid}")
            continue
        diff = compare(rid)
        if diff:
            print(f"DIFFERENT      {rid}: {', '.join(diff)}")
        else:
            matched += 1
            print(f"IDENTICAL      {rid}")
    print(f"\n{matched} of {len(chosen)} re-runs identical to the published results")
    sys.exit(0 if matched == len(chosen) else 1)


if __name__ == "__main__":
    main()
