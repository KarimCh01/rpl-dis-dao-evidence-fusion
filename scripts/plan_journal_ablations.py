#!/usr/bin/env python3
"""Freeze functional ablations and calibration constants without evaluation leakage."""
import json, statistics
from pathlib import Path
from plan import cfg
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'output/experiments/journal_extension'
tr=json.loads((ROOT/'output/calibration/tr.json').read_text())
cal={}
for role in ('root','static','mobile'):
    records=[]
    mobs=(0,3) if role=='root' else ((0,) if role=='static' else (3,))
    for mob in mobs:
        for seed in range(1,11):
            d=json.loads((ROOT/f'output/runs/m0_k0_i3_mob{mob}_d4_s{seed}/result.json').read_text())
            for nid,values in d['_calib'].items():
                if (role=='root') == (int(nid)==1):records.append(values)
    cal[role]={'nodes':len(records),'dtl_ppm':round(statistics.mean(v[0] for v in records)),
               'energy_mean':round(statistics.mean(v[1] for v in records)),
               'energy_sd':round(statistics.mean(v[2] for v in records)),
               # #K reports inc_eps in thousandths, while the compile constant is ppm.
               'inc_ppm':round(statistics.mean(v[5]*1000 for v in records))}
variants={};configs={}
settings={'full':(7,''),'learning_off':(4,''),'no_dao_evidence':(7,',AEF_DAO_FUSION=0'),
          'immediate_dao_evidence':(7,',AEF_DAO_PERSIST_WINDOWS=1'),
          'no_route_repair':(7,',AEF_ROUTE_REPAIR=0'),
          'fixed_calibration':(7,',AEF_FIXED_CALIBRATION=1')}
for label,(defense,extra) in settings.items():
    mapping={}
    for key,role,mobile in [('root',0,0),('cli0',1,0),('cli1',1,1)]:
        name=f'v_jab_{label}_{key}'
        defs=f'ROLE={role},DEFENSE={defense},NODE_MOBILE={mobile},TR_STATIC_MS={tr["tr_static_ms"]},TR_MOBILE_MS={tr["tr_mobile_ms"]}'+extra
        if label=='fixed_calibration':
            row=cal['root' if role==0 else ('mobile' if mobile else 'static')]
            defs+=f',AEF_FIXED_DTL_PPM={row["dtl_ppm"]},AEF_FIXED_ENERGY_MEAN={row["energy_mean"]},AEF_FIXED_ENERGY_SD={row["energy_sd"]},AEF_FIXED_INC_PPM={row["inc_ppm"]}'
        variants[name]=defs;mapping[key]=name
    configs[label]=(defense,mapping)
rows=[]
for mode in (0,3):
    for mobile in (0.0,0.3):
        for seed in range(31,41):
            for label,(defense,mapping) in configs.items():
                r=cfg(mode,7 if mode else 0,3,mobile,defense,seed)
                r['run_id']='jab_'+label+'_'+r['run_id']
                r.update(experiment='ablation',ablation=label,dao_interval=2,
                         variant_overrides=dict(mapping,atk='v_journal_atk_dis3_dao2'))
                rows.append(r)
(OUT/'ablation_variants.json').write_text(json.dumps(variants,indent=2))
(OUT/'ablation_calibration.json').write_text(json.dumps({'calibration_seeds':list(range(1,11)),
    'evaluation_seeds':list(range(31,41)),'source_defense':4,'constants':cal},indent=2))
(OUT/'ablations.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in rows))
print(f'{len(rows)} paired ablation runs; {len(variants)} new variants')
print('Frozen calibration constants:',cal)
