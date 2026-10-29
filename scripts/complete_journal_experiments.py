#!/usr/bin/env python3
"""Resume journal campaigns and publish analyses after each stage.

Runs as a local systemd user service. It records stage outcomes and stops on a
failed build/run rather than declaring a partially completed campaign complete.
"""
import datetime,hashlib,json,os,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'output/experiments/journal_extension'
PYTHON=str(ROOT/'.venv/bin/python')
ENGINE_FILE=OUT/'execution_engine.json'
ENGINE=json.loads(ENGINE_FILE.read_text()) if ENGINE_FILE.exists() else {}
CONTEXT=os.environ.get('AEF_DOCKER_CONTEXT',ENGINE.get('docker_context'))
IMAGE=os.environ.get('AEF_DOCKER_IMAGE',ENGINE.get('docker_image'))
ENGINE_ARGS=(['--docker-context',CONTEXT] if CONTEXT else [])+(['--docker-image',IMAGE] if IMAGE else [])
STATUS=OUT/'pipeline_status.json'
state={'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'stages':[],'state':'running',
       'execution_environment':{'docker_context':CONTEXT,'docker_image':IMAGE}}
def save():STATUS.write_text(json.dumps(state,indent=2))
def run(label,argv):
    state['current_stage']=label;save();print(label,flush=True)
    result=subprocess.run(argv,cwd=ROOT)
    state['stages'].append({'name':label,'exit_code':result.returncode,'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()});save()
    if result.returncode:raise RuntimeError(f'{label} failed ({result.returncode})')
def build_variants(file):
    values=json.loads((OUT/file).read_text())
    record=ROOT/'build/variants.json'
    known=json.loads(record.read_text())['variants'] if record.exists() else {}
    if all(known.get(name)==defs and (ROOT/'build/variants'/name/'build/cooja'/(name+'.cooja')).exists()
           for name,defs in values.items()):
        state['stages'].append({'name':'reuse_'+file,'exit_code':0});save()
        return
    run('build_'+file,[PYTHON,'scripts/build_variants.py','--extra-variants',str(OUT/file),'--only',*values,'--jobs','2',*ENGINE_ARGS])
def analyze():
    run('analysis',[PYTHON,'analysis/analyze_journal_extension.py'])
def matrix(name,workers=6,heap='1g'):
    run(name,[PYTHON,'-u','scripts/run_matrix.py',str(OUT/(name+'.jsonl')),
        '--runs-dir',str(OUT/'runs'),'--workers',str(workers),'--heap',heap,'--timeout','7200',*ENGINE_ARGS])
def manifest():
    paths=sorted(p for p in OUT.rglob('*') if p.is_file() and (p.suffix in ('.gz','.json','.jsonl','.csv','.md','.py','.c','.h') or p.name=='SHA256SUMS'))
    lines=[]
    for p in paths:
        if p==STATUS:continue
        lines.append(hashlib.sha256(p.read_bytes()).hexdigest()+'  '+p.relative_to(ROOT).as_posix())
    (OUT/'MANIFEST.sha256').write_text('\n'.join(lines)+'\n')
try:
    state['current_stage']='wait_for_resumed_robustness';save()
    while subprocess.run(['systemctl','--user','is-active','--quiet','aef-journal-robustness.service']).returncode==0:
        time.sleep(15)
    # Existing results are skipped, including after any interrupted service.
    matrix('robustness');analyze()
    matrix('references');analyze()
    # Rebuild from the frozen definitions so the provenance registry includes
    # every successful variant, including any built before an earlier failure.
    build_variants('ablation_variants.json')
    matrix('ablations');analyze()
    build_variants('operational_variants.json')
    matrix('timing_validation',workers=2);analyze()
    matrix('profiling');analyze()
    matrix('robservation');analyze()
    matrix('scale_diagnostics',workers=2,heap='2g');analyze()
    run('scale_geometry',[PYTHON,'analysis/diagnose_scale_geometry.py'])
    run('validation',[PYTHON,'analysis/validate_journal_protocol.py'])
    run('scale_gate_release',[PYTHON,'scripts/plan_validated_scale.py'])
    if (OUT/'scale_full.jsonl').exists():
        build_variants('scale_full_variants.json')
        matrix('scale_full',workers=2,heap='2g');analyze()
    run('resource_sizes',[PYTHON,'analysis/profile_native_resources.py'])
    run('figures',[PYTHON,'analysis/plot_journal_extension.py'])
    run('validation',[PYTHON,'analysis/validate_journal_protocol.py'])
    run('complete_analysis',[PYTHON,'analysis/analyze_journal_extension.py','--require-complete'])
    run('provenance',[PYTHON,'scripts/record_journal_provenance.py'])
    run('log_reproduction',[PYTHON,'analysis/reproduce_journal_extension.py'])
    manifest()
    state['scale_feasibility_established']=json.loads((OUT/'analysis/scale_gate.json').read_text())['full_scale_matrix_authorized_by_evidence']
    state['state']='complete';state['current_stage']='complete';save()
except Exception as error:
    state['state']='failed';state['error']=str(error);save();raise
