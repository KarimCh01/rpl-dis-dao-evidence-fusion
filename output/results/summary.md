# Results summary

Tables report mean ± standard deviation over 10 seeds per cell. 95% confidence intervals are in summary_by_condition.csv and in the figures.

## Main matrix: 10% malicious (3 of 29 sensor nodes), static

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 99.8 ± 0.0 | 100.0 ± 0.0 | 69.5 ± 5.8 | 7514 ± 1221 | 0.133 ± 0.011 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.7 ± 5.7 | 1729 ± 571 | 0.116 ± 0.013 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 12.6 ± 0.7 |
| DIS flooding | RPL-MRC | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.9 ± 6.1 | 2685 ± 545 | 0.119 ± 0.014 | n/a | n/a | n/a | n/a |
| DIS flooding | DIS-FDM | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.8 ± 6.2 | 1808 ± 564 | 0.116 ± 0.013 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DIS flooding | DIS-FDM + DAO evidence | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.8 ± 6.2 | 1808 ± 564 | 0.116 ± 0.013 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DAO manipulation | RPL (no defense) | 89.4 ± 7.1 | 99.9 ± 0.1 | 71.1 ± 6.1 | 1339 ± 146 | 0.181 ± 0.028 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 89.4 ± 7.1 | 99.9 ± 0.1 | 71.1 ± 6.1 | 1339 ± 146 | 0.181 ± 0.028 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 89.5 ± 6.7 | 99.9 ± 0.1 | 70.7 ± 5.8 | 1376 ± 289 | 0.182 ± 0.027 | n/a | n/a | n/a | n/a |
| DAO manipulation | DIS-FDM | 89.4 ± 7.1 | 99.9 ± 0.1 | 71.1 ± 6.1 | 1340 ± 145 | 0.181 ± 0.027 | 6.7 ± 21.1 | 5.0 ± 9.3 | 7.4 ± 12.8 | 1520.4 |
| DAO manipulation | DIS-FDM + DAO evidence | 98.8 ± 2.1 | 99.9 ± 0.1 | 70.9 ± 6.3 | 1581 ± 618 | 0.137 ± 0.021 | 96.7 ± 10.5 | 5.4 ± 12.6 | 86.6 ± 28.6 | 138.1 ± 338.2 |
| Combined DIS + DAO | RPL (no defense) | 88.6 ± 6.8 | 99.9 ± 0.1 | 71.7 ± 5.0 | 6941 ± 1514 | 0.199 ± 0.024 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 89.5 ± 6.7 | 100.0 ± 0.0 | 69.6 ± 6.8 | 1780 ± 523 | 0.178 ± 0.028 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 12.4 ± 0.2 |
| Combined DIS + DAO | RPL-MRC | 88.7 ± 8.0 | 99.9 ± 0.1 | 71.3 ± 5.8 | 2591 ± 573 | 0.183 ± 0.024 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | DIS-FDM | 88.7 ± 7.5 | 100.0 ± 0.0 | 71.0 ± 6.1 | 1780 ± 469 | 0.182 ± 0.027 | 100.0 ± 0.0 | 5.0 ± 9.3 | 83.3 ± 27.8 | 50.2 ± 0.1 |
| Combined DIS + DAO | DIS-FDM + DAO evidence | 99.3 ± 1.0 | 99.4 ± 0.4 | 70.5 ± 7.7 | 1688 ± 362 | 0.131 ± 0.022 | 100.0 ± 0.0 | 3.5 ± 6.4 | 85.8 ± 23.7 | 32.1 ± 2.8 |

## Main matrix: 10% malicious (3 of 29 sensor nodes), 30% mobile

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 98.9 ± 0.5 | 89.6 ± 5.5 | 66.2 ± 9.6 | 10842 ± 1714 | 0.160 ± 0.020 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 98.9 ± 0.5 | 88.3 ± 6.4 | 65.2 ± 11.3 | 9952 ± 1595 | 0.161 ± 0.017 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 12.0 ± 1.6 |
| DIS flooding | RPL-MRC | 99.1 ± 0.3 | 91.0 ± 3.7 | 65.5 ± 11.0 | 7602 ± 2761 | 0.164 ± 0.026 | n/a | n/a | n/a | n/a |
| DIS flooding | DIS-FDM | 99.0 ± 0.5 | 89.8 ± 5.2 | 65.7 ± 10.7 | 7933 ± 1450 | 0.149 ± 0.019 | 100.0 ± 0.0 | 53.1 ± 14.4 | 18.7 ± 4.3 | 35.4 ± 13.9 |
| DIS flooding | DIS-FDM + DAO evidence | 98.9 ± 0.4 | 90.1 ± 4.6 | 64.5 ± 12.0 | 7191 ± 748 | 0.141 ± 0.018 | 100.0 ± 0.0 | 53.5 ± 14.7 | 18.6 ± 4.3 | 35.4 ± 13.9 |
| DAO manipulation | RPL (no defense) | 93.4 ± 6.5 | 89.9 ± 5.8 | 69.0 ± 12.0 | 9671 ± 1130 | 0.204 ± 0.026 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 93.6 ± 6.6 | 89.6 ± 5.8 | 68.8 ± 12.0 | 9243 ± 1123 | 0.198 ± 0.035 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 92.8 ± 8.2 | 91.3 ± 3.1 | 68.9 ± 11.7 | 6400 ± 2277 | 0.196 ± 0.042 | n/a | n/a | n/a | n/a |
| DAO manipulation | DIS-FDM | 94.1 ± 5.6 | 90.0 ± 6.7 | 69.1 ± 11.4 | 7591 ± 1017 | 0.196 ± 0.036 | 53.3 ± 39.1 | 55.8 ± 19.8 | 8.9 ± 6.1 | 180.5 ± 120.2 |
| DAO manipulation | DIS-FDM + DAO evidence | 99.0 ± 0.4 | 89.3 ± 5.9 | 64.0 ± 13.0 | 6823 ± 629 | 0.144 ± 0.024 | 100.0 ± 0.0 | 54.2 ± 15.0 | 18.4 ± 4.3 | 49.1 ± 57.4 |
| Combined DIS + DAO | RPL (no defense) | 93.1 ± 7.5 | 90.3 ± 5.3 | 70.1 ± 10.5 | 11062 ± 1555 | 0.205 ± 0.036 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 93.4 ± 7.8 | 89.5 ± 5.8 | 73.3 ± 18.4 | 9087 ± 1307 | 0.199 ± 0.041 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.5 ± 2.5 |
| Combined DIS + DAO | RPL-MRC | 94.1 ± 7.1 | 91.0 ± 3.7 | 70.0 ± 11.4 | 6706 ± 2306 | 0.198 ± 0.044 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | DIS-FDM | 93.6 ± 7.3 | 91.6 ± 4.2 | 69.6 ± 10.8 | 8373 ± 1909 | 0.198 ± 0.035 | 100.0 ± 0.0 | 53.1 ± 14.4 | 18.7 ± 4.3 | 36.1 ± 14.2 |
| Combined DIS + DAO | DIS-FDM + DAO evidence | 98.9 ± 0.5 | 88.7 ± 6.9 | 65.9 ± 11.6 | 7018 ± 652 | 0.143 ± 0.021 | 100.0 ± 0.0 | 52.7 ± 14.2 | 18.8 ± 4.2 | 25.7 ± 10.2 |

