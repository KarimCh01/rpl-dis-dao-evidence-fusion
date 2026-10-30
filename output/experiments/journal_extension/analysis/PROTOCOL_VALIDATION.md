# Pre-experiment protocol validation

| Check | Status | Evidence |
|---|---|---|
| all_planned_manifests | pass | 740 valid configurations |
| invalid_manifest_rejection | pass | 10 nonfinite/out-of-range cases rejected |
| privileged_ground_truth_source_check | pass | No references to scheduling/attacker-label symbols in defense.c or rl.c |
| injection_trace_jtrace_m3_k7_i3_mob0_d7_s21_t10 | pass | Trace records injection attempts after the activation timer, not confirmed packet reception |
| injection_trace_jtrace_m3_k7_i3_mob3_d7_s21_t10 | pass | Trace records injection attempts after the activation timer, not confirmed packet reception |
| scale_feasibility | not_established | 8/8 completed; full scale comparisons require every matched pilot for a setting to pass |

Attack activation is scheduled 300 seconds after each mote boots. Injection attempts occur later according to the DIS/DAO timer and route availability. Delay analysis uses the scheduled 300-second origin for consistency with the existing campaign; the traced attempts expose that distinction.
