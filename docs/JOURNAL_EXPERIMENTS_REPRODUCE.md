# Reproduce and monitor the additional journal experiments

These campaigns are separate from the original 1,960 runs and their checksum
manifest. Run commands below from `twin-attack-rpl/`.

## Read-only progress

```bash
.venv/bin/python scripts/journal_status.py
cat output/experiments/journal_extension/pipeline_status.json
systemctl --user status aef-journal-robustness.service aef-journal-completion.service
```

The completion service waits for the resumed robustness service, resumes any
missing robustness runs, then executes the ablation, timing, profiling,
radio-loss, and scale-diagnostic stages. Existing completed results are skipped.
Analysis and status tables are regenerated after each stage. The service records
failure explicitly; a failed stage is not marked complete. The services run
unattended, provided the computer remains awake and the user's systemd instance
and Docker remain available. These transient services do not promise
automatic recovery after reboot; the saved results support manual resumption.

Completed results are written atomically by the current runner. The first
92 robustness runs were saved before the earlier process stopped; four partial
folders are preserved under `interrupted_runs/` rather than mixed with completed
observations. Seed counts in the analysis reveal missing results.

## Regenerate tables from stored extension logs

For stronger independent reproduction, reparse logs into a separate directory:

```bash
.venv/bin/python analysis/reproduce_journal_extension.py
```

This does not run Cooja. It requires the saved metadata and compressed logs.
Statistical analysis can also be refreshed directly from the saved parsed results:

```bash
.venv/bin/python analysis/analyze_journal_extension.py
.venv/bin/python analysis/plot_journal_extension.py
.venv/bin/python analysis/diagnose_scale_geometry.py
.venv/bin/python analysis/profile_native_resources.py
.venv/bin/python analysis/validate_journal_protocol.py
```

Outputs are under `output/experiments/journal_extension/analysis/` and `figures/`.
The final analysis command with `--require-complete` exits nonzero until every
planned configuration has a completed result. A failed scale feasibility gate
remains an unresolved result even when all diagnostic simulations complete.

## Rebuild and rerun

Plans and variants are frozen JSON/JSONL files under
`output/experiments/journal_extension/`. Fixed-calibration constants and their
source seeds are documented in `ablation_calibration.json`. The pipeline uses
six workers for 30-node studies and two workers for large diagnostics. Adjust
workers and Java heap to available resources; these affect wall time and host
profiling conditions, which must be recorded when comparing costs.

Build extra variants with the corresponding JSON and explicit names:

```bash
.venv/bin/python scripts/build_variants.py \
  --extra-variants output/experiments/journal_extension/ablation_variants.json \
  --only v_jab_full_root v_jab_full_cli0 v_jab_full_cli1 --jobs 2
```

Use the other names in the JSON to build the remaining ablations. Operational
variants are defined in `operational_variants.json`; attack-rate variants are
in `variants.json`. The main build manifest records each variant's definitions.
Firmware source snapshots are under `source_snapshot/`. Native object sizes
require the compiled objects and the `size` command.

Example campaign rerun:

```bash
.venv/bin/python scripts/run_matrix.py \
  output/experiments/journal_extension/ablations.jsonl \
  --runs-dir output/experiments/journal_extension/runs \
  --workers 6 --heap 1g --timeout 7200
```

Use a new output directory for an independent simulation rerun rather than
replacing the archived logs. Completed runs in the selected directory are
skipped, allowing interruption/resumption. Full reruns take hours; table/figure
reproduction from saved logs does not require rerunning simulations.

The design of each study, the analysis rules and the scale gate are summarized
in `CODE_AND_DATA.md`, section 4.

`PROVENANCE.json` records hashes and compile definitions of the selected
prebuilt libraries, current source hashes, the Contiki commit and hook patch,
Python/platform details, and the Docker image ID. The final pipeline refreshes
this record and writes `MANIFEST.sha256` for the additional artifact. The original
`output/MANIFEST.sha256` remains the reference for the 1,960-run main study.

The pipeline also runs `references.jsonl`: 70 matched attack-free scenarios for
resilience denominators. It preserves the random selections associated with
attacker positions even though those positions behave honestly in the reference.
The analyzer requires matching layout, mobility membership, service nodes, run
duration, and reception probability. Reference counts are included in live status.

A passing scale gate releases `scale_full.jsonl` (114 further runs); a failed gate
is preserved as a feasibility limitation. `pipeline_status.json` explicitly
reports whether feasibility was established. The callback timings pool the
legitimate client callbacks within each run; the independent statistical unit
remains the run, not each callback sample.

## Execution-engine migration

The campaign was moved from Docker Desktop (`desktop-linux`) to the machine's
native Docker engine (`default`) without changing the global Docker context.
The exact container filesystem layers were verified and the image exported and
loaded locally. Three matched runs reproduced the core results exactly; their
records and timing comparisons are in `ENGINE_MIGRATION.json`. The fixed image
and explicit context are recorded in `execution_engine.json` and in new run
metadata. Completed virtual-time results were retained. Interrupted logs were
archived before restarting. The two earlier Desktop CPU-cost pilots were
preserved under `environment_comparison/desktop_profile_pilots/`; the CPU-cost
runs reported in the paper were executed on the native engine.
