#!/usr/bin/env python3
import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys
from multiprocessing import Pool
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import parse_run

ROOT = Path(__file__).resolve().parents[1]
RUNS = ROOT / "output" / "runs"
RESULTS = ROOT / "output" / "results"
REPRO = ROOT / "output" / "repro"
MANIFEST = ROOT / "output" / "MANIFEST.sha256"
COMPARED = [
    "all_runs.csv",
    "summary_by_condition.csv",
    "stats_rq2_combined_vs_single.csv",
    "stats_rq3_rq4_proposed_vs_baselines.csv",
    "reproduction_vs_paper.csv",
    "sensitivity_fdm_window.csv",
    "resilience.csv",
    "summary.md",
]


def sha256(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for block in iter(lambda: f.read(1 << 20), b""):
            h.update(block)
    return h.hexdigest()


def logs():
    return sorted(RUNS.glob("*/COOJA.testlog.gz"))


def manifest_lines():
    lines = [f"{sha256(f)}  {f.relative_to(ROOT).as_posix()}" for f in logs()]
    lines += [
        f"{sha256(RESULTS / n)}  {(RESULTS / n).relative_to(ROOT).as_posix()}"
        for n in COMPARED
    ]
    return lines


def reparse(log):
    run = log.parent
    out = REPRO / "runs" / run.name
    out.mkdir(parents=True, exist_ok=True)
    shutil.copy(run / "meta.json", out / "meta.json")
    (out / log.name).symlink_to(log.resolve())
    (out / "result.json").write_text(json.dumps(parse_run.parse(out)))
    return run.name


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--write-manifest",
        action="store_true",
        help="record the hashes of the logs and of the published result files",
    )
    ap.add_argument("--workers", type=int, default=4)
    a = ap.parse_args()

    if a.write_manifest:
        MANIFEST.write_text("\n".join(manifest_lines()) + "\n")
        print(f"wrote {MANIFEST.relative_to(ROOT)}")
        return

    expected = {}
    for line in MANIFEST.read_text().splitlines():
        digest, name = line.split("  ", 1)
        expected[name] = digest

    bad_logs = [
        f for f in logs() if expected.get(f.relative_to(ROOT).as_posix()) != sha256(f)
    ]
    print(f"input logs checked: {len(logs())}, changed or unknown: {len(bad_logs)}")
    for f in bad_logs[:10]:
        print(f"  {f.relative_to(ROOT)}")

    if REPRO.exists():
        shutil.rmtree(REPRO)
    (REPRO / "results").mkdir(parents=True)
    with Pool(a.workers) as pool:
        n = len(pool.map(reparse, logs(), chunksize=8))
    print(f"re-parsed {n} runs from their logs into {REPRO.relative_to(ROOT)}/runs")

    env = dict(
        os.environ,
        AGG_RUNS=str(REPRO / "runs"),
        AGG_RESULTS=str(REPRO / "results"),
        AGG_FIGURES=str(REPRO / "figures"),
    )
    for script in ("aggregate.py", "metrics.py"):
        subprocess.run(
            [sys.executable, str(ROOT / "analysis" / script)],
            env=env,
            check=True,
            cwd=ROOT,
            stdout=subprocess.DEVNULL,
        )

    matched = 0
    for name in COMPARED:
        got = sha256(REPRO / "results" / name)
        want = expected.get((RESULTS / name).relative_to(ROOT).as_posix())
        ok = got == want
        matched += ok
        print(f"{'MATCH   ' if ok else 'DIFFERS '} {name}")
    if matched == len(COMPARED) and not bad_logs:
        print(f"ALL {len(COMPARED)} OUTPUT FILES MATCH")
    else:
        print(f"{matched} of {len(COMPARED)} output files match")
        raise SystemExit(1)


if __name__ == "__main__":
    main()
