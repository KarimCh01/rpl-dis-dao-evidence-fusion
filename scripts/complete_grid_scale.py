#!/usr/bin/env python3
"""Release the preplanned scale comparison only after all grid controls pass.

This is a separate topology family. It does not relabel the failed original
random-layout campaign as successful or modify the submitted manuscript.
"""
import csv
import hashlib
import itertools
import json
import math
import subprocess
import sys
import time
from collections import defaultdict
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor,as_completed
import numpy as np
from scipy.stats import t

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'output/experiments/grid_scale_extension'
GATE=ROOT/'output/diagnostics/structured_grid_scale'
sys.path.insert(0,str(ROOT/'analysis'))
from analyze_journal_extension import enrich, paired_p
import parse_run
import run_matrix
from plan import scale

def status(state,**extra):
    OUT.mkdir(parents=True,exist_ok=True)
    (OUT/'status.json').write_text(json.dumps(dict(state=state,**extra),indent=2))

def csvout(name,rows):
    if rows:
        with (OUT/'analysis'/name).open('w',newline='') as f:
            w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)

def analyze():
    (OUT/'analysis').mkdir(exist_ok=True)
    rows=[];events=[];checks=[]
    for line in (OUT/'plan.jsonl').read_text().splitlines():
        config=json.loads(line);folder=OUT/'runs'/config['run_id']
        saved=json.loads((folder/'result.json').read_text());fresh=parse_run.parse(folder)
        canonical=lambda x:json.dumps({k:v for k,v in x.items() if k!='wall_s'},sort_keys=True)
        match=canonical(saved)==canonical(fresh)
        checks.append(dict(run_id=config['run_id'],matches=match,
            raw_log_sha256=hashlib.sha256((folder/'COOJA.testlog.gz').read_bytes()).hexdigest()))
        if not match:raise RuntimeError('Log reproduction mismatch: '+config['run_id'])
        meta=json.loads((folder/'meta.json').read_text());r,e=enrich(folder,meta,fresh)
        rows.append(r);events+=e
    key=lambda r:(r['seed'],r['nodes'],r['mobile_frac'])
    refs={key(r):r for r in rows if r['experiment']=='resilience_reference'}
    for r in rows:
        if not r['attack_mode']:continue
        reference=refs[key(r)]
        assert all(r[k]==reference[k] for k in ['layout_sha256','mobile_node_ids','service_node_ids'])
        r['reference_run_id']=reference['run_id'];r['reference_exact']=1
        r['ari']=r['service_round_trips']/reference['service_round_trips'] if reference['service_round_trips'] else float('nan')
    csvout('per_run.csv',rows);csvout('attacker_events.csv',events)
    (OUT/'analysis/log_reproduction.json').write_text(json.dumps(checks,indent=2))
    metrics=['pdr_up','pdr_down','delivery_up','fpr','tpr','macro_f1','event_recall_new_alert','ari','detected_delay_mean_s']
    groups=defaultdict(list)
    for r in rows:groups[(r['nodes'],r['mobile_frac'],r['defense'],r['attack_mode'])].append(r)
    summaries=[]
    for (nodes,mob,defense,attack),cell in sorted(groups.items()):
        for metric in metrics:
            x=np.array([r[metric] for r in cell if math.isfinite(r.get(metric,float('nan')))])
            if not len(x):continue
            half=t.ppf(.975,len(x)-1)*x.std(ddof=1)/math.sqrt(len(x)) if len(x)>1 else float('nan')
            summaries.append(dict(nodes=nodes,mobility=mob,defense=defense,attack_mode=attack,
                metric=metric,n=len(x),mean=float(x.mean()),ci95_low=float(x.mean()-half),ci95_high=float(x.mean()+half)))
    csvout('summary.csv',summaries)
    tests=[];rng=np.random.default_rng(20261021)
    for nodes,mob in sorted({(r['nodes'],r['mobile_frac']) for r in rows}):
        bymethod=defaultdict(dict)
        for r in rows:
            if r['nodes']==nodes and r['mobile_frac']==mob and r['attack_mode']==3:bymethod[r['defense']][r['seed']]=r
        for other,cell in sorted(bymethod.items()):
            if other==7:continue
            for metric in ['pdr_down','delivery_up','fpr','event_recall_new_alert','ari']:
                seeds=sorted(set(cell)&set(bymethod[7]))
                d=np.array([bymethod[7][s][metric]-cell[s][metric] for s in seeds if math.isfinite(bymethod[7][s].get(metric,float('nan'))) and math.isfinite(cell[s].get(metric,float('nan')))])
                if len(d)<2:continue
                boot=rng.choice(d,(10000,len(d)),replace=True).mean(axis=1)
                tests.append(dict(nodes=nodes,mobility=mob,reference=7,comparison=other,metric=metric,n_pairs=len(d),
                    mean_difference=float(d.mean()),bootstrap_ci95_low=float(np.quantile(boot,.025)),
                    bootstrap_ci95_high=float(np.quantile(boot,.975)),exact_p=paired_p(d)))
    highest=0
    for i,row in enumerate(sorted(tests,key=lambda r:r['exact_p'])):
        highest=max(highest,min(1,(len(tests)-i)*row['exact_p']));row['holm_p']=highest
    csvout('paired_comparisons.csv',tests)
    return len(rows)

