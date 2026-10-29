# 500-node application-direction diagnostic

Started 28 October 2026 after the 12 load-isolation controls completed.
This campaign focuses exclusively on 500 nodes, as requested by the author.

## Evidence motivating the test

In seed 1, the 500-node quiet load-isolation run had all 499 clients reachable
at minute 9. With application traffic, reachability deteriorated and logs
reported thousands of rank-error/loop drops. This is evidence of a traffic-
dependent failure, not proof that downward traffic is its cause.

## Protocol

- Four runs: application echo enabled/disabled, each with seeds 1 and 2.
- Original random-connected layouts, static, 500 nodes, no attackers, defense 0.
- Duration 15 simulated minutes; no application transmission before 300 s;
  existing jittered timers then send at approximately 60 s intervals.
- Same routing, transport and memory configuration in every run, copied from
  the load-isolation campaign. Definitions and source/binary hashes are saved.
- The only intended treatment difference within each seed is root UDP echo.
- Root echo is enabled by default in firmware; archived experiment binaries
  are preserved. The diagnostic does not automatically release further runs.

## Interpretation

Compare per-minute route availability, parent switches, actual application
delivery and warning counts. Source-only delivery cannot establish downward
service. Even if uplink-only succeeds, it is not a successful repair of the
paper's bidirectional scenario. A directional effect could arise from offered
load or source-routing behavior; this test alone cannot distinguish them.
Independent confirmation and longer runs are needed for performance claims.

```bash
systemctl --user status aef-scale500-echo-isolation.service
cat output/diagnostics/scale500_echo_isolation/status.json
```

Outputs are under `output/diagnostics/scale500_echo_isolation/`; the service
log is `output/diagnostics/scale500_echo_isolation.log`. Run plans, compiled
definitions, hashes, metadata, raw logs and per-run diagnostic JSON are saved.
