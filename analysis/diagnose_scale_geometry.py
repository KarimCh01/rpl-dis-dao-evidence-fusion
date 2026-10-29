#!/usr/bin/env python3
"""Compare geometric connectivity with logged route availability in scale pilots."""
import csv,json,math,gzip
from collections import deque
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
folders=list((ROOT/'output/preliminary/scale_checks').glob('*'))
folders+=list((ROOT/'output/experiments/journal_extension/runs').glob('jscale_*'))
rows=[]
for folder in folders:
    if not (folder/'result.json').exists():continue
    m=json.loads((folder/'meta.json').read_text());r=json.loads((folder/'result.json').read_text())
    pts={int(k):v for k,v in m['positions'].items()};ids=sorted(pts)
    graph={i:[] for i in ids}
    for x,i in enumerate(ids):
        for j in ids[x+1:]:
            if math.dist(pts[i],pts[j])<=50:graph[i].append(j);graph[j].append(i)
    hops={1:0};q=deque([1])
    while q:
        i=q.popleft()
        for j in graph[i]:
            if j not in hops:hops[j]=hops[i]+1;q.append(j)
    tx=set();last={};by_min={};first={}
    with gzip.open(folder/'COOJA.testlog.gz','rt') as f:
        for line in f:
            p=line.split()
            if len(p)<4:continue
            try:t=int(p[0])/1e6;node=int(p[1])
            except ValueError:continue
            if p[2]=='#T':tx.add(node);first.setdefault(node,t)
            if p[2]=='#N':last[node]=(t,int(p[3]),int(p[4]),int(p[5]))
    legit=set(range(2,m['nodes']+1))-set(m['attacker_ids'])
    missing=legit-tx
    rows.append({'run_id':m['run_id'],'nodes':m['nodes'],'geometrically_reachable':len(hops),
        'maximum_shortest_hops':max(hops.values()),'mean_degree':sum(map(len,graph.values()))/len(ids),
        'application_participants':len(tx&legit),'legitimate_nodes':len(legit),
        'missing_participant_mean_hops':sum(hops.get(i,0) for i in missing)/len(missing) if missing else 0,
        'participating_mean_hops':sum(hops.get(i,0) for i in tx&legit)/len(tx&legit) if tx&legit else 0,
        'terminal_reachable_nodes':sum(last.get(i,(0,0,0,0))[1] for i in legit) if last else '',
        'delivery_up':r.get('delivery_up'),'pdr_up':r.get('pdr_up'),'pdr_down':r.get('pdr_down'),
        'parent_changes':r.get('parent_switches'),'native_dis_interval_s':m.get('native_dis_interval_s',10)})
out=ROOT/'output/experiments/journal_extension/analysis';out.mkdir(exist_ok=True)
if rows:
 with (out/'scale_geometry.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
 print(json.dumps(rows,indent=2))