## Main matrix: 25% malicious (7 of 29 sensor nodes), static

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 99.8 ± 0.1 | 100.0 ± 0.0 | 69.3 ± 7.5 | 11684 ± 1140 | 0.146 ± 0.019 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.4 ± 7.4 | 3466 ± 800 | 0.117 ± 0.018 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.0 ± 0.8 |
| DIS flooding | RPL-MRC | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.4 ± 7.6 | 4822 ± 738 | 0.123 ± 0.021 | n/a | n/a | n/a | n/a |
| DIS flooding | DIS-FDM | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.5 ± 7.7 | 3577 ± 790 | 0.118 ± 0.018 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DIS flooding | DIS-FDM + DAO evidence | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.5 ± 7.7 | 3577 ± 790 | 0.118 ± 0.018 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DAO manipulation | RPL (no defense) | 80.1 ± 14.1 | 99.9 ± 0.2 | 75.1 ± 9.0 | 1901 ± 1102 | 0.294 ± 0.056 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 80.1 ± 14.1 | 99.9 ± 0.2 | 75.1 ± 9.0 | 1901 ± 1102 | 0.294 ± 0.056 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 79.3 ± 14.9 | 99.8 ± 0.2 | 75.7 ± 5.9 | 1998 ± 1826 | 0.300 ± 0.027 | n/a | n/a | n/a | n/a |
| DAO manipulation | DIS-FDM | 81.1 ± 14.0 | 99.9 ± 0.1 | 73.4 ± 6.3 | 1715 ± 638 | 0.271 ± 0.054 | 11.4 ± 25.0 | 9.5 ± 14.1 | 13.8 ± 18.9 | 397.0 ± 23.8 |
| DAO manipulation | DIS-FDM + DAO evidence | 98.4 ± 2.5 | 99.8 ± 0.3 | 71.0 ± 5.4 | 1597 ± 685 | 0.157 ± 0.019 | 95.7 ± 9.6 | 6.8 ± 14.4 | 89.7 ± 21.8 | 219.1 ± 192.2 |
| Combined DIS + DAO | RPL (no defense) | 79.6 ± 12.1 | 99.8 ± 0.2 | 78.1 ± 5.4 | 10151 ± 1231 | 0.322 ± 0.026 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 77.4 ± 16.9 | 99.9 ± 0.1 | 75.3 ± 4.6 | 3654 ± 1635 | 0.298 ± 0.031 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.5 ± 0.9 |
| Combined DIS + DAO | RPL-MRC | 77.8 ± 13.6 | 99.9 ± 0.1 | 76.4 ± 6.7 | 4679 ± 913 | 0.301 ± 0.037 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | DIS-FDM | 77.2 ± 15.5 | 99.8 ± 0.1 | 74.1 ± 4.5 | 3360 ± 880 | 0.284 ± 0.036 | 97.1 ± 9.0 | 8.6 ± 10.8 | 82.6 ± 18.5 | 50.2 ± 0.1 |
| Combined DIS + DAO | DIS-FDM + DAO evidence | 97.4 ± 4.6 | 98.2 ± 2.8 | 70.3 ± 6.9 | 3069 ± 695 | 0.153 ± 0.025 | 97.1 ± 9.0 | 7.7 ± 13.4 | 87.0 ± 21.6 | 33.0 ± 2.5 |

## Main matrix: 25% malicious (7 of 29 sensor nodes), 30% mobile

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 98.8 ± 0.4 | 91.5 ± 3.4 | 79.8 ± 30.1 | 13305 ± 1224 | 0.195 ± 0.041 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.0 ± 0.4 | 91.5 ± 4.0 | 78.6 ± 33.4 | 9142 ± 1017 | 0.180 ± 0.051 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.8 ± 2.6 |
| DIS flooding | RPL-MRC | 98.8 ± 1.0 | 91.4 ± 3.7 | 76.4 ± 28.2 | 7754 ± 1747 | 0.170 ± 0.037 | n/a | n/a | n/a | n/a |
| DIS flooding | DIS-FDM | 99.1 ± 0.4 | 91.9 ± 3.9 | 78.2 ± 29.6 | 8303 ± 964 | 0.173 ± 0.039 | 100.0 ± 0.0 | 47.7 ± 15.6 | 41.7 ± 9.6 | 43.3 ± 6.0 |
| DIS flooding | DIS-FDM + DAO evidence | 98.8 ± 0.8 | 92.5 ± 2.8 | 78.5 ± 31.0 | 8070 ± 915 | 0.167 ± 0.043 | 100.0 ± 0.0 | 48.2 ± 15.2 | 41.3 ± 9.3 | 43.2 ± 5.7 |
| DAO manipulation | RPL (no defense) | 83.4 ± 15.5 | 90.6 ± 6.2 | 84.3 ± 30.3 | 10434 ± 2197 | 0.286 ± 0.057 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 84.5 ± 15.2 | 90.6 ± 6.1 | 83.6 ± 27.9 | 10327 ± 1839 | 0.287 ± 0.053 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 84.0 ± 13.2 | 91.1 ± 5.0 | 72.8 ± 15.1 | 7783 ± 2221 | 0.257 ± 0.053 | n/a | n/a | n/a | n/a |
| DAO manipulation | DIS-FDM | 82.2 ± 17.6 | 92.3 ± 4.1 | 85.8 ± 31.4 | 10726 ± 3214 | 0.288 ± 0.049 | 82.9 ± 17.6 | 72.7 ± 22.5 | 27.3 ± 4.5 | 542.8 ± 523.5 |
| DAO manipulation | DIS-FDM + DAO evidence | 97.6 ± 2.4 | 91.4 ± 3.7 | 75.4 ± 29.5 | 6892 ± 590 | 0.181 ± 0.049 | 94.3 ± 7.4 | 55.9 ± 16.2 | 35.9 ± 6.3 | 49.1 ± 28.9 |
| Combined DIS + DAO | RPL (no defense) | 82.6 ± 16.8 | 93.3 ± 3.2 | 83.9 ± 32.6 | 12512 ± 2403 | 0.294 ± 0.061 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 80.8 ± 15.5 | 89.7 ± 8.2 | 84.5 ± 23.6 | 12932 ± 5448 | 0.303 ± 0.055 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 17.3 ± 5.3 |
| Combined DIS + DAO | RPL-MRC | 82.1 ± 16.3 | 92.2 ± 3.9 | 82.6 ± 23.0 | 8723 ± 2971 | 0.288 ± 0.061 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | DIS-FDM | 80.8 ± 15.8 | 91.5 ± 4.7 | 81.1 ± 26.9 | 10492 ± 4560 | 0.296 ± 0.050 | 100.0 ± 0.0 | 69.5 ± 24.2 | 33.1 ± 8.4 | 43.2 ± 6.0 |
| Combined DIS + DAO | DIS-FDM + DAO evidence | 98.1 ± 1.9 | 89.9 ± 4.4 | 73.7 ± 23.6 | 7301 ± 920 | 0.178 ± 0.044 | 100.0 ± 0.0 | 54.5 ± 16.6 | 38.5 ± 9.9 | 32.9 ± 4.4 |

