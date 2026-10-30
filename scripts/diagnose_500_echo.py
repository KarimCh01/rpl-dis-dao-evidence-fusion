#!/usr/bin/env python3
"""Isolate upward-only versus bidirectional application traffic at 500 nodes."""

import hashlib
import json
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import diagnose_scale_load as audit
import run_matrix
from plan import cfg

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/diagnostics/scale500_echo_isolation"
audit.OUT = OUT
SEEDS = (1, 2)
ECHO_MODES = (1, 0)
DURATION = 15
PREFIX = "500echo"
EXTRA_DEFINITIONS = ""


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    engine = json.loads(
        (
            ROOT / "output/experiments/journal_extension/execution_engine.json"
        ).read_text()
    )
    variants = {}
    maps = {}
    rows = []
    for echo in ECHO_MODES:
        profile = "echo_on" if echo else "up_only"
        maps[profile] = {}
        for key, role in [("root", 0), ("cli0", 1)]:
            name = f"v_{PREFIX}_{profile}_{key}"
            variants[name] = (
                f"ROLE={role},DEFENSE=0,NODE_MOBILE=0,BIG_NET=1,"
                f"APP_ECHO_ENABLED={echo},APP_TRAFFIC_START_SEC=300,SEND_INTERVAL_SEC=60,"
                "SCALE_DIAGNOSTICS=1,APP_RPL_DIS_INTERVAL_SEC=60,ROOT_ROUTES=1100,ROOT_QUEUEBUF=128,"
                "APP_CSMA_NEIGHBOR_QUEUES=16,APP_COMPRESS_EXT_HDR=0,APP_DAO_RTX_SEC=30,"
                "APP_DAO_MAX_RTX=10,RPL_CONF_LOOP_ERROR_DROP=1" + EXTRA_DEFINITIONS
            )
            maps[profile][key] = name
        maps[profile]["cli1"] = maps[profile]["cli0"]
        for seed in SEEDS:
            r = cfg(
                0,
                0,
                3,
                0,
                0,
                seed,
                duration=DURATION,
                nodes=500,
                send_s=60,
                rank_hops=20,
            )
            r.update(
                run_id=f"{PREFIX}_{profile}_s{seed}_t{DURATION}",
                experiment="scale500_direction_screening",
                load_profile=profile,
                application_echo_enabled=bool(echo),
                application_traffic_start_s=300,
                native_dis_interval_s=60,
                topology="random_connected",
                variant_overrides=maps[profile],
            )
            rows.append(r)
    audit.save("variants.json", variants)
    (OUT / "plan.jsonl").write_text("".join(json.dumps(r) + "\n" for r in rows))
    audit.save("status.json", dict(state="building", completed=0, planned=len(rows)))
    subprocess.run(
        [
            sys.executable,
            str(ROOT / "scripts/build_variants.py"),
            "--extra-variants",
            str(OUT / "variants.json"),
            "--only",
            *variants,
            "--jobs",
            "3",
            "--docker-context",
            engine["docker_context"],
            "--docker-image",
            engine["docker_image"],
        ],
        check=True,
    )
    paths = [
        Path(__file__),
        ROOT / "scripts/diagnose_scale_load.py",
        ROOT / "firmware/node.c",
        ROOT / "firmware/project-conf.h",
    ]
    paths += [ROOT / f"build/variants/{v}/build/cooja/{v}.cooja" for v in variants]
    audit.save(
        "sha256.json",
        {
            str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in paths
        },
    )
    run_matrix.gen_csc.SCRIPT = run_matrix.gen_csc.SCRIPT.replace(
        'else if (msg.startsWith("#"))', "else"
    )
    audit.save("status.json", dict(state="running", completed=0, planned=len(rows)))
    with ThreadPoolExecutor(max_workers=3) as pool:
        jobs = {
            pool.submit(
                run_matrix.run_one, r, OUT / "runs", heap="2g", timeout=7200, **engine
            ): r
            for r in rows
        }
        for i, job in enumerate(as_completed(jobs), 1):
            rid, state = job.result()
            if state not in ("ok", "skip"):
                raise RuntimeError(f"{rid}: {state}")
            audit.save(rid + ".json", audit.summarize(jobs[job]))
            audit.save(
                "status.json", dict(state="running", completed=i, planned=len(rows))
            )
            print(i, rid, state, flush=True)
    audit.save("summary.json", [audit.summarize(r) for r in rows])
    audit.save(
        "status.json",
        dict(
            state="complete",
            completed=len(rows),
            planned=len(rows),
            attack_comparison_released=False,
            note="Diagnostic only. Up-only has no downward-delivery target.",
        ),
    )


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        OUT.mkdir(parents=True, exist_ok=True)
        audit.save("status.json", dict(state="failed", error=str(error)))
        raise
