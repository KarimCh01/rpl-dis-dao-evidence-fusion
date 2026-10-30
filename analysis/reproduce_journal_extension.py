#!/usr/bin/env python3
"""Independently reparse extension logs and compare core results and tables."""

import argparse, csv, json, shutil, subprocess, sys
from multiprocessing import Pool
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "analysis"))
import parse_run

SOURCE = ROOT / "output/experiments/journal_extension"
REPRO = ROOT / "output/repro_journal_extension"


def canonical(data):
    return json.dumps(
        {k: v for k, v in data.items() if k != "wall_s"},
        sort_keys=True,
        separators=(",", ":"),
    )


def reparse(folder):
    original = json.loads((folder / "result.json").read_text())
    target = REPRO / "runs" / folder.name
    target.mkdir(parents=True, exist_ok=True)
    shutil.copy2(folder / "meta.json", target / "meta.json")
    log = target / "COOJA.testlog.gz"
    if log.is_symlink() or log.exists():
        log.unlink()
    log.symlink_to((folder / log.name).resolve())
    result = parse_run.parse(target)
    (target / "result.json").write_text(json.dumps(result))
    return {
        "run_id": folder.name,
        "core_result_matches": int(canonical(original) == canonical(result)),
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--workers", type=int, default=4)
    a = ap.parse_args()
    folders = sorted(p.parent for p in (SOURCE / "runs").glob("*/result.json"))
    if not folders:
        raise SystemExit("No completed extension runs")
    REPRO.mkdir(exist_ok=True)
    # Regenerate only this tool's derived snapshots, avoiding stale symlinks
    # when an explicitly documented environment-comparison pilot is archived.
    for name in ("runs", "original_snapshot_runs"):
        target = REPRO / name
        if target.exists():
            shutil.rmtree(target)
    with Pool(a.workers) as pool:
        rows = pool.map(reparse, folders, chunksize=4)
    with (REPRO / "core_comparison.csv").open("w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0]))
        w.writeheader()
        w.writerows(rows)
    mismatches = [r["run_id"] for r in rows if not r["core_result_matches"]]
    print(
        f"Reparsed {len(rows)} compressed logs; core mismatches: {len(mismatches)}",
        flush=True,
    )
    if mismatches:
        raise SystemExit(str(mismatches[:10]))
    # Compare the numerical analyses using the same snapshot of completed runs.
    orig = REPRO / "analysis_original_snapshot"
    new = REPRO / "analysis_reparsed"
    selected = REPRO / "original_snapshot_runs"
    selected.mkdir(exist_ok=True)
    for folder in folders:
        link = selected / folder.name
        if not link.exists():
            link.symlink_to(folder.resolve(), target_is_directory=True)
    for data, out in ((selected, orig), (REPRO / "runs", new)):
        subprocess.run(
            [
                sys.executable,
                "analysis/analyze_journal_extension.py",
                "--runs-dir",
                str(data),
                "--out-dir",
                str(out),
            ],
            cwd=ROOT,
            check=True,
            stdout=subprocess.DEVNULL,
        )
    files = (
        "per_run.csv",
        "attacker_events.csv",
        "summary.csv",
        "paired_comparisons.csv",
    )
    matched = []
    for name in files:
        ok = (orig / name).read_bytes() == (new / name).read_bytes()
        matched.append(ok)
        print(("MATCH " if ok else "DIFFERS ") + name)
    if not all(matched):
        raise SystemExit("Rebuilt numerical tables differ")
    print(
        "All completed core results and four numerical tables reproduce from stored logs."
    )


if __name__ == "__main__":
    main()