## Main matrix: 50% malicious (14 of 29 sensor nodes), static

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 99.7 ± 0.1 | 100.0 ± 0.0 | 69.0 ± 6.8 | 15658 ± 611 | 0.147 ± 0.026 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.0 ± 6.8 | 7749 ± 420 | 0.109 ± 0.024 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.3 ± 0.5 |
| DIS flooding | RPL-MRC | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.2 ± 6.9 | 9052 ± 429 | 0.112 ± 0.025 | n/a | n/a | n/a | n/a |
| DIS flooding | DIS-FDM | 99.7 ± 0.0 | 100.0 ± 0.0 | 68.0 ± 7.0 | 7907 ± 444 | 0.111 ± 0.030 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.4 ± 0.5 |
| DIS flooding | DIS-FDM + DAO evidence | 99.7 ± 0.0 | 100.0 ± 0.0 | 68.0 ± 7.0 | 7907 ± 444 | 0.111 ± 0.030 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.4 ± 0.5 |
| DAO manipulation | RPL (no defense) | 67.0 ± 16.2 | 99.2 ± 0.8 | 86.5 ± 16.0 | 4100 ± 5478 | 0.469 ± 0.108 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 66.8 ± 16.0 | 99.1 ± 1.0 | 87.4 ± 16.3 | 4141 ± 5606 | 0.472 ± 0.112 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 68.8 ± 16.7 | 99.3 ± 0.6 | 79.7 ± 12.3 | 3233 ± 2674 | 0.430 ± 0.068 | n/a | n/a | n/a | n/a |
| DAO manipulation | DIS-FDM | 63.6 ± 15.3 | 98.9 ± 1.7 | 87.7 ± 14.8 | 3718 ± 4210 | 0.451 ± 0.082 | 37.9 ± 28.2 | 32.0 ± 23.5 | 50.2 ± 13.3 | 1043.3 ± 601.0 |
| DAO manipulation | DIS-FDM + DAO evidence | 88.3 ± 5.7 | 97.9 ± 1.9 | 84.8 ± 15.6 | 3872 ± 3783 | 0.277 ± 0.042 | 88.6 ± 10.2 | 28.7 ± 34.6 | 79.7 ± 20.1 | 364.0 ± 183.4 |
| Combined DIS + DAO | RPL (no defense) | 67.4 ± 15.0 | 99.4 ± 0.3 | 84.2 ± 14.9 | 11766 ± 2391 | 0.476 ± 0.100 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 64.3 ± 14.4 | 99.1 ± 1.0 | 88.4 ± 18.4 | 10043 ± 7805 | 0.466 ± 0.132 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 16.7 ± 2.9 |
| Combined DIS + DAO | RPL-MRC | 68.4 ± 18.1 | 99.4 ± 0.3 | 88.1 ± 13.7 | 7014 ± 1405 | 0.484 ± 0.079 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | DIS-FDM | 67.5 ± 17.4 | 99.3 ± 0.9 | 81.4 ± 12.1 | 9433 ± 7083 | 0.459 ± 0.099 | 92.9 ± 8.9 | 46.0 ± 27.1 | 67.4 ± 11.5 | 51.6 ± 3.2 |
| Combined DIS + DAO | DIS-FDM + DAO evidence | 88.5 ± 7.6 | 98.1 ± 1.7 | 75.5 ± 11.5 | 6646 ± 3446 | 0.209 ± 0.034 | 92.9 ± 8.9 | 25.3 ± 20.1 | 79.5 ± 14.7 | 41.5 ± 10.8 |

## Main matrix: 50% malicious (14 of 29 sensor nodes), 30% mobile

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 98.8 ± 0.6 | 89.2 ± 9.0 | 65.9 ± 11.8 | 13543 ± 1670 | 0.164 ± 0.021 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.0 ± 0.4 | 89.7 ± 7.2 | 67.3 ± 13.2 | 10562 ± 833 | 0.160 ± 0.031 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 21.6 ± 17.6 |
| DIS flooding | RPL-MRC | 99.0 ± 0.5 | 91.1 ± 3.6 | 66.4 ± 12.1 | 9017 ± 934 | 0.147 ± 0.028 | n/a | n/a | n/a | n/a |
| DIS flooding | DIS-FDM | 99.0 ± 0.4 | 88.2 ± 10.9 | 66.3 ± 12.8 | 9298 ± 1444 | 0.147 ± 0.018 | 100.0 ± 0.0 | 47.3 ± 13.1 | 66.9 ± 6.3 | 70.3 ± 46.7 |
| DIS flooding | DIS-FDM + DAO evidence | 99.1 ± 0.3 | 89.4 ± 6.0 | 65.0 ± 12.3 | 9196 ± 1721 | 0.138 ± 0.021 | 100.0 ± 0.0 | 46.7 ± 13.7 | 67.2 ± 6.6 | 69.6 ± 46.0 |
| DAO manipulation | RPL (no defense) | 71.3 ± 20.9 | 93.4 ± 3.9 | 81.2 ± 21.5 | 10865 ± 5803 | 0.363 ± 0.099 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 72.2 ± 20.6 | 94.6 ± 1.8 | 78.2 ± 16.6 | 8929 ± 2012 | 0.355 ± 0.094 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 72.8 ± 20.7 | 93.6 ± 3.9 | 78.8 ± 16.3 | 9662 ± 5344 | 0.350 ± 0.115 | n/a | n/a | n/a | n/a |
| DAO manipulation | DIS-FDM | 73.0 ± 20.9 | 94.3 ± 3.4 | 78.9 ± 13.9 | 9991 ± 4984 | 0.366 ± 0.089 | 79.3 ± 21.4 | 80.0 ± 18.6 | 47.7 ± 5.6 | 662.9 ± 615.9 |
| DAO manipulation | DIS-FDM + DAO evidence | 89.8 ± 14.8 | 91.8 ± 4.9 | 71.3 ± 15.6 | 6669 ± 813 | 0.201 ± 0.046 | 92.1 ± 7.1 | 60.0 ± 17.8 | 59.6 ± 6.0 | 162.4 ± 90.6 |
| Combined DIS + DAO | RPL (no defense) | 71.8 ± 17.9 | 93.9 ± 3.1 | 76.0 ± 15.3 | 11142 ± 849 | 0.366 ± 0.108 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 74.3 ± 20.4 | 91.0 ± 5.0 | 81.1 ± 14.9 | 9711 ± 2141 | 0.331 ± 0.095 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 24.6 ± 17.7 |
| Combined DIS + DAO | RPL-MRC | 75.5 ± 19.6 | 95.6 ± 1.2 | 77.3 ± 19.3 | 7316 ± 1430 | 0.345 ± 0.104 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | DIS-FDM | 77.6 ± 13.9 | 94.1 ± 3.6 | 72.4 ± 13.0 | 8707 ± 2004 | 0.332 ± 0.095 | 100.0 ± 0.0 | 64.7 ± 22.9 | 60.2 ± 8.4 | 69.0 ± 47.1 |
| Combined DIS + DAO | DIS-FDM + DAO evidence | 93.2 ± 9.0 | 92.1 ± 3.8 | 71.8 ± 19.8 | 7250 ± 1039 | 0.199 ± 0.057 | 100.0 ± 0.0 | 59.3 ± 20.2 | 62.0 ± 7.7 | 58.6 ± 45.8 |

