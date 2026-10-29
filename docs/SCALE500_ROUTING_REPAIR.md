# 500-node routing repair investigation

## Completed directional isolation

Four 15-minute, attack-free, defense-disabled runs completed on original
500-node random layouts, seeds 1 and 2. Application traffic starts after
300 s and has a 60 s interval in all runs.

| Root reply | Seed | Actual upward packet delivery | Reachable at minute 14 |
|---|---:|---:|---:|
| Enabled | 1 | 19.5678% | 5/499 |
| Enabled | 2 | 24.0041% | 2/499 |
| Disabled | 1 | 100% | 499/499 |
| Disabled | 2 | 99.9199% | 499/499 |

Delivery above is conditional on packets actually sent; it is not the
expected-traffic service metric. Reply-enabled runs stop generating most
expected traffic as routes fail, so this table alone understates service loss.
Raw logs and diagnostic summaries are in
`output/diagnostics/scale500_echo_isolation/`.

This treatment changes both direction and offered load. It does not prove a
source-routing implementation bug, and disabling replies is not a repair of
the bidirectional scenario.

## Detailed trace

`scripts/trace_500_downward.py` captures RPL INFO logs on the same original
500-node seed-1 layout for seven simulated minutes, with replies enabled.
It includes pre-traffic formation and the first two minutes of application
traffic. Transient upward rank errors also occur before application onset;
their presence alone does not explain the later sustained collapse.

## First candidate configuration repair

The stack permits DIO intervals as long as 1048.576 s by default (minimum
exponent 12, eight doublings). One hypothesis is that traffic-driven link/rank
changes outpace routing refresh, contributing to inconsistent parent ranks.

`scripts/validate_500_route_refresh.py` changes **only** the maximum number of
DIO doublings from 8 to 4 relative to the echo-enabled controls. This bounds
the longest interval at 65.536 s. Both seeds 1 and 2 run for 15 simulated
minutes with normal bidirectional traffic. All other topology, transport,
buffer, application and routing settings match the directional controls.

This is a candidate configuration change, not a verified fix and not an
AEF-RPL novelty claim. It may increase control overhead. Compare route
availability, expected delivery, round-trip completion, parent changes and
control traffic with the saved controls. No attack matrix is released
automatically. A promising result still requires longer, independent-seed
validation and common configuration across every detector.

```bash
systemctl --user status aef-scale500-downward-trace.service
systemctl --user status aef-scale500-route-refresh.service
cat output/diagnostics/scale500_route_refresh/status.json
```

Outputs are retained under the corresponding `output/diagnostics/` directories.
Archived binaries and results are preserved. The submitted manuscript is not
edited by these diagnostics.
