#!/usr/bin/env python3
"""One command to reparse archived logs and regenerate paper assets, offline.

Install requirements first. No Docker, compiler or simulator is invoked.
"""
import json
import shutil
import subprocess
import sys
import time
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'output/paper_reproduction'
STEPS=[
    ('main_logs',['analysis/reproduce_from_logs.py']),
    ('journal_logs',['analysis/reproduce_journal_extension.py']),
    ('benign_learning',['analysis/analyze_learning_fp_extension.py']),
    ('journal_analysis',['analysis/analyze_journal_extension.py','--require-complete',
        '--runs-dir','output/repro_journal_extension/runs',
        '--out-dir','output/experiments/journal_extension/analysis']),
    ('journal_figures',['analysis/plot_journal_extension.py']),
    ('paper_assets',['scripts/build_full_paper_assets.py']),
    ('hypothesis_tests',['analysis/test_hypotheses.py']),
    ('analytical_figure',['analysis/check_manuscript_math.py']),
    ('scale_logs',['analysis/reproduce_scale_diagnostics.py']),
    ('scale_figures',['analysis/plot_scale_corrections.py']),
    ('followup_logs_and_table',['analysis/reproduce_scale_followups.py']),
]

def main():
    OUT.mkdir(parents=True,exist_ok=True);results=[];start=time.monotonic()
    for name,args in STEPS:
        print(f'Reproducing {name} from stored artifacts...',flush=True)
        t=time.monotonic()
        with (OUT/(name+'.log')).open('w') as log:
            r=subprocess.run([sys.executable,*args],cwd=ROOT,stdout=log,stderr=subprocess.STDOUT)
        results.append(dict(step=name,exit_code=r.returncode,seconds=round(time.monotonic()-t,1)))
        (OUT/'report.json').write_text(json.dumps(dict(complete=False,steps=results),indent=2))
        if r.returncode:raise SystemExit(f'FAILED {name}; see output/paper_reproduction/{name}.log')
        if name == 'main_logs':
            # The replay has already matched the published numerical manifest.
            # Use these freshly rebuilt tables as the paper generator's inputs.
            for source in (ROOT/'output/repro/results').iterdir():
                if source.is_file():shutil.copy2(source,ROOT/'output/results'/source.name)
    (OUT/'report.json').write_text(json.dumps(dict(complete=True,seconds=round(time.monotonic()-start,1),steps=results),indent=2))
    print('COMPLETE: stored-log analysis and paper figures/tables regenerated. No simulations executed.',flush=True)

if __name__=='__main__':main()
