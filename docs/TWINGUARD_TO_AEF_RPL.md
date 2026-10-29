# Applying the supplied TwinGuard plan to AEF-RPL

TwinGuard's experimental principles are useful, but the proposed systems differ.
AEF-RPL is a Contiki-NG/Cooja routing-security study. It has no physical reference
plant, industrial fault model, federated clients, or reliability-aware knowledge
exchange. Experiments for those mechanisms cannot support claims about AEF-RPL.

| Supplied experiment | AEF-RPL implementation and evidence |
|---|---|
| 1. Detection quality | Existing DIS, DAO, combined, and no-attack matrix; added per-run binary macro-F1 and event accounting. The detector is binary and does not classify attack families. |
| 2. Detection speed | New post-onset alert records, missed-event counts, and separate reporting of attackers already isolated at onset; two injection-trace validation runs. |
| 3. Physics contribution | Physical twins do not apply. The relevant mechanism test is DAO-consistency evidence versus the DIS-FDM-derived detector, with matched component ablations. |
| 4. Architecture | 240 runs: full, learning off, DAO mass off, immediate DAO evidence, route repair off, and fixed calibration. |
| 5. Unseen attacks and lifelong learning | Attack-rate robustness assesses rate variation. Neither held-out attack-family learning nor catastrophic-forgetting resistance is established by these tests. No such claim should be made. |
| 6. Federation and negative transfer | Not applicable to this implementation; no federated learning is implemented. |
| 7. Degraded observations | 120 radio-loss runs, reception probabilities 1.00, 0.95, and 0.80; no physical sensor-fault diagnosis is claimed. |
| 8. Operational feasibility | 60 host callback timing runs plus native compiled-object section sizes. These are simulator/host measurements, not target-mote runtime, flash, RAM, or measured battery energy. |
| Mandatory validation | Manifest bounds and nonfinite inputs, source check for privileged ground-truth symbols, actual injection-attempt timing, geometric connectivity, and a separate scale feasibility gate. Physical-plant and MQTT checks do not apply. |

## Frozen campaigns

All primary comparisons use paired seeds/layouts within their campaign. The
additional raw results are isolated from the original 1,960-run matrix.

- Attack-rate robustness: 240 runs, seeds 21–30, 30 nodes, seven attackers,
  static/30%-mobile; DIS/DAO intervals 3/2, 10/10, 30/30 seconds; RPL, DIS-FDM,
  Li-MSD, and AEF-RPL. Rate pairs change together: this is joint-rate robustness,
  not an independently identified DIS-rate versus DAO-rate effect.
- Functional ablation: 240 runs, seeds 31–40, combined/no-attack and
  static/30%-mobile conditions. All evaluation streams last 60 simulated minutes.
- Fixed calibration: constants were frozen from separate benign seeds 1–10;
  evaluation seeds 31–40 do not choose them. All variants retain the same
  startup waiting period. This tests fixed versus per-run calibration, not the
  removal of a warm-up interval.
- DAO mass ablation: removes the Dempster--Shafer DAO mass and its use in the
  state while retaining raw DAO observation, anomaly-based reward, and handling.
  It does not remove every source of DAO information from the system.
- Immediate evidence: one-window DAO evidence rather than the default two-window
  persistence requirement; subsequent evidence combination remains unchanged.
- Route repair ablation: forwards the first eligible incorrect-parent DAO without
  repair; the remainder of the blacklist forwarding policy is retained.
- Radio-loss and host-cost campaigns: five independent seeds (41–45), with
  static/mobile and no-attack/combined conditions. These secondary measurements
  report their smaller sample size explicitly.
- Scale diagnostics: eight attack-free 15-minute pilots, two seeds at 500 and
  1000 nodes, comparing native DIS periods of 10 and 60 seconds. Other relevant
  routing settings remain matched. All clients and roots have the same enlarged
  queue/route configuration for these diagnostics; this change is recorded in
  the firmware definitions and should not be conflated with the old pilots.

Scale gates are predefined at 95% application participation, 80% expected
network-wide upward delivery, and 90% conditional downward delivery in every
matched pilot for a setting. A completed pilot does not automatically pass.
The full scale comparison remains gated unless these requirements are met.

## Analysis rules

`analysis/analyze_journal_extension.py` uses the run/seed as the independent unit.
It reports per-cell Student-t intervals, paired bootstrap differences, exact
paired sign-flip p-values, and Holm correction across all reported tests within
an experiment. Partial cells remain preliminary. Latency excludes missed events
numerically, but records them beside latency rather than hiding them. Existing
node-level detection metrics and post-onset event metrics use different
observation rules and are labeled separately.

The predefined attack activation is 300 seconds after mote boot; an injection
attempt follows its configured timer and requires the relevant route state.
Trace records distinguish attempted injection from confirmed over-air reception.
No PR-AUC is inferred from a blacklist log that lacks continuously sampled scores.
No non-inferiority, superiority, or generalization conclusion follows merely from
a nonsignificant p-value or a completed run.

The rank-increase setting used in scale diagnostics is relative to the node's
lowest observed rank, as implemented in RPL-Lite's `max_acceptable_rank()`.
It is not an absolute 20-hop limit. Earlier pilot labels referring to the
"20-hop build" identify this configuration, not a demonstrated hop ceiling.

## Matched resilience references

An additional 70 attack-free reference runs preserve the seven reserved
attacker-position selections before choosing the mobile nodes. This keeps the
layout, mobility membership, and random waypoint generation matched to the
attacked scenarios. ARI compares post-onset completed round trips for the same
22 service nodes and the same duration and reception probability. The analyzer
checks layout hashes, mobile membership, and service-node IDs before computing
an ARI. A reference with zero completed round trips gives an undefined ratio,
not a successful resilience result. Detection recovery time uses the existing
90%-of-pre-event level and five-minute sustained recovery definition, and its
censoring flag is retained.

If a native-DIS setting passes all eight pilot gates for its matched settings,
`plan_validated_scale.py` releases the proposal's 114-run scale comparison using
independent evaluation seeds 51–58 (500 nodes) and 51–56 (1000 nodes). Compile
settings retain the validated native-DIS period and queue/route configuration
across all compared methods. If no setting passes, the full comparison is not
run and the final status retains `scale_feasibility_established: false`.
