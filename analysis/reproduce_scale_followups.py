#!/usr/bin/env python3
"""Rebuild follow-up diagnostic numbers and the paper table from saved logs.

This file neither imports simulation runners nor executes simulations.
"""
import csv
import gzip
import hashlib
import json
from collections import defaultdict
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
BASE=ROOT/'output/diagnostics'
OUT=ROOT/'output/repro_scale_followups'
CAMPAIGNS={'scale_load_isolation':12,'scale500_echo_isolation':4,
           'scale500_downward_trace':1,'scale500_route_refresh':2}


def read(folder):
    reports=defaultdict(dict);sent=set();received=set();echoed=set()
    with gzip.open(folder/'COOJA.testlog.gz','rt') as stream:
        for line in stream:
            p=line.split()
            if len(p)<4:continue
            try:sec=int(p[0])/1e6;node=int(p[1])
            except ValueError:continue
            if p[2]=='#N' and node!=1:reports[int(sec//60)][node]=int(p[3])
            elif p[2]=='#T':sent.add((node,int(p[3])))
            elif p[2]=='#R':received.add((int(p[3]),int(p[4])))
            elif p[2]=='#E':echoed.add((node,int(p[3])))
    good=sent & received
    return dict(application_sent=len(sent),application_received=len(good),
        application_pdr=len(good)/len(sent) if sent else None,
        round_trip_completion=len(good & echoed)/len(sent) if sent else None,
        reachable_by_minute=[dict(minute=m,reports=len(v),reachable=sum(v.values()),
            fraction=sum(v.values())/(json.loads((folder/'meta.json').read_text())['nodes']-1))
            for m,v in sorted(reports.items())])


def main():
    OUT.mkdir(parents=True,exist_ok=True)
    rows=[];hashes={};checks=[];lookup={}
    for campaign,count in CAMPAIGNS.items():
        base=BASE/campaign
        plan=[json.loads(l) for l in (base/'plan.jsonl').read_text().splitlines() if l.strip()]
        if len(plan)!=count:raise SystemExit(f'Unexpected plan count: {campaign}')
        for config in plan:
            rid=config['run_id'];folder=base/'runs'/rid
            fresh=read(folder);saved=json.loads((base/(rid+'.json')).read_text())
            matches=all(saved[k]==v for k,v in fresh.items())
            checks.append(dict(run_id=rid,matches=matches))
            if not matches:raise SystemExit(f'Diagnostic result mismatch: {rid}')
            hashes[str((folder/'COOJA.testlog.gz').relative_to(ROOT))]=hashlib.sha256((folder/'COOJA.testlog.gz').read_bytes()).hexdigest()
            final=fresh['reachable_by_minute'][-1]
            row=dict(campaign=campaign,run_id=rid,nodes=config['nodes'],seed=config['seed'],
                application_sent=fresh['application_sent'],application_received=fresh['application_received'],
                application_pdr=fresh['application_pdr'],round_trip_completion=fresh['round_trip_completion'],
                final_report_minute=final['minute'],final_reachable=final['reachable'],final_reports=final['reports'])
            rows.append(row);lookup[rid]=row
    with (OUT/'per_run.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    table=['\\begin{tabular}{llrr}','\\hline',
           'Configuration & Seed & Upload PDR (\\%) & Reachable\\\\','\\hline']
    for prefix,label in [('echo500_up_only','Uploads only'),('echo500_echo_on','Uploads and replies'),
                         ('500refresh_echo_on','Replies, shorter DIO')]:
        for seed in (1,2):
            r=lookup[f'{prefix}_s{seed}_t15']
            table.append(f'{label} & {seed} & {r["application_pdr"]*100:.2f} & {r["final_reachable"]}/499\\\\')
    table+=['\\hline','\\end{tabular}']
    target=ROOT/'full_paper/generated/scale500_direction_table.tex'
    target.write_text('\n'.join(table)+'\n')
    (OUT/'checks.json').write_text(json.dumps(checks,indent=2))
    (OUT/'raw_log_hashes.json').write_text(json.dumps(hashes,indent=2))
    print(f'MATCH: {len(rows)} follow-up logs; delivery and all minute-level reachability reports.')
    print('Regenerated full_paper/generated/scale500_direction_table.tex directly from logs.')

if __name__=='__main__':main()
