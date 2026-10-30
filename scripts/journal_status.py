#!/usr/bin/env python3
"""Read-only status for the journal-extension campaign."""

import argparse, datetime, json, subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/experiments/journal_extension"
ap = argparse.ArgumentParser()
ap.add_argument("--json", action="store_true")
a = ap.parse_args()
counts = {}
for name in (
    "robustness",
    "references",
    "ablations",
    "profiling",
    "robservation",
    "scale_diagnostics",
    "timing_validation",
    "scale_full",
):
    p = OUT / (name + ".jsonl")
    if not p.exists():
        continue
    rows = [json.loads(x) for x in p.read_text().splitlines() if x.strip()]
    counts[name] = {
        "completed": sum(
            (OUT / "runs" / r["run_id"] / "result.json").exists() for r in rows
        ),
        "planned": len(rows),
    }
pipeline = OUT / "pipeline_status.json"
state = (
    json.loads(pipeline.read_text()) if pipeline.exists() else {"state": "not_started"}
)
result = {
    "checked_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
    "campaigns": counts,
    "pipeline": state,
    "complete": all(c["completed"] == c["planned"] for c in counts.values())
    and state.get("state") == "complete",
}
if a.json:
    print(json.dumps(result, indent=2))
else:
    print("AEF-RPL additional experiments")
    for name, c in counts.items():
        print(f"{name}: {c['completed']}/{c['planned']}")
    print("Pipeline:", state.get("state"), state.get("current_stage", ""))
    if state.get("error"):
        print("ERROR:", state["error"])
    print("All planned campaigns and analyses complete:", result["complete"])
