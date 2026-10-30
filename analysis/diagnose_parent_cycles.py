#!/usr/bin/env python3
"""Reconstruct preferred-parent cycles from ordered #P updates.

These are observed parent-pointer graphs, not packet-path captures or counts
of unique looping packets. Readiness states and transient events matter.
"""

from pathlib import Path
from collections import Counter
import gzip, json

ROOT = Path(__file__).resolve().parents[1]


def inspect(folder):
    parent = {}
    updates = 0
    into = 0
    member = 0
    unique = set()
    lengths = Counter()
    first = None
    last = None
    with gzip.open(folder / "COOJA.testlog.gz", "rt") as stream:
        for line in stream:
            parts = line.split()
            if len(parts) < 4 or parts[2] != "#P":
                continue
            tm = int(parts[0]) / 1e6
            node = int(parts[1])
            parent[node] = int(parts[3])
            updates += 1
            seen = []
            current = node
            while current and current not in seen and current in parent:
                seen.append(current)
                current = parent[current]
            if current not in seen:
                continue
            into += 1
            cycle = seen[seen.index(current) :]
            at = cycle.index(min(cycle))
            canonical = tuple(cycle[at:] + cycle[:at])
            unique.add(canonical)
            if node in cycle:
                member += 1
                lengths[len(cycle)] += 1
                if first is None:
                    first = tm
                last = tm
    return dict(
        run_id=folder.name,
        parent_updates=updates,
        updates_with_resulting_path_into_cycle=into,
        updates_with_changed_node_in_cycle=member,
        distinct_observed_cycles=len(unique),
        cycle_length_update_counts=dict(lengths),
        first_cycle_member_update_s=first,
        last_cycle_member_update_s=last,
    )


def main():
    folders = [
        ROOT / "output/diagnostics/scale_ack_trace/runs/acktrace_n500_s1_t8",
        ROOT / "output/diagnostics/chain/chain30_depth29_t15",
    ]
    rows = [inspect(p) for p in folders if (p / "COOJA.testlog.gz").exists()]
    out = ROOT / "output/diagnostics/scale_audit"
    out.mkdir(exist_ok=True)
    (out / "parent_cycles.json").write_text(json.dumps(rows, indent=2))
    print(json.dumps(rows, indent=2))


if __name__ == "__main__":
    main()
