#!/usr/bin/env python3
"""Plot completed random-layout controls; never substitutes a new topology."""
import json
from pathlib import Path
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'full_paper/generated'

def main():
    original=json.loads((ROOT/'output/experiments/journal_extension/analysis/scale_gate.json').read_text())['pilots']
    transport=json.loads((ROOT/'output/diagnostics/scale_transport_fix/summary.json').read_text())
    routing=json.loads((ROOT/'output/diagnostics/scale_routing_fix/summary.json').read_text())
    groups=[('Original\nDIS 10 s',[r for r in original if r['native_dis_interval_s']==10]),
            ('Transport\ncorrections',[r for r in transport if r['setting']=='both']),
            ('DIS\n60 s',[r for r in routing if r['setting']=='paced']),
            ('Longer\nDAO retries',[r for r in routing if r['setting']=='ack']),
            ('Pacing +\nDAO retries',[r for r in routing if r['setting']=='paced_ack'])]
    plt.rcParams.update({'font.size':8,'pdf.fonttype':42,'axes.spines.top':False,'axes.spines.right':False})
    fig,axes=plt.subplots(1,2,figsize=(7,3))
    for ax,metric,threshold,label in zip(axes,['coverage','delivery_up'],[95,80],['Application participation (%)','Expected upward delivery (%)']):
        for ni,nodes in enumerate([500,1000]):
            means=[];low=[];high=[]
            for _,rows in groups:
                values=[100*(r.get(metric,r.get('expected_delivery_up')) if metric=='delivery_up' else r[metric]) for r in rows if r['nodes']==nodes]
                assert len(values)==2,(nodes,metric,values)
                means.append(np.mean(values));low.append(np.mean(values)-min(values));high.append(max(values)-np.mean(values))
            x=np.arange(len(groups))+(ni-.5)*.35
            ax.bar(x,means,width=.32,yerr=np.array([low,high]),capsize=2,label=f'{nodes} nodes',color=['#32638e','#d57c37'][ni])
        ax.axhline(threshold,color='#a52b2b',linestyle='--',label=f'Gate: {threshold}%')
        ax.set(xticks=np.arange(len(groups)),xticklabels=[g[0] for g in groups],ylabel=label,ylim=(0,105))
    axes[0].legend(fontsize=6,ncol=2,loc='upper left');fig.tight_layout()
    for ext in ['pdf','png']:fig.savefig(OUT/('scale_corrections.'+ext),dpi=220,bbox_inches='tight')
    plt.close(fig)

if __name__=='__main__':main()