def main():
    OUT.mkdir(parents=True,exist_ok=True)
    status('waiting_for_grid_controls')
    while True:
        p=GATE/'status.json'
        if p.exists():
            try:gate=json.loads(p.read_text())
            except json.JSONDecodeError:
                time.sleep(1)
                continue
            if gate['state']=='failed':raise RuntimeError('Grid controls failed to execute')
            if gate['state']=='complete':break
        time.sleep(15)
    if not gate.get('all_pass'):
        status('feasibility_not_established',planned_comparisons=114,
               reason='At least one predeclared grid control failed; attack matrix not released.')
        print('Grid feasibility not established. Attack comparisons remain gated.',flush=True)
        return
    engine=json.loads((ROOT/'output/experiments/journal_extension/execution_engine.json').read_text())
    tr=json.loads((ROOT/'output/calibration/tr.json').read_text())
    beta=json.loads((ROOT/'output/calibration/limsd.json').read_text())['beta']
    variants={};mapping={}
    common=('SEND_INTERVAL_SEC=60,BIG_NET=1,ROOT_ROUTES=1100,ROOT_QUEUEBUF=128,'
            'APP_CSMA_NEIGHBOR_QUEUES=16,APP_COMPRESS_EXT_HDR=0,APP_RPL_DIS_INTERVAL_SEC=60,'
            'APP_DAO_RTX_SEC=30,APP_DAO_MAX_RTX=10,SCALE_DIAGNOSTICS=1')
    for defense in [0,3,4,5,7]:
        mapping[defense]={}
        for rolekey,role,mob in [('root',0,0),('cli0',1,0),('cli1',1,1)]:
            name=f'v_gridfull_d{defense}_{rolekey}';mapping[defense][rolekey]=name
            variants[name]=(f'ROLE={role},DEFENSE={defense},NODE_MOBILE={mob},{common},'
                f'TR_STATIC_MS={tr["tr_static_ms"]},TR_MOBILE_MS={tr["tr_mobile_ms"]},LIMSD_BETA={beta}')
    for nodes in [500,1000]:
        variants[f'v_gridfull_atk{nodes}']=f'ROLE=2,DEFENSE=0,ATTACK_MODE=3,NUM_NODES={nodes},ATTACK_DIS_INTERVAL=3,ATTACK_DAO_INTERVAL=2,{common}'
    vf=OUT/'variants.json';vf.write_text(json.dumps(variants,indent=2));status('building')
    subprocess.run([sys.executable,str(ROOT/'scripts/build_variants.py'),'--extra-variants',str(vf),
        '--only',*variants,'--jobs','3','--docker-context',engine['docker_context'],'--docker-image',engine['docker_image']],check=True)
    configs=scale(list(range(51,59)),list(range(51,57)))
    assert len(configs)==114
    for r in configs:
        r.update(run_id='gridfull_'+r['run_id'],topology='structured_grid',grid_spacing_m=34,grid_jitter_m=.25,
            experiment='grid_scale_comparison' if r['attack_mode'] else 'resilience_reference',
            native_dis_interval_s=60,dao_interval=2,
            variant_overrides=dict(mapping[r['defense']],atk=f'v_gridfull_atk{r["nodes"]}'))
    (OUT/'plan.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in configs))
    status('running',completed=0,planned=len(configs))
    with ThreadPoolExecutor(max_workers=3) as pool:
        jobs=[pool.submit(run_matrix.run_one,r,OUT/'runs',heap='2g',timeout=21600,**engine) for r in configs]
        for i,job in enumerate(as_completed(jobs),1):
            rid,state=job.result();print(i,rid,state,flush=True)
            if state not in ('ok','skip'):raise RuntimeError(rid+':'+state)
            status('running',completed=i,planned=len(configs))
    status('analyzing',completed=len(configs),planned=len(configs))
    count=analyze()
    status('complete',completed=count,planned=len(configs),log_reproduction_mismatches=0)
    print('Completed scale comparison and independent log reproduction.',flush=True)

if __name__=='__main__':
    try:main()
    except Exception as error:status('failed',error=str(error));raise
