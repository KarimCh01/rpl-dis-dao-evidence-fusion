#!/usr/bin/env python3
"""Declare and evaluate a separate structured-grid scale scenario family."""

import json
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
import run_matrix
from plan import cfg

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/diagnostics/structured_grid_scale"


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    engine = json.loads(
        (
            ROOT / "output/experiments/journal_extension/execution_engine.json"
        ).read_text()
    )
    rows = []
    for nodes, mob in [(500, 0), (500, 0.3), (1000, 0)]:
        for seed in (1, 2):
            r = cfg(
                0, 0, 3, mob, 0, seed, duration=15, nodes=nodes, send_s=60, rank_hops=20
            )
            r.update(
                run_id=f"grid_n{nodes}_mob{int(mob*100)}_s{seed}_t15",
                experiment="structured_grid_feasibility",
                topology="structured_grid",
                grid_spacing_m=34,
                grid_jitter_m=0.25,
                native_dis_interval_s=60,
                variant_overrides={
                    k: "v_scale_fix_paced_ack_" + k for k in ["root", "cli0", "cli1"]
                },
            )
            rows.append(r)
    (OUT / "plan.jsonl").write_text("".join(json.dumps(r) + "\n" for r in rows))

    def status(state, done, **extra):
        (OUT / "status.json").write_text(
            json.dumps(
                dict(state=state, completed=done, planned=len(rows), **extra), indent=2
            )
        )

    status("running", 0)
    with ThreadPoolExecutor(max_workers=3) as pool:
        jobs = [
            pool.submit(
                run_matrix.run_one, r, OUT / "runs", heap="2g", timeout=7200, **engine
            )
            for r in rows
        ]
        for i, job in enumerate(as_completed(jobs), 1):
            rid, state = job.result()
            print(i, rid, state, flush=True)
            if state not in ("ok", "skip"):
                status("failed", i - 1, error=rid + ":" + state)
                raise RuntimeError(rid)
            status("running", i)
    summaries = []
    for r in rows:
        result = json.loads((OUT / "runs" / r["run_id"] / "result.json").read_text())
        coverage = result["legit_joined"] / result["legit_total"]
        passed = (
            coverage >= 0.95
            and result["delivery_up"] >= 0.8
            and result["pdr_down"] >= 0.9
        )
        summaries.append(
            dict(
                run_id=r["run_id"],
                nodes=r["nodes"],
                mobility=r["mobile_frac"],
                seed=r["seed"],
                coverage=coverage,
                delivery_up=result["delivery_up"],
                pdr_down=result["pdr_down"],
                passes_gate=passed,
            )
        )
    (OUT / "summary.json").write_text(json.dumps(summaries, indent=2))
    status("complete", len(rows), all_pass=all(r["passes_gate"] for r in summaries))
    print(json.dumps(summaries, indent=2), flush=True)


if __name__ == "__main__":
    main()
