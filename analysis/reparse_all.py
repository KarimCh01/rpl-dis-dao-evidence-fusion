#!/usr/bin/env python3
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import parse_run

ROOT = Path(__file__).resolve().parents[1]


def main():
    base = Path(sys.argv[1]) if len(sys.argv) > 1 else ROOT / "output" / "runs"
    n = 0
    for res_file in sorted(base.glob("*/result.json")):
        old = json.loads(res_file.read_text())
        new = parse_run.parse(res_file.parent)
        new["wall_s"] = old.get("wall_s")
        res_file.write_text(json.dumps(new))
        n += 1
    print(f"re-parsed {n} runs")


if __name__ == "__main__":
    main()
