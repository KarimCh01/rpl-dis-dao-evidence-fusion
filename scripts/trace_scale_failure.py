#!/usr/bin/env python3
"""Repeat one isolated no-attack scale diagnostic, preserving stack warnings.

Does not change the published campaigns, firmware, or default log filtering.
"""

import json
from pathlib import Path

import run_matrix


def main():
    root = Path(__file__).resolve().parents[1]
    campaign = root / "output/experiments/journal_extension"
    config = json.loads(
        (campaign / "scale_diagnostics.jsonl").read_text().splitlines()[0]
    )
    config.update(
        run_id="trace_dis10_n500_s1_t8", duration_min=8, experiment="scale_root_cause"
    )
    # The ordinary scenario records only application lines beginning with '#'.
    # Capture existing stack warnings too, using the same compiled firmware.
    run_matrix.gen_csc.SCRIPT = run_matrix.gen_csc.SCRIPT.replace(
        'else if (msg.startsWith("#"))', "else"
    )
    engine = json.loads((campaign / "execution_engine.json").read_text())
    result = run_matrix.run_one(
        config,
        root / "output/diagnostics/scale_root_cause",
        heap="2g",
        timeout=3600,
        **engine
    )
    print(result)
    if result[1] not in ("ok", "skip"):
        raise SystemExit(1)


if __name__ == "__main__":
    main()