## False positives with no attacker present

| Mobility | Defense | FPR (%) | Legit nodes flagged |
|---|---|---|---|
| static | Secure-RPL | 0.0 ± 0.0 | 0.00 ± 0.00 |
| static | DIS-FDM | 0.0 ± 0.0 | 0.00 ± 0.00 |
| static | DIS-FDM + DAO evidence | 0.0 ± 0.0 | 0.00 ± 0.00 |
| 30% mobile | Secure-RPL | 0.0 ± 0.0 | 0.00 ± 0.00 |
| 30% mobile | DIS-FDM | 43.4 ± 12.5 | 0.70 ± 1.25 |
| 30% mobile | DIS-FDM + DAO evidence | 42.4 ± 12.5 | 0.80 ± 1.32 |

## RQ1: reproduction against the paper's published values (static)

| Experiment | x | Condition | Metric | Paper | Ours |
|---|---|---|---|---|---|
| interval | 3 | RPL | pdr_pct | 97.0 | 99.987 |
| interval | 30 | RPL | pdr_pct | 98.0 | 99.987 |
| interval | 3 | RPL-DIS | pdr_pct | 70.9 | 99.973 |
| interval | 30 | RPL-DIS | pdr_pct | 88.37 | 99.98 |
| interval | 3 | DIS-FDM | pdr_pct | 92.0 | 99.97 |
| interval | 30 | DIS-FDM | pdr_pct | 96.21 | 99.98 |
| interval | 3 | RPL | delay_ms | 120.0 | 69.776 |
| interval | 30 | RPL | delay_ms | 110.0 | 69.776 |
| interval | 3 | RPL-DIS | delay_ms | 362.0 | 69.776 |
| interval | 3 | DIS-FDM | delay_ms | 140.0 | 69.072 |
| interval | 30 | DIS-FDM | delay_ms | 120.0 | 69.536 |
| interval | 3 | RPL | dio | 590.0 | 1245.1 |
| interval | 30 | RPL | dio | 520.0 | 1245.1 |
| interval | 3 | RPL-DIS | dio | 4080.0 | 10450.7 |
| interval | 30 | RPL-DIS | dio | 2971.0 | 6664.8 |
| interval | 3 | RPL-MRC | dio | 692.0 | 3597.4 |
| interval | 30 | RPL-MRC | dio | 630.0 | 2540.7 |
| interval | 3 | DIS-FDM | dio | 673.0 | 2347.8 |
| interval | 30 | DIS-FDM | dio | 596.0 | 6664.8 |
| interval | 3 | RPL | power_mw | 1.9 | 59.976 |
| interval | 30 | RPL | power_mw | 1.5 | 59.976 |
| interval | 3 | RPL-DIS | power_mw | 5.1 | 59.973 |
| interval | 3 | DIS-FDM | power_mw | 2.6 | 59.977 |
| interval | 30 | DIS-FDM | power_mw | 1.36 | 59.975 |
| attackers | 2 | RPL | pdr_pct | 98.0 | 99.987 |
| attackers | 10 | RPL | pdr_pct | 95.0 | 99.987 |
| attackers | 2 | RPL-DIS | pdr_pct | 83.0 | 99.967 |
| attackers | 10 | RPL-DIS | pdr_pct | 67.0 | 99.962 |
| attackers | 2 | DIS-FDM | pdr_pct | 95.61 | 99.984 |
| attackers | 10 | DIS-FDM | pdr_pct | 87.45 | 99.971 |
| attackers | 2 | RPL | delay_ms | 99.0 | 69.776 |
| attackers | 10 | RPL | delay_ms | 107.0 | 69.776 |
| attackers | 10 | RPL-DIS | delay_ms | 304.0 | 69.757 |
| attackers | 2 | DIS-FDM | delay_ms | 132.0 | 69.484 |
| attackers | 10 | DIS-FDM | delay_ms | 173.0 | 68.493 |
| attackers | 2 | RPL | dio | 500.0 | 1245.1 |
| attackers | 10 | RPL | dio | 550.0 | 1245.1 |
| attackers | 10 | RPL-DIS | dio | 4627.0 | 14406.3 |
| attackers | 2 | RPL | power_mw | 1.5 | 59.976 |
| attackers | 10 | RPL | power_mw | 2.3 | 59.976 |
| attackers | 10 | RPL-DIS | power_mw | 6.05 | 59.973 |
| attackers | 2 | RPL-MRC | power_mw | 1.9 | 59.976 |
| attackers | 10 | RPL-MRC | power_mw | 2.7 | 59.977 |
| attackers | 2 | DIS-FDM | power_mw | 1.8 | 59.976 |
| attackers | 10 | DIS-FDM | power_mw | 2.64 | 59.977 |

## RQ2: combined attack vs each single attack, no defense (one-sided Wilcoxon, Holm-adjusted within each comparison and metric)

