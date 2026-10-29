# Journal-extension experiment status

Only completed runs contribute to numerical summaries. Partial cells are preliminary.

| Experiment | Completed | Planned |
|---|---:|---:|
| ablation | 240 | 240 |
| host_callback_cost | 60 | 60 |
| radio_loss | 120 | 120 |
| rate_robustness | 240 | 240 |
| resilience_reference | 70 | 70 |
| scale_feasibility | 8 | 8 |
| timing_validation | 2 | 2 |

## Interpretation rules

- The independent unit is the simulation seed. Means use Student-t 95% intervals; paired differences use 10,000 paired bootstrap resamples.
- Paired p-values use an exact sign-flip test and Holm correction over all reported tests within each experiment. This test assumes pairwise exchangeability under its null.
- Node-level TP/FP counts retain the existing parser definition. Event recall counts a new alert after attack onset; already-isolated attackers are reported separately.
- Delay summaries include detected events only; attacker_events.csv and missed_new_alerts expose missing detections and the observation horizon.
- False-blacklist operations/hour include re-blacklisting and are not a count of independent false-alarm incidents.
- Macro-F1 is binary normal/attacker F1 averaged across the two classes, computed only when attackers are present. No-attack runs use FPR.
- No PR-AUC or unseen-class accuracy is claimed without a suitable score or protocol.
- Callback CPU timings measure native host thread execution in Cooja, excluding firmware scheduling, radio, and JVM/mote-copy overhead. They are not target-mote timings.
- A completed simulation does not pass scale feasibility automatically; join coverage and network-wide expected delivery require separate review.
