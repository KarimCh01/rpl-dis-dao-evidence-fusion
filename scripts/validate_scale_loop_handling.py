#!/usr/bin/env python3
"""Test standard loop-error drop on the original random scale topology.

All other settings match the completed paced-ACK transport controls. This is
a routing-stack configuration shared by every detector, not an AEF feature.
"""
import json
from pathlib import Path
import fix_scale_transport as experiment

experiment.OUT=experiment.ROOT/'output/diagnostics/scale_loop_handling'
experiment.SETTINGS={'loopdrop':
    'APP_CSMA_NEIGHBOR_QUEUES=16,APP_COMPRESS_EXT_HDR=0,'
    'APP_DAO_RTX_SEC=30,APP_DAO_MAX_RTX=10,RPL_CONF_LOOP_ERROR_DROP=1'}
experiment.PERIODS={'loopdrop':60}
experiment.run_matrix.gen_csc.SCRIPT=experiment.run_matrix.gen_csc.SCRIPT.replace(
    'else if (msg.startsWith("#"))',
    'else if (msg.startsWith("#") || msg.indexOf("dropping") >= 0 || '
    'msg.indexOf("local repair") >= 0 || msg.indexOf("fragment") >= 0)')

if __name__=='__main__':
    try:experiment.main()
    except Exception as error:
        experiment.OUT.mkdir(parents=True,exist_ok=True)
        experiment.write_status('failed',error=str(error));raise