| Malicious | Mobility | Comparison | Metric | Median diff | p (Holm) | r_rb |
|---|---|---|---|---|---|---|
| 10% | static | Combined vs DIS flooding | pdr_down | -0.09202 | 0.00586 | -1.00 |
| 10% | static | Combined vs DIS flooding | pdr_up | -0.0001167 | 0.32 | -0.53 |
| 10% | static | Combined vs DIS flooding | dio_total | -463 | 1 | -1.00 |
| 10% | static | Combined vs DIS flooding | tx_power_mw | 0.0608 | 0.00586 | 1.00 |
| 10% | static | Combined vs DIS flooding | delay_up_ms | 3.466 | 0.158 | 0.60 |
| 10% | static | Combined vs DAO manipulation | pdr_down | -0.009943 | 0.111 | -0.75 |
| 10% | static | Combined vs DAO manipulation | pdr_up | 2.76e-07 | 1 | 0.09 |
| 10% | static | Combined vs DAO manipulation | dio_total | 6042 | 0.00586 | 1.00 |
| 10% | static | Combined vs DAO manipulation | tx_power_mw | 0.01643 | 0.00586 | 1.00 |
| 10% | static | Combined vs DAO manipulation | delay_up_ms | 1.049 | 0.4 | 0.53 |
| 10% | 30% mobile | Combined vs DIS flooding | pdr_down | -0.01754 | 0.00586 | -1.00 |
| 10% | 30% mobile | Combined vs DIS flooding | pdr_up | 0.00708 | 1 | 0.42 |
| 10% | 30% mobile | Combined vs DIS flooding | dio_total | -182.5 | 1 | 0.05 |
| 10% | 30% mobile | Combined vs DIS flooding | tx_power_mw | 0.04249 | 0.00586 | 1.00 |
| 10% | 30% mobile | Combined vs DIS flooding | delay_up_ms | 3.451 | 0.0488 | 0.82 |
| 10% | 30% mobile | Combined vs DAO manipulation | pdr_down | -0.004024 | 1 | -0.13 |
| 10% | 30% mobile | Combined vs DAO manipulation | pdr_up | 0.00197 | 1 | 0.27 |
| 10% | 30% mobile | Combined vs DAO manipulation | dio_total | 1828 | 0.0469 | 0.71 |
| 10% | 30% mobile | Combined vs DAO manipulation | tx_power_mw | 0.001642 | 1 | -0.09 |
| 10% | 30% mobile | Combined vs DAO manipulation | delay_up_ms | 0.6357 | 1 | 0.24 |
| 25% | static | Combined vs DIS flooding | pdr_down | -0.182 | 0.00586 | -1.00 |
| 25% | static | Combined vs DIS flooding | pdr_up | -0.001016 | 0.00586 | -1.00 |
| 25% | static | Combined vs DIS flooding | dio_total | -1434 | 1 | -1.00 |
| 25% | static | Combined vs DIS flooding | tx_power_mw | 0.1776 | 0.00586 | 1.00 |
| 25% | static | Combined vs DIS flooding | delay_up_ms | 10.14 | 0.0176 | 0.93 |
| 25% | static | Combined vs DAO manipulation | pdr_down | -0.004667 | 1 | -0.13 |
| 25% | static | Combined vs DAO manipulation | pdr_up | -0.0004629 | 0.826 | -0.42 |
| 25% | static | Combined vs DAO manipulation | dio_total | 7951 | 0.00586 | 1.00 |
| 25% | static | Combined vs DAO manipulation | tx_power_mw | 0.03076 | 0.161 | 0.67 |
| 25% | static | Combined vs DAO manipulation | delay_up_ms | 2.573 | 0.252 | 0.64 |
| 25% | 30% mobile | Combined vs DIS flooding | pdr_down | -0.1006 | 0.00586 | -1.00 |
| 25% | 30% mobile | Combined vs DIS flooding | pdr_up | 0.01488 | 1 | 0.71 |
| 25% | 30% mobile | Combined vs DIS flooding | dio_total | -1140 | 1 | -0.45 |
| 25% | 30% mobile | Combined vs DIS flooding | tx_power_mw | 0.1144 | 0.00586 | 0.96 |
| 25% | 30% mobile | Combined vs DIS flooding | delay_up_ms | 7.963 | 0.188 | 0.35 |
| 25% | 30% mobile | Combined vs DAO manipulation | pdr_down | 0.0005215 | 1 | -0.09 |
| 25% | 30% mobile | Combined vs DAO manipulation | pdr_up | 0.006813 | 1 | 0.75 |
| 25% | 30% mobile | Combined vs DAO manipulation | dio_total | 2296 | 0.0205 | 0.85 |
| 25% | 30% mobile | Combined vs DAO manipulation | tx_power_mw | 0.004755 | 0.551 | 0.42 |
| 25% | 30% mobile | Combined vs DAO manipulation | delay_up_ms | -2.38 | 1 | -0.35 |
| 50% | static | Combined vs DIS flooding | pdr_down | -0.3145 | 0.00586 | -1.00 |
| 50% | static | Combined vs DIS flooding | pdr_up | -0.005461 | 0.00586 | -1.00 |
| 50% | static | Combined vs DIS flooding | dio_total | -5150 | 1 | -0.89 |
| 50% | static | Combined vs DIS flooding | tx_power_mw | 0.3139 | 0.00586 | 1.00 |
| 50% | static | Combined vs DIS flooding | delay_up_ms | 20.4 | 0.0488 | 0.82 |
| 50% | static | Combined vs DAO manipulation | pdr_down | -0.02209 | 0.806 | -0.38 |
| 50% | static | Combined vs DAO manipulation | pdr_up | 0.00247 | 1 | 0.42 |
| 50% | static | Combined vs DAO manipulation | dio_total | 8218 | 0.00781 | 0.96 |
| 50% | static | Combined vs DAO manipulation | tx_power_mw | 0.01357 | 0.938 | 0.20 |
| 50% | static | Combined vs DAO manipulation | delay_up_ms | 1.791 | 1 | 0.13 |
| 50% | 30% mobile | Combined vs DIS flooding | pdr_down | -0.2502 | 0.00586 | -1.00 |
| 50% | 30% mobile | Combined vs DIS flooding | pdr_up | 0.02513 | 1 | 0.93 |
| 50% | 30% mobile | Combined vs DIS flooding | dio_total | -2424 | 1 | -0.89 |
| 50% | 30% mobile | Combined vs DIS flooding | tx_power_mw | 0.2117 | 0.00586 | 1.00 |
| 50% | 30% mobile | Combined vs DIS flooding | delay_up_ms | 9.743 | 0.158 | 0.56 |
| 50% | 30% mobile | Combined vs DAO manipulation | pdr_down | 0.008293 | 1 | 0.20 |
| 50% | 30% mobile | Combined vs DAO manipulation | pdr_up | 0.01007 | 1 | 0.27 |
| 50% | 30% mobile | Combined vs DAO manipulation | dio_total | 2382 | 0.138 | 0.42 |
| 50% | 30% mobile | Combined vs DAO manipulation | tx_power_mw | 0.01351 | 1 | 0.02 |
| 50% | 30% mobile | Combined vs DAO manipulation | delay_up_ms | 1.653 | 1 | -0.24 |

## RQ3/RQ4: proposed defense vs each baseline (two-sided Wilcoxon, Holm-adjusted within each baseline, attack and metric, p < 0.05)

