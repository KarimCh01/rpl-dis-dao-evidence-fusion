#!/usr/bin/env python3
"""Capture link outcomes and DAO exchanges for the unresolved scale failure."""

import json
import subprocess
import sys
from pathlib import Path
import run_matrix

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/diagnostics/scale_ack_trace"


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    engine = json.loads(
        (
            ROOT / "output/experiments/journal_extension/execution_engine.json"
        ).read_text()
    )
    variants = {}
    mapping = {}
    for key, role in [("root", 0), ("cli0", 1), ("cli1", 1)]:
        name = "v_acktrace_" + key
        mapping[key] = name
        variants[name] = (
            f"ROLE={role},DEFENSE=0,SEND_INTERVAL_SEC=60,BIG_NET=1,"
            "SCALE_DIAGNOSTICS=1,ROOT_ROUTES=1100,ROOT_QUEUEBUF=128,"
            "APP_CSMA_NEIGHBOR_QUEUES=16,APP_COMPRESS_EXT_HDR=0,"
            "APP_RPL_DIS_INTERVAL_SEC=60,APP_DAO_RTX_SEC=30,APP_DAO_MAX_RTX=10,"
            "APP_RPL_LOG_LEVEL=3,APP_MAC_LOG_LEVEL=3"
        )
    vf = OUT / "variants.json"
    vf.write_text(json.dumps(variants, indent=2))
    subprocess.run(
        [
            sys.executable,
            str(ROOT / "scripts/build_variants.py"),
            "--extra-variants",
            str(vf),
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
    keep = [
        "packet sent to",
        "tx to",
        "received a DAO",
        "sending a DAO",
        "nbr: own state",
        "local repair",
        "dropping",
        "fragment",
        "No next-hop",
    ]
    expression = 'msg.startsWith("#") || ' + " || ".join(
        "msg.indexOf(" + json.dumps(s) + ") >= 0" for s in keep
    )
    run_matrix.gen_csc.SCRIPT = run_matrix.gen_csc.SCRIPT.replace(
        'else if (msg.startsWith("#"))', "else if (" + expression + ")"
    )
    r = json.loads(
        (ROOT / "output/experiments/journal_extension/scale_diagnostics.jsonl")
        .read_text()
        .splitlines()[0]
    )
    r.update(
        run_id="acktrace_n500_s1_t8",
        duration_min=8,
        native_dis_interval_s=60,
        variant_overrides=mapping,
        experiment="scale_ack_diagnostic",
    )
    (OUT / "plan.json").write_text(json.dumps(r, indent=2))
    result = run_matrix.run_one(r, OUT / "runs", heap="2g", timeout=7200, **engine)
    print(result, flush=True)
    if result[1] not in ("ok", "skip"):
        raise RuntimeError(result)


if __name__ == "__main__":
    main()
