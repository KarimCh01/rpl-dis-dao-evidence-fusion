#!/usr/bin/env python3
"""Check manifest bounds, injection timing and scale feasibility separately."""
import copy,gzip,json,math,sys
from collections import defaultdict
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'output/experiments/journal_extension'
sys.path.insert(0,str(ROOT/'scenarios'))
from gen_csc import validate_cfg
checks=[]
def note(name,status,detail):checks.append({'check':name,'status':status,'detail':detail})
plans=[]
for name in ('robustness','references','ablations','profiling','robservation','scale_diagnostics','timing_validation','scale_full'):
    if not (OUT/(name+'.jsonl')).exists():continue
    plans += [json.loads(x) for x in (OUT/(name+'.jsonl')).read_text().splitlines() if x.strip()]
for row in plans:validate_cfg(row)
note('all_planned_manifests','pass',f'{len(plans)} valid configurations')
base=plans[0]
invalid=[('duration_min',0),('duration_min',-1),('duration_min',float('nan')),
         ('duration_min',float('inf')),('mobile_frac',float('nan')),
         ('rx_ratio',float('inf')),('attack_start_s',float('nan')),
         ('attack_start_s',float('inf')),('send_s',0),('attackers',base['nodes'])]
for key,value in invalid:
    cfg=copy.deepcopy(base);cfg[key]=value
    try:validate_cfg(cfg)
    except (ValueError,TypeError):continue
    raise SystemExit(f'Invalid manifest accepted: {key}={value}')
note('invalid_manifest_rejection','pass',f'{len(invalid)} nonfinite/out-of-range cases rejected')
# Detector source boundary: attack metadata is not an input to the evidence code.
source=(ROOT/'firmware/defense.c').read_text()+(ROOT/'firmware/rl.c').read_text()
privileged=[x for x in ('ATTACK_START_SEC','attacker_ids','attack_dis_sent','attack_dao_sent') if x in source]
note('privileged_ground_truth_source_check','pass' if not privileged else 'fail',
     'No references to scheduling/attacker-label symbols in defense.c or rl.c' if not privileged else str(privileged))
trace=[]
for cfg in [p for p in plans if p.get('experiment')=='timing_validation']:
    folder=OUT/'runs'/cfg['run_id']
    if not (folder/'result.json').exists():continue
    meta=json.loads((folder/'meta.json').read_text());boot={};first=defaultdict(dict);last=defaultdict(dict)
    with gzip.open(folder/'COOJA.testlog.gz','rt') as f:
        for line in f:
            p=line.split()
            if len(p)<4:continue
            try:tm=int(p[0])/1e6;node=int(p[1])
            except ValueError:continue
            if p[2]=='#B':boot[node]=tm
            if p[2]=='#A':
                kind=int(p[3]);first[node].setdefault(kind,tm);last[node][kind]=tm
    for node in meta['attacker_ids']:
        for kind,interval in ((1,3),(2,2)):
            value=first[node].get(kind)
            ok=value is not None and value>=boot.get(node,0)+300+interval-.1
            trace.append({'run_id':cfg['run_id'],'attacker':node,'message':'DIS' if kind==1 else 'DAO',
                'boot_s':boot.get(node),'scheduled_activation_after_boot_s':300,
                'first_injection_attempt_s':value,'last_injection_attempt_s':last[node].get(kind),'pass':ok})
    note('injection_trace_'+cfg['run_id'],'pass' if all(r['pass'] for r in trace if r['run_id']==cfg['run_id']) else 'fail',
         'Trace records injection attempts after the activation timer, not confirmed packet reception')
if not trace:note('injection_timing_validation','pending','Traced validation simulations not complete')
(OUT/'analysis/injection_timing.json').write_text(json.dumps(trace,indent=2))
scale=[]
for cfg in [p for p in plans if p.get('experiment')=='scale_feasibility']:
    path=OUT/'runs'/cfg['run_id']/'result.json'
    if not path.exists():continue
    r=json.loads(path.read_text());coverage=r['legit_joined']/r['legit_total']
    passed=coverage>=.95 and r['delivery_up']>=.8 and r['pdr_down']>=.9
    scale.append({'run_id':cfg['run_id'],'nodes':cfg['nodes'],'seed':cfg['seed'],
        'native_dis_interval_s':cfg['native_dis_interval_s'],'coverage':coverage,
        'expected_delivery_up':r['delivery_up'],'conditional_pdr_down':r['pdr_down'],'passes_gate':passed})
(OUT/'analysis/scale_gate.json').write_text(json.dumps({'predefined_thresholds':{
    'application_participation':.95,'expected_network_wide_upward_delivery':.8,'conditional_downward_pdr':.9},'pilots':scale,
    'full_scale_matrix_authorized_by_evidence':len(scale)==8 and any(all(r['passes_gate'] for r in scale if r['native_dis_interval_s']==period) for period in (10,60))},indent=2))
note('scale_feasibility','pending' if len(scale)<8 else ('pass' if any(all(r['passes_gate'] for r in scale if r['native_dis_interval_s']==period) for period in (10,60)) else 'not_established'),
     f'{len(scale)}/8 completed; full scale comparisons require every matched pilot for a setting to pass')
(OUT/'analysis/protocol_validation.json').write_text(json.dumps(checks,indent=2))
lines=['# Pre-experiment protocol validation','','| Check | Status | Evidence |','|---|---|---|']
lines += [f"| {r['check']} | {r['status']} | {r['detail']} |" for r in checks]
lines += ['','Attack activation is scheduled 300 seconds after each mote boots. Injection attempts occur later according to the DIS/DAO timer and route availability. Delay analysis uses the scheduled 300-second origin for consistency with the existing campaign; the traced attempts expose that distinction.','',
'Physical-twin agreement, MQTT maintenance delivery, and failed physical-control writes do not apply to this simulator. No physical-plant, fault-diagnosis, federation, or lifelong-forgetting validation is claimed.']
(OUT/'analysis/PROTOCOL_VALIDATION.md').write_text('\n'.join(lines)+'\n')
print(json.dumps(checks,indent=2))
if any(r['status']=='fail' for r in checks):raise SystemExit('Protocol validation failed')