| Baseline | Attack | Malicious | Mobility | Metric | Proposed | Baseline | Median diff | p (Holm) | r_rb |
|---|---|---|---|---|---|---|---|---|---|
| DIS-FDM | DAO manipulation | 10% | static | tpr | 0.9667 ± 0.11 | 0.06667 ± 0.21 | 1 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | static | pdr_down | 0.9883 ± 0.021 | 0.8943 ± 0.071 | 0.07326 | 0.0117 | 0.96 |
| DIS-FDM | DAO manipulation | 10% | static | pdr_up | 0.9986 ± 0.0011 | 0.9994 ± 0.00075 | -0.0008195 | 0.0352 | -0.93 |
| DIS-FDM | DAO manipulation | 10% | static | tx_power_mw | 0.1374 ± 0.021 | 0.1813 ± 0.027 | -0.03931 | 0.0117 | -1.00 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | tpr | 1 ± 0 | 0.5333 ± 0.39 | 0.5 | 0.0469 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | precision | 0.1842 ± 0.043 | 0.08926 ± 0.061 | 0.07261 | 0.0312 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | pdr_down | 0.9897 ± 0.004 | 0.9413 ± 0.056 | 0.01138 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | dio_total | 6823 ± 6.3e+02 | 7591 ± 1e+03 | -403 | 0.0352 | -0.93 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | tx_power_mw | 0.1438 ± 0.024 | 0.1957 ± 0.036 | -0.04756 | 0.0117 | -1.00 |
| DIS-FDM | DAO manipulation | 25% | static | tpr | 0.9571 ± 0.096 | 0.1143 ± 0.25 | 1 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 25% | static | pdr_down | 0.9835 ± 0.025 | 0.8107 ± 0.14 | 0.151 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 25% | static | pdr_up | 0.9975 ± 0.0028 | 0.9986 ± 0.0014 | -0.0004485 | 0.0488 | -0.89 |
| DIS-FDM | DAO manipulation | 25% | static | tx_power_mw | 0.1572 ± 0.019 | 0.2708 ± 0.054 | -0.1351 | 0.0117 | -0.96 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | precision | 0.3588 ± 0.063 | 0.2729 ± 0.045 | 0.09103 | 0.0195 | 1.00 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | detect_latency_s | 49.1 ± 29 | 542.8 ± 5.2e+02 | -346.7 | 0.0117 | -1.00 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | pdr_down | 0.9765 ± 0.024 | 0.8224 ± 0.18 | 0.109 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | dio_total | 6892 ± 5.9e+02 | 1.073e+04 ± 3.2e+03 | -4851 | 0.0352 | -0.93 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | tx_power_mw | 0.1813 ± 0.049 | 0.2875 ± 0.049 | -0.1161 | 0.0117 | -1.00 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | delay_up_ms | 75.39 ± 29 | 85.77 ± 31 | -6.743 | 0.0352 | -0.93 |
| DIS-FDM | DAO manipulation | 50% | static | tpr | 0.8857 ± 0.1 | 0.3786 ± 0.28 | 0.6429 | 0.0156 | 1.00 |
| DIS-FDM | DAO manipulation | 50% | static | precision | 0.7971 ± 0.2 | 0.502 ± 0.13 | 0.2855 | 0.041 | 0.85 |
| DIS-FDM | DAO manipulation | 50% | static | detect_latency_s | 364 ± 1.8e+02 | 1043 ± 6e+02 | -712.4 | 0.0117 | -1.00 |
| DIS-FDM | DAO manipulation | 50% | static | pdr_down | 0.8835 ± 0.057 | 0.6356 ± 0.15 | 0.2815 | 0.0117 | 0.93 |
| DIS-FDM | DAO manipulation | 50% | static | tx_power_mw | 0.2772 ± 0.042 | 0.4511 ± 0.082 | -0.2199 | 0.0117 | -0.89 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | precision | 0.5962 ± 0.06 | 0.4772 ± 0.056 | 0.129 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | detect_latency_s | 162.4 ± 91 | 662.9 ± 6.2e+02 | -290 | 0.0234 | -0.93 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | pdr_down | 0.8979 ± 0.15 | 0.7297 ± 0.21 | 0.1383 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2013 ± 0.046 | 0.3663 ± 0.089 | -0.1792 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | static | detect_latency_s | 32.13 ± 2.8 | 50.22 ± 0.13 | -19.73 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | static | pdr_down | 0.9928 ± 0.01 | 0.8873 ± 0.075 | 0.111 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | static | pdr_up | 0.9943 ± 0.0042 | 0.9996 ± 0.00046 | -0.005881 | 0.0391 | -0.89 |
| DIS-FDM | Combined DIS + DAO | 10% | static | tx_power_mw | 0.1315 ± 0.022 | 0.1817 ± 0.027 | -0.04815 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | 30% mobile | detect_latency_s | 25.75 ± 10 | 36.06 ± 14 | -8.656 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | 30% mobile | pdr_down | 0.9888 ± 0.0048 | 0.9361 ± 0.073 | 0.02288 | 0.0117 | 0.96 |
| DIS-FDM | Combined DIS + DAO | 10% | 30% mobile | pdr_up | 0.8869 ± 0.069 | 0.9163 ± 0.042 | -0.009467 | 0.0234 | -0.96 |
| DIS-FDM | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1434 ± 0.021 | 0.1979 ± 0.035 | -0.05091 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | static | detect_latency_s | 33.03 ± 2.5 | 50.24 ± 0.078 | -17.06 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | static | pdr_down | 0.9739 ± 0.046 | 0.7718 ± 0.16 | 0.1785 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | static | pdr_up | 0.9818 ± 0.028 | 0.9985 ± 0.0013 | -0.008916 | 0.0234 | -0.96 |
| DIS-FDM | Combined DIS + DAO | 25% | static | tx_power_mw | 0.1527 ± 0.025 | 0.2837 ± 0.036 | -0.1336 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | 30% mobile | detect_latency_s | 32.86 ± 4.4 | 43.18 ± 6 | -8.533 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | 30% mobile | pdr_down | 0.981 ± 0.019 | 0.8083 ± 0.16 | 0.1357 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | 30% mobile | tx_power_mw | 0.178 ± 0.044 | 0.2955 ± 0.05 | -0.1015 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | static | detect_latency_s | 41.47 ± 11 | 51.59 ± 3.2 | -12.29 | 0.0117 | -0.89 |
| DIS-FDM | Combined DIS + DAO | 50% | static | pdr_down | 0.8852 ± 0.076 | 0.6747 ± 0.17 | 0.1889 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | static | tx_power_mw | 0.2088 ± 0.034 | 0.4594 ± 0.099 | -0.2243 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | 30% mobile | detect_latency_s | 58.6 ± 46 | 69.03 ± 47 | -8.818 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | 30% mobile | pdr_down | 0.9319 ± 0.09 | 0.7756 ± 0.14 | 0.1621 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | 30% mobile | tx_power_mw | 0.1988 ± 0.057 | 0.332 ± 0.095 | -0.1697 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 10% | static | detect_latency_s | 50.22 ± 0.13 | 12.65 ± 0.72 | 37.81 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 10% | static | dio_total | 1808 ± 5.6e+02 | 1729 ± 5.7e+02 | 78 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | fpr | 0.5346 ± 0.15 | 0 ± 0 | 0.5385 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | precision | 0.1862 ± 0.043 | 1 ± 0 | -0.8235 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | detect_latency_s | 35.35 ± 14 | 12.03 ± 1.6 | 25.38 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | dio_total | 7191 ± 7.5e+02 | 9952 ± 1.6e+03 | -2498 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | tx_power_mw | 0.141 ± 0.018 | 0.1609 ± 0.017 | -0.01488 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 25% | static | detect_latency_s | 50.24 ± 0.08 | 13.03 ± 0.78 | 37.47 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 25% | static | dio_total | 3577 ± 7.9e+02 | 3466 ± 8e+02 | 112.5 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 25% | 30% mobile | fpr | 0.4818 ± 0.15 | 0 ± 0 | 0.4773 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 25% | 30% mobile | precision | 0.4132 ± 0.093 | 1 ± 0 | -0.5997 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 25% | 30% mobile | detect_latency_s | 43.16 ± 5.7 | 13.81 ± 2.6 | 29.67 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 25% | 30% mobile | dio_total | 8070 ± 9.2e+02 | 9142 ± 1e+03 | -1154 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 25% | 30% mobile | tx_power_mw | 0.1672 ± 0.043 | 0.1804 ± 0.051 | -0.01217 | 0.0488 | -0.89 |
| Secure-RPL | DIS flooding | 50% | static | detect_latency_s | 50.42 ± 0.51 | 13.25 ± 0.54 | 37.07 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 50% | static | dio_total | 7907 ± 4.4e+02 | 7749 ± 4.2e+02 | 103.5 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 50% | 30% mobile | fpr | 0.4667 ± 0.14 | 0 ± 0 | 0.4667 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 50% | 30% mobile | precision | 0.6725 ± 0.066 | 1 ± 0 | -0.3318 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 50% | 30% mobile | detect_latency_s | 69.6 ± 46 | 21.6 ± 18 | 38.5 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 50% | 30% mobile | dio_total | 9196 ± 1.7e+03 | 1.056e+04 ± 8.3e+02 | -766 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 50% | 30% mobile | tx_power_mw | 0.1376 ± 0.021 | 0.1596 ± 0.031 | -0.01054 | 0.0488 | -0.89 |
| Secure-RPL | DAO manipulation | 10% | static | tpr | 0.9667 ± 0.11 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | static | pdr_down | 0.9883 ± 0.021 | 0.8941 ± 0.071 | 0.07326 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | static | tx_power_mw | 0.1374 ± 0.021 | 0.1813 ± 0.028 | -0.03931 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | tpr | 1 ± 0 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | fpr | 0.5423 ± 0.15 | 0 ± 0 | 0.5385 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | pdr_down | 0.9897 ± 0.004 | 0.9356 ± 0.066 | 0.01575 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | dio_total | 6823 ± 6.3e+02 | 9243 ± 1.1e+03 | -2219 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | tx_power_mw | 0.1438 ± 0.024 | 0.1981 ± 0.035 | -0.04919 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 25% | static | tpr | 0.9571 ± 0.096 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | static | pdr_down | 0.9835 ± 0.025 | 0.8011 ± 0.14 | 0.1724 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | static | tx_power_mw | 0.1572 ± 0.019 | 0.2936 ± 0.056 | -0.1375 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | tpr | 0.9429 ± 0.074 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | fpr | 0.5591 ± 0.16 | 0 ± 0 | 0.5227 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | pdr_down | 0.9765 ± 0.024 | 0.8447 ± 0.15 | 0.07225 | 0.0117 | 0.96 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | dio_total | 6892 ± 5.9e+02 | 1.033e+04 ± 1.8e+03 | -2674 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | tx_power_mw | 0.1813 ± 0.049 | 0.2873 ± 0.053 | -0.1169 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 50% | static | tpr | 0.8857 ± 0.1 | 0 ± 0 | 0.8929 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | static | fpr | 0.2867 ± 0.35 | 0 ± 0 | 0.2 | 0.0469 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | static | pdr_down | 0.8835 ± 0.057 | 0.668 ± 0.16 | 0.1947 | 0.0117 | 0.93 |
| Secure-RPL | DAO manipulation | 50% | static | tx_power_mw | 0.2772 ± 0.042 | 0.4717 ± 0.11 | -0.2273 | 0.0117 | -0.89 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | tpr | 0.9214 ± 0.071 | 0 ± 0 | 0.8929 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | fpr | 0.6 ± 0.18 | 0 ± 0 | 0.5667 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | pdr_down | 0.8979 ± 0.15 | 0.7223 ± 0.21 | 0.1684 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | dio_total | 6669 ± 8.1e+02 | 8929 ± 2e+03 | -1214 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2013 ± 0.046 | 0.3549 ± 0.094 | -0.1561 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | delay_up_ms | 71.35 ± 16 | 78.18 ± 17 | -6.516 | 0.0352 | -0.93 |
| Secure-RPL | Combined DIS + DAO | 10% | static | detect_latency_s | 32.13 ± 2.8 | 12.45 ± 0.21 | 18.05 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | static | pdr_down | 0.9928 ± 0.01 | 0.8951 ± 0.067 | 0.08334 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | static | pdr_up | 0.9943 ± 0.0042 | 0.9997 ± 0.00017 | -0.005764 | 0.0234 | -0.96 |
| Secure-RPL | Combined DIS + DAO | 10% | static | tx_power_mw | 0.1315 ± 0.022 | 0.1782 ± 0.028 | -0.04875 | 0.0117 | -0.96 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | fpr | 0.5269 ± 0.14 | 0 ± 0 | 0.5385 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | precision | 0.1879 ± 0.042 | 1 ± 0 | -0.8235 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | detect_latency_s | 25.75 ± 10 | 13.53 ± 2.5 | 16.63 | 0.0137 | 0.85 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | pdr_down | 0.9888 ± 0.0048 | 0.934 ± 0.078 | 0.01972 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | dio_total | 7018 ± 6.5e+02 | 9087 ± 1.3e+03 | -1838 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1434 ± 0.021 | 0.1992 ± 0.041 | -0.05503 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | static | detect_latency_s | 33.03 ± 2.5 | 13.49 ± 0.89 | 19 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | static | pdr_down | 0.9739 ± 0.046 | 0.774 ± 0.17 | 0.2215 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | static | pdr_up | 0.9818 ± 0.028 | 0.9986 ± 0.0013 | -0.009694 | 0.0234 | -0.96 |
| Secure-RPL | Combined DIS + DAO | 25% | static | tx_power_mw | 0.1527 ± 0.025 | 0.2979 ± 0.031 | -0.1385 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | fpr | 0.5455 ± 0.17 | 0 ± 0 | 0.5909 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | precision | 0.385 ± 0.099 | 1 ± 0 | -0.6491 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | detect_latency_s | 32.86 ± 4.4 | 17.28 ± 5.3 | 16.16 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | pdr_down | 0.981 ± 0.019 | 0.8075 ± 0.15 | 0.1452 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | dio_total | 7301 ± 9.2e+02 | 1.293e+04 ± 5.4e+03 | -3247 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | tx_power_mw | 0.178 ± 0.044 | 0.3035 ± 0.055 | -0.1257 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | fpr | 0.2533 ± 0.2 | 0 ± 0 | 0.2333 | 0.0234 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | precision | 0.7948 ± 0.15 | 1 ± 0 | -0.2183 | 0.0234 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | detect_latency_s | 41.47 ± 11 | 16.66 ± 2.9 | 21.95 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | pdr_down | 0.8852 ± 0.076 | 0.6429 ± 0.14 | 0.259 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | tx_power_mw | 0.2088 ± 0.034 | 0.4659 ± 0.13 | -0.2187 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | fpr | 0.5933 ± 0.2 | 0 ± 0 | 0.5333 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | precision | 0.6205 ± 0.077 | 1 ± 0 | -0.3636 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | detect_latency_s | 58.6 ± 46 | 24.6 ± 18 | 25.23 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | pdr_down | 0.9319 ± 0.09 | 0.7432 ± 0.2 | 0.1436 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | dio_total | 7250 ± 1e+03 | 9711 ± 2.1e+03 | -2344 | 0.0391 | -0.89 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | tx_power_mw | 0.1988 ± 0.057 | 0.331 ± 0.095 | -0.1083 | 0.0117 | -1.00 |
| Secure-RPL | No attack | 0% | 30% mobile | fpr | 0.4241 ± 0.12 | 0 ± 0 | 0.3793 | 0.00391 | 1.00 |
| RPL-MRC | DIS flooding | 10% | static | dio_total | 1808 ± 5.6e+02 | 2685 ± 5.5e+02 | -882 | 0.0117 | -1.00 |
| RPL-MRC | DIS flooding | 10% | static | tx_power_mw | 0.1157 ± 0.013 | 0.1186 ± 0.014 | -0.002464 | 0.0195 | -0.96 |
| RPL-MRC | DIS flooding | 25% | static | dio_total | 3577 ± 7.9e+02 | 4822 ± 7.4e+02 | -1265 | 0.0117 | -1.00 |
| RPL-MRC | DIS flooding | 25% | static | tx_power_mw | 0.1176 ± 0.018 | 0.123 ± 0.021 | -0.003937 | 0.0117 | -1.00 |
| RPL-MRC | DIS flooding | 50% | static | dio_total | 7907 ± 4.4e+02 | 9052 ± 4.3e+02 | -1198 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 10% | static | pdr_down | 0.9883 ± 0.021 | 0.8949 ± 0.067 | 0.07905 | 0.0117 | 1.00 |
| RPL-MRC | DAO manipulation | 10% | static | tx_power_mw | 0.1374 ± 0.021 | 0.182 ± 0.027 | -0.04282 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 10% | 30% mobile | pdr_down | 0.9897 ± 0.004 | 0.9282 ± 0.082 | 0.01944 | 0.0117 | 0.96 |
| RPL-MRC | DAO manipulation | 10% | 30% mobile | tx_power_mw | 0.1438 ± 0.024 | 0.1959 ± 0.042 | -0.04546 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 25% | static | pdr_down | 0.9835 ± 0.025 | 0.7928 ± 0.15 | 0.1953 | 0.0117 | 1.00 |
| RPL-MRC | DAO manipulation | 25% | static | tx_power_mw | 0.1572 ± 0.019 | 0.2999 ± 0.027 | -0.1428 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 25% | 30% mobile | pdr_down | 0.9765 ± 0.024 | 0.8401 ± 0.13 | 0.09669 | 0.0117 | 1.00 |
| RPL-MRC | DAO manipulation | 25% | 30% mobile | tx_power_mw | 0.1813 ± 0.049 | 0.2571 ± 0.053 | -0.08188 | 0.0117 | -0.93 |
| RPL-MRC | DAO manipulation | 50% | static | pdr_down | 0.8835 ± 0.057 | 0.6875 ± 0.17 | 0.1457 | 0.0117 | 0.96 |
| RPL-MRC | DAO manipulation | 50% | static | tx_power_mw | 0.2772 ± 0.042 | 0.4298 ± 0.068 | -0.1335 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 50% | 30% mobile | pdr_down | 0.8979 ± 0.15 | 0.728 ± 0.21 | 0.179 | 0.0117 | 1.00 |
| RPL-MRC | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2013 ± 0.046 | 0.3499 ± 0.11 | -0.1466 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 50% | 30% mobile | delay_up_ms | 71.35 ± 16 | 78.75 ± 16 | -5.218 | 0.0352 | -0.93 |
| RPL-MRC | Combined DIS + DAO | 10% | static | pdr_down | 0.9928 ± 0.01 | 0.8869 ± 0.08 | 0.08593 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 10% | static | pdr_up | 0.9943 ± 0.0042 | 0.9993 ± 0.0008 | -0.005704 | 0.0391 | -0.89 |
| RPL-MRC | Combined DIS + DAO | 10% | static | dio_total | 1688 ± 3.6e+02 | 2591 ± 5.7e+02 | -920 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 10% | static | tx_power_mw | 0.1315 ± 0.022 | 0.1835 ± 0.024 | -0.04769 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 10% | 30% mobile | pdr_down | 0.9888 ± 0.0048 | 0.9406 ± 0.071 | 0.01688 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1434 ± 0.021 | 0.1976 ± 0.044 | -0.04768 | 0.0117 | -0.96 |
| RPL-MRC | Combined DIS + DAO | 10% | 30% mobile | delay_up_ms | 65.93 ± 12 | 69.96 ± 11 | -2.255 | 0.0234 | -0.96 |
| RPL-MRC | Combined DIS + DAO | 25% | static | pdr_down | 0.9739 ± 0.046 | 0.7776 ± 0.14 | 0.2398 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 25% | static | pdr_up | 0.9818 ± 0.028 | 0.999 ± 0.00081 | -0.009624 | 0.0195 | -0.96 |
| RPL-MRC | Combined DIS + DAO | 25% | static | dio_total | 3069 ± 6.9e+02 | 4679 ± 9.1e+02 | -1576 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 25% | static | tx_power_mw | 0.1527 ± 0.025 | 0.3006 ± 0.037 | -0.1454 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 25% | 30% mobile | pdr_down | 0.981 ± 0.019 | 0.8214 ± 0.16 | 0.08499 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 25% | 30% mobile | tx_power_mw | 0.178 ± 0.044 | 0.2884 ± 0.061 | -0.1024 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | static | pdr_down | 0.8852 ± 0.076 | 0.6843 ± 0.18 | 0.171 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | static | tx_power_mw | 0.2088 ± 0.034 | 0.4836 ± 0.079 | -0.2431 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | 30% mobile | pdr_down | 0.9319 ± 0.09 | 0.7547 ± 0.2 | 0.1589 | 0.0117 | 0.93 |
| RPL-MRC | Combined DIS + DAO | 50% | 30% mobile | pdr_up | 0.9215 ± 0.038 | 0.9558 ± 0.012 | -0.02138 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | 30% mobile | tx_power_mw | 0.1988 ± 0.057 | 0.3451 ± 0.1 | -0.1339 | 0.0117 | -1.00 |

