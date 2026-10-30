# Route formation and application-load screening

Started 28 October 2026. This is a new diagnostic campaign, separate from all
archived performance results. It does not release an attack-comparison matrix.

## Fixed protocol

- Original `random_connected` topology generator; static networks; seed 1.
- Node counts: 100, 250, 500, 1000; 10 simulated minutes each.
- Defense and attacks disabled throughout.
- Three matched profiles at each size: application traffic disabled; application
  interval 60 seconds after time 300 seconds; interval 300 seconds after time
  300 seconds. First transmission follows the existing jittered send timer;
  it is not guaranteed to occur exactly at the start boundary.
- Routing, control traffic and reports remain active in the quiet profile.
- Same transport, paced DAO/DIS and loop-error-drop settings as the most recent
  original-layout controls, applied to every profile. Exact definitions are
  saved in `output/diagnostics/scale_load_isolation/variants.json`.
- Three concurrent simulations. Each has a two-hour wall-clock timeout.

## Interpretation

The first five minutes measure route formation without application traffic.
The second five minutes test route stability with the selected offered load.
Compare per-minute reachability and parent changes, alongside actual packet
counts and warnings. A quiet run has **undefined application delivery**, not
zero delivery; use the diagnostic summaries rather than the generic parser's
delivery fields for this campaign. Missing route reports must not be treated
as successful reachability.

These single-seed runs are screening evidence. They cannot establish a
confidence interval or justify a general scalability claim. Any promising
configuration needs independent-seed confirmation and a sustained matched
attack/benign comparison. Lower traffic, settling periods and any subsequent
topology changes must be explicit in the paper.

## Execution and saved results

```bash
systemctl --user status aef-scale-load-isolation.service
cat output/diagnostics/scale_load_isolation/status.json
```

The background service writes its log to
`output/diagnostics/scale_load_isolation.log`. Per-run diagnostic JSON files
are saved immediately after completion; `summary.json` is written after the
whole batch. Plans, firmware definitions, binary/source hashes, metadata and
compressed raw logs are retained. Re-running the driver skips saved results:

```bash
.venv/bin/python scripts/diagnose_scale_load.py
```

Firmware traffic switches default to the existing behavior when omitted.
Archived binaries and logs are not rebuilt or modified by this campaign.
The computer must remain awake, with Docker and the user's systemd instance available.
