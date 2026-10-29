#!/usr/bin/env python3
"""Capture source-routing and HBH rank evidence when replies first start."""
import diagnose_500_echo as driver

driver.OUT=driver.ROOT/'output/diagnostics/scale500_downward_trace'
driver.audit.OUT=driver.OUT
driver.PREFIX='500downtrace'
driver.SEEDS=(1,)
driver.ECHO_MODES=(1,)
driver.DURATION=7
driver.EXTRA_DEFINITIONS=',APP_RPL_LOG_LEVEL=3'

if __name__=='__main__':
    try:driver.main()
    except Exception as error:
        driver.OUT.mkdir(parents=True,exist_ok=True)
        driver.audit.save('status.json',dict(state='failed',error=str(error)))
        raise