## Sensitivity: DIS-FDM evidence window (5 attackers, static, mean ± SD)

| Interval (s) | Condition | DIO msgs | TPR (%) | FPR (%) | Latency (s) |
|---|---|---|---|---|---|
| 3 | RPL (no defense) | 10451 ± 862 | n/a | n/a | n/a |
| 3 | DIS-FDM, 10 s window | 2348 ± 823 | 100.0 ± 0.0 | 0.0 ± 0.0 | 50.2 ± 0.1 |
| 3 | DIS-FDM, 30 s window | 2609 ± 788 | 100.0 ± 0.0 | 0.0 ± 0.0 | 150.2 ± 0.1 |
| 6 | RPL (no defense) | 10478 ± 864 | n/a | n/a | n/a |
| 6 | DIS-FDM, 10 s window | 2622 ± 1111 | 100.0 ± 0.0 | 0.0 ± 0.0 | 52.3 ± 6.3 |
| 6 | DIS-FDM, 30 s window | 2628 ± 795 | 100.0 ± 0.0 | 0.0 ± 0.0 | 150.2 ± 0.1 |
| 10 | RPL (no defense) | 9136 ± 745 | n/a | n/a | n/a |
| 10 | DIS-FDM, 10 s window | 2322 ± 780 | 100.0 ± 0.0 | 0.0 ± 0.0 | 54.5 ± 3.4 |
| 10 | DIS-FDM, 30 s window | 2658 ± 893 | 100.0 ± 0.0 | 0.0 ± 0.0 | 161.1 ± 34.1 |
| 15 | RPL (no defense) | 8549 ± 682 | n/a | n/a | n/a |
| 15 | DIS-FDM, 10 s window | 8549 ± 682 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a |
| 15 | DIS-FDM, 30 s window | 3139 ± 1153 | 98.0 ± 6.3 | 0.0 ± 0.0 | 159.3 ± 26.4 |
| 30 | RPL (no defense) | 6665 ± 511 | n/a | n/a | n/a |
| 30 | DIS-FDM, 10 s window | 6665 ± 511 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a |
| 30 | DIS-FDM, 30 s window | 4147 ± 819 | 88.0 ± 14.0 | 0.0 ± 0.0 | 192.3 ± 41.9 |
