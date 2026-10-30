#!/usr/bin/env python3
"""Test a bounded DIO refresh interval with bidirectional 500-node traffic.

One changed routing parameter: max Trickle doublings 8 -> 4, reducing
the longest DIO interval from 1048.576 s to 65.536 s. This is a candidate
configuration repair, not an AEF-RPL contribution or a validated fix.
"""

import diagnose_500_echo as driver

driver.OUT = driver.ROOT / "output/diagnostics/scale500_route_refresh"
driver.audit.OUT = driver.OUT
driver.PREFIX = "500refresh"
driver.ECHO_MODES = (1,)
driver.EXTRA_DEFINITIONS = ",RPL_CONF_DIO_INTERVAL_DOUBLINGS=4"

if __name__ == "__main__":
    try:
        driver.main()
    except Exception as error:
        driver.OUT.mkdir(parents=True, exist_ok=True)
        driver.audit.save("status.json", dict(state="failed", error=str(error)))
        raise
