#!/usr/bin/env python3
"""Matched follow-up for DAO retry exhaustion after transport corrections."""

import fix_scale_transport as experiment

experiment.OUT = experiment.ROOT / "output/diagnostics/scale_routing_fix"
base = "APP_CSMA_NEIGHBOR_QUEUES=16,APP_COMPRESS_EXT_HDR=0"
experiment.SETTINGS = {
    "paced": base,
    "ack": base + ",APP_DAO_RTX_SEC=30,APP_DAO_MAX_RTX=10",
    "paced_ack": base + ",APP_DAO_RTX_SEC=30,APP_DAO_MAX_RTX=10",
}
experiment.PERIODS = {"paced": 60, "ack": 10, "paced_ack": 60}
# Retain diagnostics relevant to route failure, without millions of routine
# overheard-frame messages. This changes logging, not radio/protocol behavior.
experiment.run_matrix.gen_csc.SCRIPT = experiment.run_matrix.gen_csc.SCRIPT.replace(
    'else if (msg.startsWith("#"))',
    'else if (msg.startsWith("#") || msg.indexOf("local repair") >= 0 || '
    'msg.indexOf("dropping") >= 0 || msg.indexOf("fragment") >= 0 || '
    'msg.indexOf("No next-hop") >= 0 || msg.indexOf("queue full") >= 0)',
)

if __name__ == "__main__":
    try:
        experiment.main()
    except Exception as error:
        experiment.OUT.mkdir(parents=True, exist_ok=True)
        experiment.write_status("failed", error=str(error))
        raise
