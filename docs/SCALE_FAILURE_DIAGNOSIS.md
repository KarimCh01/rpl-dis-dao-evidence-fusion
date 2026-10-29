# Large-network routing failure diagnosis

## Evidence collected on 2026-10-21

An isolated 500-node, seed-1, static, no-attack, defense-disabled diagnostic
was repeated for eight simulated minutes with the existing compiled diagnostic
firmware. The only logging change was to retain stack messages as well as the
usual `#` application records. The original completed campaigns were not changed.

Command: `.venv/bin/python scripts/trace_scale_failure.py`

Raw trace: `output/diagnostics/scale_root_cause/trace_dis10_n500_s1_t8/COOJA.testlog.gz`.
Counts and node IDs: `output/diagnostics/scale_root_cause/warning_summary.json`.

| Stack message | Count | Distinct nodes | First occurrence (s) |
|---|---:|---:|---:|
| compressed header does not fit first fragment | 140 | 5 | 144.560968 |
| could not allocate neighbor, dropping packet | 2,126 | 225 | 117.799520 |
| local repair (DAO max rtx) | 457 | 360 | 164.096000 |

## Confirmed mechanisms

1. **Source-routing header size blocks packet transmission.** In the pinned
   Contiki tree, `os/net/ipv6/sicslowpan.c` rejects a fragmented outgoing packet
   when its compressed headers cannot fit in the first fragment. RPL non-storing
   downward traffic carries a source-routing header that grows with path length.
   `arch/platform/cooja/platform.c:set_lladdr()` repeats each two-byte mote ID
   across the link address. The resulting IPv6 interface identifiers differ
   across multiple bytes, limiting the common-prefix compression performed by
   `rpl-ext-header.c`. The trace confirms the header-fit rejection on forwarding
   nodes near the root. Increasing reassembly buffers does not remove this
   outgoing header-size restriction.

2. **CSMA neighbor queues are exhausted.**
   `os/net/mac/csma/csma-output.c` defaults
   `CSMA_MAX_NEIGHBOR_QUEUES` to **2**, unless
   `CSMA_CONF_MAX_NEIGHBOR_QUEUES` overrides it. The scale builds increase
   `QUEUEBUF_CONF_NUM` to 128 but do not override the separate neighbor-queue
   limit. The trace explicitly confirms allocation failures and packet drops.

3. **DAO retry exhaustion removes routes.**
   `rpl-timers.c:resend_dao()` calls `rpl_local_repair("DAO max rtx")`
   after the configured retry limit. `rpl-dag.c:rpl_local_repair()` removes
   neighbors and resets the non-root DAG state. This explains the observed
   repeated loss of parent/reachability. The first two drop mechanisms precede
   the first retry-exhaustion repair in the diagnostic trace.

These are confirmed packet-drop mechanisms and the observed route-reset
trigger. The current trace does not identify which dropped packet corresponds
to each missing DAO acknowledgment or quantify each mechanism's causal share.
Radio contention may also contribute. Do not attribute every lost packet to
one cause or claim that scalability has been fixed.

## Next controlled interventions

- Increase the separate CSMA neighbor-queue capacity in isolated diagnostic
  variants and compare matched seeds against the existing configuration.
- Address source-routing header encoding/fragment handling using a supported
  implementation, or evaluate a separately declared topology/addressing design
  with shorter headers. Do not silently change address generation or the
  topology and compare the resulting scores as though the setup were identical.
- Keep DAO acknowledgments enabled: disabling them could hide the failure
  while leaving downward delivery broken.
- Repeat the predefined attack-free connectivity gates before releasing any
  full large-scale attack/defense campaign.

No firmware fix or successful large-scale validation is claimed by this audit.
