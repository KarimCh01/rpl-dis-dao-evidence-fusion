<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>jab_learning_off_m3_k7_i3_mob3_d4_s31</title>
    <randomseed>31</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_jab_learning_off_root</identifier>
      <description>v_jab_learning_off_root</description>
      <source>/home/user/project/build/variants/v_jab_learning_off_root/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_learning_off_root.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="100.00" y="100.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>1</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_jab_learning_off_cli1</identifier>
      <description>v_jab_learning_off_cli1</description>
      <source>/home/user/project/build/variants/v_jab_learning_off_cli1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_learning_off_cli1.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="29.73" y="24.51" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="186.40" y="94.87" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="198.79" y="130.85" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="143.82" y="55.60" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="54.30" y="157.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="70.12" y="165.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_jab_learning_off_cli0</identifier>
      <description>v_jab_learning_off_cli0</description>
      <source>/home/user/project/build/variants/v_jab_learning_off_cli0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_learning_off_cli0.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="61.80" y="147.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="2.21" y="96.66" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="9.79" y="83.73" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="80.78" y="136.73" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="53.51" y="39.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="109.63" y="161.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="150.90" y="109.56" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="39.72" y="43.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="4.20" y="88.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="38.18" y="80.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="186.19" y="25.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="131.25" y="42.85" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="12.46" y="147.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="134.33" y="78.83" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="187.50" y="80.78" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="106.55" y="116.55" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_journal_atk_dis3_dao2</identifier>
      <description>v_journal_atk_dis3_dao2</description>
      <source>/home/user/project/build/variants/v_journal_atk_dis3_dao2/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_journal_atk_dis3_dao2.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="24.19" y="83.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="126.88" y="73.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="134.94" y="178.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="104.49" y="110.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="162.45" y="46.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="73.89" y="80.66" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="90.08" y="26.78" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"2":[[0.0,80.26,29.73,24.51,37.51,141.8],[80.26,84.66,37.51,141.8,37.51,141.8],[84.66,178.24,37.51,141.8,116.91,17.1],[178.24,182.07,116.91,17.1,116.91,17.1],[182.07,218.4,116.91,17.1,180.84,49.32],[218.4,225.62,180.84,49.32,180.84,49.32],[225.62,334.15,180.84,49.32,17.86,2.77],[334.15,340.51,17.86,2.77,17.86,2.77],[340.51,610.57,17.86,2.77,166.47,172.57],[610.57,610.78,166.47,172.57,166.47,172.57],[610.78,644.56,166.47,172.57,107.55,175.72],[644.56,645.03,107.55,175.72,107.55,175.72],[645.03,669.32,107.55,175.72,92.56,167.44],[669.32,671.89,92.56,167.44,92.56,167.44],[671.89,741.26,92.56,167.44,142.61,40.57],[741.26,749.31,142.61,40.57,142.61,40.57],[749.31,831.96,142.61,40.57,164.36,0.21],[831.96,833.74,164.36,0.21,164.36,0.21],[833.74,864.87,164.36,0.21,167.21,57.8],[864.87,870.87,167.21,57.8,167.21,57.8],[870.87,948.62,167.21,57.8,107.38,136.56],[948.62,952.69,107.38,136.56,107.38,136.56],[952.69,983.58,107.38,136.56,83.8,113.74],[983.58,987.56,83.8,113.74,83.8,113.74],[987.56,1066.16,83.8,113.74,191.52,2.3],[1066.16,1073.52,191.52,2.3,191.52,2.3],[1073.52,1218.88,191.52,2.3,27.95,187.09],[1218.88,1225.62,27.95,187.09,27.95,187.09],[1225.62,1364.73,27.95,187.09,186.17,159.42],[1364.73,1367.44,186.17,159.42,186.17,159.42],[1367.44,1444.56,186.17,159.42,92.84,182.14],[1444.56,1448.86,92.84,182.14,92.84,182.14],[1448.86,1491.84,92.84,182.14,51.31,156.37],[1491.84,1492.59,51.31,156.37,51.31,156.37],[1492.59,1550.0,51.31,156.37,132.36,186.61],[1550.0,1556.31,132.36,186.61,132.36,186.61],[1556.31,1573.62,132.36,186.61,118.32,179.78],[1573.62,1575.62,118.32,179.78,118.32,179.78],[1575.62,1764.34,118.32,179.78,127.47,30.38],[1764.34,1768.07,127.47,30.38,127.47,30.38],[1768.07,1804.35,127.47,30.38,158.7,55.1],[1804.35,1810.18,158.7,55.1,158.7,55.1],[1810.18,1854.51,158.7,55.1,130.14,132.57],[1854.51,1855.29,130.14,132.57,130.14,132.57],[1855.29,1922.0,130.14,132.57,28.51,160.53],[1922.0,1926.19,28.51,160.53,28.51,160.53],[1926.19,1995.49,28.51,160.53,147.62,105.21],[1995.49,2002.53,147.62,105.21,147.62,105.21],[2002.53,2049.11,147.62,105.21,190.75,136.21],[2049.11,2053.83,190.75,136.21,190.75,136.21],[2053.83,2169.23,190.75,136.21,88.86,35.88],[2169.23,2170.31,88.86,35.88,88.86,35.88],[2170.31,2224.67,88.86,35.88,147.26,55.71],[2224.67,2229.13,147.26,55.71,147.26,55.71],[2229.13,2252.14,147.26,55.71,184.24,82.84],[2252.14,2258.48,184.24,82.84,184.24,82.84],[2258.48,2320.08,184.24,82.84,158.51,192.28],[2320.08,2328.91,158.51,192.28,158.51,192.28],[2328.91,2388.73,158.51,192.28,106.57,108.12],[2388.73,2397.96,106.57,108.12,106.57,108.12],[2397.96,2466.15,106.57,108.12,185.81,154.47],[2466.15,2474.11,185.81,154.47,185.81,154.47],[2474.11,2598.32,185.81,154.47,81.97,60.88],[2598.32,2598.72,81.97,60.88,81.97,60.88],[2598.72,2706.39,81.97,60.88,99.69,192.74],[2706.39,2712.5,99.69,192.74,99.69,192.74],[2712.5,2737.52,99.69,192.74,55.37,190.23],[2737.52,2742.85,55.37,190.23,55.37,190.23],[2742.85,2815.81,55.37,190.23,19.81,121.12],[2815.81,2816.07,19.81,121.12,19.81,121.12],[2816.07,2854.06,19.81,121.12,60.9,130.24],[2854.06,2861.91,60.9,130.24,60.9,130.24],[2861.91,2955.47,60.9,130.24,194.96,51.19],[2955.47,2963.45,194.96,51.19,194.96,51.19],[2963.45,3117.59,194.96,51.19,106.76,101.54],[3117.59,3123.92,106.76,101.54,106.76,101.54],[3123.92,3190.66,106.76,101.54,197.47,12.54],[3190.66,3191.53,197.47,12.54,197.47,12.54],[3191.53,3263.03,197.47,12.54,149.49,81.15],[3263.03,3272.93,149.49,81.15,149.49,81.15],[3272.93,3389.29,149.49,81.15,37.23,51.13],[3389.29,3392.91,37.23,51.13,37.23,51.13],[3392.91,3545.69,37.23,51.13,85.25,120.08],[3545.69,3549.53,85.25,120.08,85.25,120.08],[3549.53,3589.62,85.25,120.08,158.63,119.03],[3589.62,3599.03,158.63,119.03,158.63,119.03],[3599.03,3626.79,158.63,119.03,193.95,152.43],[3626.79,3629.65,193.95,152.43,193.95,152.43]],"3":[[0.0,19.54,186.4,94.87,188.12,75.84],[19.54,29.54,188.12,75.84,188.12,75.84],[29.54,173.96,188.12,75.84,130.27,166.38],[173.96,177.67,130.27,166.38,130.27,166.38],[177.67,262.27,130.27,166.38,109.41,107.22],[262.27,270.88,109.41,107.22,109.41,107.22],[270.88,361.25,109.41,107.22,178.97,196.78],[361.25,368.75,178.97,196.78,178.97,196.78],[368.75,559.71,178.97,196.78,100.89,134.8],[559.71,565.91,100.89,134.8,100.89,134.8],[565.91,648.79,100.89,134.8,169.78,85.06],[648.79,654.14,169.78,85.06,169.78,85.06],[654.14,708.17,169.78,85.06,72.71,40.81],[708.17,712.76,72.71,40.81,72.71,40.81],[712.76,808.25,72.71,40.81,17.94,174.23],[808.25,811.98,17.94,174.23,17.94,174.23],[811.98,854.82,17.94,174.23,47.05,102.16],[854.82,859.67,47.05,102.16,47.05,102.16],[859.67,898.66,47.05,102.16,26.45,72.05],[898.66,899.79,26.45,72.05,26.45,72.05],[899.79,958.6,26.45,72.05,53.37,88.59],[958.6,964.45,53.37,88.59,53.37,88.59],[964.45,1068.99,53.37,88.59,169.9,16.78],[1068.99,1078.3,169.9,16.78,169.9,16.78],[1078.3,1416.48,169.9,16.78,117.44,197.5],[1416.48,1417.79,117.44,197.5,117.44,197.5],[1417.79,1617.26,117.44,197.5,110.6,15.91],[1617.26,1620.71,110.6,15.91,110.6,15.91],[1620.71,1645.03,110.6,15.91,155.47,22.73],[1645.03,1652.11,155.47,22.73,155.47,22.73],[1652.11,1666.69,155.47,22.73,160.54,40.13],[1666.69,1674.03,160.54,40.13,160.54,40.13],[1674.03,1723.31,160.54,40.13,100.96,88.75],[1723.31,1728.82,100.96,88.75,100.96,88.75],[1728.82,1877.23,100.96,88.75,143.54,195.45],[1877.23,1877.78,143.54,195.45,143.54,195.45],[1877.78,2105.86,143.54,195.45,90.37,28.73],[2105.86,2106.43,90.37,28.73,90.37,28.73],[2106.43,2119.85,90.37,28.73,115.55,25.43],[2119.85,2125.17,115.55,25.43,115.55,25.43],[2125.17,2132.89,115.55,25.43,101.45,31.15],[2132.89,2134.66,101.45,31.15,101.45,31.15],[2134.66,2143.86,101.45,31.15,96.5,47.68],[2143.86,2148.47,96.5,47.68,96.5,47.68],[2148.47,2190.4,96.5,47.68,41.83,25.66],[2190.4,2197.46,41.83,25.66,41.83,25.66],[2197.46,2232.22,41.83,25.66,2.36,5.22],[2232.22,2239.29,2.36,5.22,2.36,5.22],[2239.29,2396.04,2.36,5.22,148.54,106.49],[2396.04,2396.13,148.54,106.49,148.54,106.49],[2396.13,2435.01,148.54,106.49,183.36,106.48],[2435.01,2442.65,183.36,106.48,183.36,106.48],[2442.65,2544.87,183.36,106.48,2.76,122.63],[2544.87,2549.13,2.76,122.63,2.76,122.63],[2549.13,2772.39,2.76,122.63,127.06,183.13],[2772.39,2779.93,127.06,183.13,127.06,183.13],[2779.93,2882.06,127.06,183.13,164.59,34.53],[2882.06,2885.67,164.59,34.53,164.59,34.53],[2885.67,3039.38,164.59,34.53,21.15,183.77],[3039.38,3041.01,21.15,183.77,21.15,183.77],[3041.01,3125.34,21.15,183.77,14.28,46.67],[3125.34,3125.92,14.28,46.67,14.28,46.67],[3125.92,3217.45,14.28,46.67,123.32,111.26],[3217.45,3224.08,123.32,111.26,123.32,111.26],[3224.08,3282.44,123.32,111.26,15.46,69.98],[3282.44,3286.03,15.46,69.98,15.46,69.98],[3286.03,3363.05,15.46,69.98,29.78,130.9],[3363.05,3371.44,29.78,130.9,29.78,130.9],[3371.44,3473.3,29.78,130.9,91.39,116.8],[3473.3,3483.19,91.39,116.8,91.39,116.8],[3483.19,3621.17,91.39,116.8,111.49,34.54],[3621.17,3629.46,111.49,34.54,111.49,34.54]],"9":[[0.0,86.9,126.88,73.44,58.57,110.76],[86.9,96.36,58.57,110.76,58.57,110.76],[96.36,157.46,58.57,110.76,134.31,17.88],[157.46,166.8,134.31,17.88,134.31,17.88],[166.8,266.06,134.31,17.88,72.84,85.96],[266.06,266.06,72.84,85.96,72.84,85.96],[266.06,308.52,72.84,85.96,48.56,14.44],[308.52,314.6,48.56,14.44,48.56,14.44],[314.6,402.4,48.56,14.44,109.54,150.1],[402.4,406.96,109.54,150.1,109.54,150.1],[406.96,511.13,109.54,150.1,168.14,14.38],[511.13,512.1,168.14,14.38,168.14,14.38],[512.1,618.27,168.14,14.38,64.12,150.95],[618.27,624.27,64.12,150.95,64.12,150.95],[624.27,677.13,64.12,150.95,161.5,137.49],[677.13,686.02,161.5,137.49,161.5,137.49],[686.02,787.23,161.5,137.49,137.55,1.22],[787.23,790.67,137.55,1.22,137.55,1.22],[790.67,822.81,137.55,1.22,93.16,9.85],[822.81,829.37,93.16,9.85,93.16,9.85],[829.37,934.57,93.16,9.85,30.02,135.72],[934.57,940.72,30.02,135.72,30.02,135.72],[940.72,969.45,30.02,135.72,80.08,161.09],[969.45,969.57,80.08,161.09,80.08,161.09],[969.57,997.36,80.08,161.09,58.31,119.88],[997.36,1005.85,58.31,119.88,58.31,119.88],[1005.85,1026.56,58.31,119.88,58.48,92.09],[1026.56,1028.56,58.48,92.09,58.48,92.09],[1028.56,1046.26,58.48,92.09,41.93,66.87],[1046.26,1055.26,41.93,66.87,41.93,66.87],[1055.26,1098.2,41.93,66.87,87.25,41.09],[1098.2,1103.43,87.25,41.09,87.25,41.09],[1103.43,1148.03,87.25,41.09,150.43,5.55],[1148.03,1155.38,150.43,5.55,150.43,5.55],[1155.38,1278.24,150.43,5.55,74.51,74.63],[1278.24,1283.22,74.51,74.63,74.51,74.63],[1283.22,1416.68,74.51,74.63,199.62,111.27],[1416.68,1426.12,199.62,111.27,199.62,111.27],[1426.12,1515.12,199.62,111.27,47.91,158.69],[1515.12,1518.15,47.91,158.69,47.91,158.69],[1518.15,1747.31,47.91,158.69,120.21,21.43],[1747.31,1755.21,120.21,21.43,120.21,21.43],[1755.21,1849.19,120.21,21.43,14.0,105.99],[1849.19,1854.02,14.0,105.99,14.0,105.99],[1854.02,1912.77,14.0,105.99,94.41,48.14],[1912.77,1916.5,94.41,48.14,94.41,48.14],[1916.5,2003.45,94.41,48.14,3.77,142.36],[2003.45,2011.13,3.77,142.36,3.77,142.36],[2011.13,2053.26,3.77,142.36,71.36,173.43],[2053.26,2060.64,71.36,173.43,71.36,173.43],[2060.64,2145.0,71.36,173.43,8.35,138.82],[2145.0,2149.11,8.35,138.82,8.35,138.82],[2149.11,2207.3,8.35,138.82,99.02,67.56],[2207.3,2216.85,99.02,67.56,99.02,67.56],[2216.85,2235.8,99.02,67.56,70.42,88.08],[2235.8,2239.73,70.42,88.08,70.42,88.08],[2239.73,2276.61,70.42,88.08,130.44,85.7],[2276.61,2284.57,130.44,85.7,130.44,85.7],[2284.57,2443.56,130.44,85.7,0.42,86.39],[2443.56,2450.12,0.42,86.39,0.42,86.39],[2450.12,2576.87,0.42,86.39,129.4,65.23],[2576.87,2582.55,129.4,65.23,129.4,65.23],[2582.55,2686.37,129.4,65.23,87.49,180.64],[2686.37,2690.03,87.49,180.64,87.49,180.64],[2690.03,2750.12,87.49,180.64,117.54,114.1],[2750.12,2753.24,117.54,114.1,117.54,114.1],[2753.24,2833.28,117.54,114.1,184.58,25.9],[2833.28,2842.07,184.58,25.9,184.58,25.9],[2842.07,2898.14,184.58,25.9,115.08,25.4],[2898.14,2901.22,115.08,25.4,115.08,25.4],[2901.22,2941.96,115.08,25.4,173.06,26.07],[2941.96,2944.31,173.06,26.07,173.06,26.07],[2944.31,3126.33,173.06,26.07,119.84,132.13],[3126.33,3129.82,119.84,132.13,119.84,132.13],[3129.82,3180.06,119.84,132.13,43.36,133.42],[3180.06,3182.21,43.36,133.42,43.36,133.42],[3182.21,3387.5,43.36,133.42,173.15,18.79],[3387.5,3396.57,173.15,18.79,173.15,18.79],[3396.57,3511.71,173.15,18.79,5.44,122.63],[3511.71,3519.52,5.44,122.63,5.44,122.63],[3519.52,3651.08,5.44,122.63,183.02,141.04],[3651.08,3658.13,183.02,141.04,183.02,141.04]],"12":[[0.0,137.73,134.94,178.06,9.68,31.84],[137.73,143.83,9.68,31.84,9.68,31.84],[143.83,199.26,9.68,31.84,30.71,130.73],[199.26,208.13,30.71,130.73,30.71,130.73],[208.13,263.96,30.71,130.73,45.07,177.22],[263.96,267.51,45.07,177.22,45.07,177.22],[267.51,395.74,45.07,177.22,35.67,105.75],[395.74,399.49,35.67,105.75,35.67,105.75],[399.49,641.07,35.67,105.75,166.06,71.57],[641.07,644.52,166.06,71.57,166.06,71.57],[644.52,683.74,166.06,71.57,180.13,23.15],[683.74,686.37,180.13,23.15,180.13,23.15],[686.37,747.54,180.13,23.15,153.02,97.28],[747.54,753.21,153.02,97.28,153.02,97.28],[753.21,799.59,153.02,97.28,108.73,162.83],[799.59,802.9,108.73,162.83,108.73,162.83],[802.9,828.6,108.73,162.83,82.26,181.07],[828.6,833.41,82.26,181.07,82.26,181.07],[833.41,892.0,82.26,181.07,108.92,97.91],[892.0,897.9,108.92,97.91,108.92,97.91],[897.9,902.04,108.92,97.91,109.21,95.36],[902.04,909.32,109.21,95.36,109.21,95.36],[909.32,957.31,109.21,95.36,122.67,165.21],[957.31,962.65,122.67,165.21,122.67,165.21],[962.65,974.04,122.67,165.21,119.51,146.11],[974.04,974.45,119.51,146.11,119.51,146.11],[974.45,1099.44,119.51,146.11,11.68,83.75],[1099.44,1106.01,11.68,83.75,11.68,83.75],[1106.01,1294.11,11.68,83.75,157.98,19.73],[1294.11,1303.72,157.98,19.73,157.98,19.73],[1303.72,1412.49,157.98,19.73,58.53,72.92],[1412.49,1414.25,58.53,72.92,58.53,72.92],[1414.25,1483.6,58.53,72.92,157.63,154.07],[1483.6,1492.28,157.63,154.07,157.63,154.07],[1492.28,1635.96,157.63,154.07,61.99,125.71],[1635.96,1642.08,61.99,125.71,61.99,125.71],[1642.08,1808.47,61.99,125.71,190.14,66.31],[1808.47,1809.25,190.14,66.31,190.14,66.31],[1809.25,2050.4,190.14,66.31,29.37,45.05],[2050.4,2058.08,29.37,45.05,29.37,45.05],[2058.08,2106.88,29.37,45.05,102.48,75.41],[2106.88,2108.07,102.48,75.41,102.48,75.41],[2108.07,2148.37,102.48,75.41,106.48,136.48],[2148.37,2157.24,106.48,136.48,106.48,136.48],[2157.24,2318.17,106.48,136.48,196.39,34.64],[2318.17,2321.82,196.39,34.64,196.39,34.64],[2321.82,2400.62,196.39,34.64,90.8,57.27],[2400.62,2408.24,90.8,57.27,90.8,57.27],[2408.24,2486.44,90.8,57.27,94.27,170.77],[2486.44,2487.86,94.27,170.77,94.27,170.77],[2487.86,2585.54,94.27,170.77,143.92,40.53],[2585.54,2588.45,143.92,40.53,143.92,40.53],[2588.45,2703.25,143.92,40.53,33.5,129.74],[2703.25,2709.9,33.5,129.74,33.5,129.74],[2709.9,2809.12,33.5,129.74,126.69,111.6],[2809.12,2809.87,126.69,111.6,126.69,111.6],[2809.87,2992.45,126.69,111.6,165.29,13.56],[2992.45,3000.67,165.29,13.56,165.29,13.56],[3000.67,3303.03,165.29,13.56,104.2,192.18],[3303.03,3312.63,104.2,192.18,104.2,192.18],[3312.63,3397.15,104.2,192.18,75.8,33.7],[3397.15,3405.48,75.8,33.7,75.8,33.7],[3405.48,3721.97,75.8,33.7,174.82,157.18],[3721.97,3723.12,174.82,157.18,174.82,157.18]],"17":[[0.0,52.86,198.79,130.85,162.33,57.01],[52.86,53.42,162.33,57.01,162.33,57.01],[53.42,136.35,162.33,57.01,4.05,103.74],[136.35,136.77,4.05,103.74,4.05,103.74],[136.77,251.08,4.05,103.74,81.61,142.24],[251.08,253.67,81.61,142.24,81.61,142.24],[253.67,272.31,81.61,142.24,62.45,162.78],[272.31,274.42,62.45,162.78,62.45,162.78],[274.42,286.82,62.45,162.78,61.45,181.15],[286.82,293.98,61.45,181.15,61.45,181.15],[293.98,313.86,61.45,181.15,60.77,145.88],[313.86,322.84,60.77,145.88,60.77,145.88],[322.84,337.05,60.77,145.88,78.26,168.12],[337.05,338.88,78.26,168.12,78.26,168.12],[338.88,515.43,78.26,168.12,9.5,11.1],[515.43,518.04,9.5,11.1,9.5,11.1],[518.04,558.83,9.5,11.1,5.64,84.8],[558.83,559.31,5.64,84.8,5.64,84.8],[559.31,667.15,5.64,84.8,147.01,163.46],[667.15,673.14,147.01,163.46,147.01,163.46],[673.14,821.43,147.01,163.46,101.27,11.62],[821.43,823.8,101.27,11.62,101.27,11.62],[823.8,878.29,101.27,11.62,54.27,8.11],[878.29,884.38,54.27,8.11,54.27,8.11],[884.38,985.67,54.27,8.11,189.27,149.68],[985.67,989.82,189.27,149.68,189.27,149.68],[989.82,1408.12,189.27,149.68,3.6,41.27],[1408.12,1411.63,3.6,41.27,3.6,41.27],[1411.63,1618.72,3.6,41.27,188.94,65.81],[1618.72,1625.24,188.94,65.81,188.94,65.81],[1625.24,1785.0,188.94,65.81,197.56,192.17],[1785.0,1785.08,197.56,192.17,197.56,192.17],[1785.08,1868.12,197.56,192.17,43.32,139.05],[1868.12,1874.97,43.32,139.05,43.32,139.05],[1874.97,1989.63,43.32,139.05,199.79,165.7],[1989.63,1994.26,199.79,165.7,199.79,165.7],[1994.26,2058.68,199.79,165.7,136.34,64.71],[2058.68,2065.95,136.34,64.71,136.34,64.71],[2065.95,2114.27,136.34,64.71,147.51,20.23],[2114.27,2123.01,147.51,20.23,147.51,20.23],[2123.01,2225.54,147.51,20.23,117.72,165.94],[2225.54,2232.78,117.72,165.94,117.72,165.94],[2232.78,2311.78,117.72,165.94,164.98,23.63],[2311.78,2320.04,164.98,23.63,164.98,23.63],[2320.04,2440.09,164.98,23.63,46.56,157.7],[2440.09,2447.84,46.56,157.7,46.56,157.7],[2447.84,2472.11,46.56,157.7,68.48,141.7],[2472.11,2479.11,68.48,141.7,68.48,141.7],[2479.11,2533.38,68.48,141.7,142.24,129.48],[2533.38,2537.62,142.24,129.48,142.24,129.48],[2537.62,2661.28,142.24,129.48,79.29,70.91],[2661.28,2665.21,79.29,70.91,79.29,70.91],[2665.21,2754.0,79.29,70.91,41.97,182.0],[2754.0,2760.13,41.97,182.0,41.97,182.0],[2760.13,2782.47,41.97,182.0,64.88,177.44],[2782.47,2792.2,64.88,177.44,64.88,177.44],[2792.2,2968.74,64.88,177.44,146.29,113.66],[2968.74,2969.61,146.29,113.66,146.29,113.66],[2969.61,3053.02,146.29,113.66,53.64,77.45],[3053.02,3056.84,53.64,77.45,53.64,77.45],[3056.84,3126.17,53.64,77.45,8.35,74.09],[3126.17,3135.49,8.35,74.09,8.35,74.09],[3135.49,3257.73,8.35,74.09,193.68,76.24],[3257.73,3259.85,193.68,76.24,193.68,76.24],[3259.85,3313.24,193.68,76.24,102.97,45.59],[3313.24,3313.26,102.97,45.59,102.97,45.59],[3313.26,3564.32,102.97,45.59,180.42,171.07],[3564.32,3571.06,180.42,171.07,180.42,171.07],[3571.06,3716.01,180.42,171.07,60.14,3.76],[3716.01,3719.75,60.14,3.76,60.14,3.76]],"19":[[0.0,85.0,162.45,46.08,129.46,147.97],[85.0,92.38,129.46,147.97,129.46,147.97],[92.38,186.67,129.46,147.97,185.99,27.16],[186.67,187.92,185.99,27.16,185.99,27.16],[187.92,276.6,185.99,27.16,122.08,20.69],[276.6,286.14,122.08,20.69,122.08,20.69],[286.14,371.25,122.08,20.69,187.75,172.04],[371.25,374.31,187.75,172.04,187.75,172.04],[374.31,588.13,187.75,172.04,78.65,128.87],[588.13,596.31,78.65,128.87,78.65,128.87],[596.31,658.6,78.65,128.87,197.82,148.17],[658.6,659.74,197.82,148.17,197.82,148.17],[659.74,755.09,197.82,148.17,125.48,9.1],[755.09,764.1,125.48,9.1,125.48,9.1],[764.1,917.02,125.48,9.1,77.11,178.18],[917.02,918.4,77.11,178.18,77.11,178.18],[918.4,1014.46,77.11,178.18,17.59,101.65],[1014.46,1021.42,17.59,101.65,17.59,101.65],[1021.42,1080.65,17.59,101.65,80.34,31.45],[1080.65,1082.65,80.34,31.45,80.34,31.45],[1082.65,1370.2,80.34,31.45,37.93,173.63],[1370.2,1370.8,37.93,173.63,37.93,173.63],[1370.8,1378.92,37.93,173.63,25.44,183.91],[1378.92,1387.03,25.44,183.91,25.44,183.91],[1387.03,1548.66,25.44,183.91,196.23,10.53],[1548.66,1552.8,196.23,10.53,196.23,10.53],[1552.8,1863.74,196.23,10.53,106.28,168.87],[1863.74,1868.01,106.28,168.87,106.28,168.87],[1868.01,2025.5,106.28,168.87,153.56,0.2],[2025.5,2027.68,153.56,0.2,153.56,0.2],[2027.68,2056.9,153.56,0.2,137.85,55.7],[2056.9,2059.95,137.85,55.7,137.85,55.7],[2059.95,2121.65,137.85,55.7,28.35,78.66],[2121.65,2127.52,28.35,78.66,28.35,78.66],[2127.52,2232.97,28.35,78.66,195.23,14.75],[2232.97,2238.46,195.23,14.75,195.23,14.75],[2238.46,2409.74,195.23,14.75,172.84,149.9],[2409.74,2413.17,172.84,149.9,172.84,149.9],[2413.17,2530.37,172.84,149.9,50.94,170.08],[2530.37,2533.4,50.94,170.08,50.94,170.08],[2533.4,2959.36,50.94,170.08,193.71,6.45],[2959.36,2966.06,193.71,6.45,193.71,6.45],[2966.06,3069.56,193.71,6.45,44.84,16.52],[3069.56,3077.17,44.84,16.52,44.84,16.52],[3077.17,3208.02,44.84,16.52,15.4,77.35],[3208.02,3215.19,15.4,77.35,15.4,77.35],[3215.19,3339.64,15.4,77.35,127.66,95.55],[3339.64,3343.96,127.66,95.55,127.66,95.55],[3343.96,3483.01,127.66,95.55,24.08,168.82],[3483.01,3492.79,24.08,168.82,24.08,168.82],[3492.79,3561.37,24.08,168.82,96.33,110.57],[3561.37,3566.73,96.33,110.57,96.33,110.57],[3566.73,3718.47,96.33,110.57,61.46,185.19],[3718.47,3722.46,61.46,185.19,61.46,185.19]],"25":[[0.0,196.25,143.82,55.6,109.78,183.54],[196.25,203.65,109.78,183.54,109.78,183.54],[203.65,339.79,109.78,183.54,184.15,89.26],[339.79,347.94,184.15,89.26,184.15,89.26],[347.94,526.34,184.15,89.26,54.86,59.95],[526.34,526.75,54.86,59.95,54.86,59.95],[526.75,569.25,54.86,59.95,137.37,43.94],[569.25,575.81,137.37,43.94,137.37,43.94],[575.81,609.36,137.37,43.94,80.87,58.12],[609.36,616.37,80.87,58.12,80.87,58.12],[616.37,722.14,80.87,58.12,21.5,171.61],[722.14,723.64,21.5,171.61,21.5,171.61],[723.64,870.18,21.5,171.61,120.08,185.53],[870.18,877.44,120.08,185.53,120.08,185.53],[877.44,1007.34,120.08,185.53,186.34,10.04],[1007.34,1014.15,186.34,10.04,186.34,10.04],[1014.15,1174.12,186.34,10.04,89.52,85.82],[1174.12,1177.72,89.52,85.82,89.52,85.82],[1177.72,1251.5,89.52,85.82,48.76,114.86],[1251.5,1257.84,48.76,114.86,48.76,114.86],[1257.84,1312.42,48.76,114.86,122.37,101.82],[1312.42,1322.26,122.37,101.82,122.37,101.82],[1322.26,1562.38,122.37,101.82,2.79,130.69],[1562.38,1570.02,2.79,130.69,2.79,130.69],[1570.02,1690.75,2.79,130.69,65.95,53.65],[1690.75,1698.82,65.95,53.65,65.95,53.65],[1698.82,1757.19,65.95,53.65,145.67,39.44],[1757.19,1765.55,145.67,39.44,145.67,39.44],[1765.55,1816.17,145.67,39.44,75.51,70.72],[1816.17,1818.07,75.51,70.72,75.51,70.72],[1818.07,1952.78,75.51,70.72,153.28,16.87],[1952.78,1954.91,153.28,16.87,153.28,16.87],[1954.91,1992.46,153.28,16.87,78.56,11.61],[1992.46,1996.4,78.56,11.61,78.56,11.61],[1996.4,2061.55,78.56,11.61,140.38,70.73],[2061.55,2061.69,140.38,70.73,140.38,70.73],[2061.69,2107.27,140.38,70.73,63.48,42.52],[2107.27,2108.96,63.48,42.52,63.48,42.52],[2108.96,2288.83,63.48,42.52,176.72,152.33],[2288.83,2291.36,176.72,152.33,176.72,152.33],[2291.36,2382.89,176.72,152.33,123.34,24.56],[2382.89,2389.36,123.34,24.56,123.34,24.56],[2389.36,2429.51,123.34,24.56,62.53,17.45],[2429.51,2435.36,62.53,17.45,62.53,17.45],[2435.36,2463.03,62.53,17.45,30.58,37.36],[2463.03,2470.88,30.58,37.36,30.58,37.36],[2470.88,2525.95,30.58,37.36,130.57,67.08],[2525.95,2531.91,130.57,67.08,130.57,67.08],[2531.91,2736.81,130.57,67.08,0.71,7.58],[2736.81,2744.44,0.71,7.58,0.71,7.58],[2744.44,2929.8,0.71,7.58,109.06,59.72],[2929.8,2930.63,109.06,59.72,109.06,59.72],[2930.63,2995.82,109.06,59.72,190.0,85.6],[2995.82,2999.07,190.0,85.6,190.0,85.6],[2999.07,3100.3,190.0,85.6,37.47,107.43],[3100.3,3105.07,37.47,107.43,37.47,107.43],[3105.07,3142.62,37.47,107.43,4.84,166.82],[3142.62,3147.57,4.84,166.82,4.84,166.82],[3147.57,3216.06,4.84,166.82,74.95,51.03],[3216.06,3222.53,74.95,51.03,74.95,51.03],[3222.53,3374.75,74.95,51.03,184.61,160.11],[3374.75,3379.76,184.61,160.11,184.61,160.11],[3379.76,3425.92,184.61,160.11,106.98,146.64],[3425.92,3430.17,106.98,146.64,106.98,146.64],[3430.17,3536.46,106.98,146.64,9.06,37.69],[3536.46,3542.45,9.06,37.69,9.06,37.69],[3542.45,3708.84,9.06,37.69,184.83,108.23],[3708.84,3711.82,184.83,108.23,184.83,108.23]],"27":[[0.0,216.76,54.3,157.07,70.78,27.97],[216.76,220.81,70.78,27.97,70.78,27.97],[220.81,308.48,70.78,27.97,19.95,98.39],[308.48,312.78,19.95,98.39,19.95,98.39],[312.78,368.21,19.95,98.39,62.54,33.44],[368.21,373.32,62.54,33.44,62.54,33.44],[373.32,505.05,62.54,33.44,93.22,179.66],[505.05,507.81,93.22,179.66,93.22,179.66],[507.81,563.15,93.22,179.66,107.44,137.59],[563.15,563.79,107.44,137.59,107.44,137.59],[563.79,624.54,107.44,137.59,145.13,74.3],[624.54,626.22,145.13,74.3,145.13,74.3],[626.22,762.24,145.13,74.3,51.89,25.94],[762.24,762.26,51.89,25.94,51.89,25.94],[762.26,842.12,51.89,25.94,156.39,60.18],[842.12,846.85,156.39,60.18,156.39,60.18],[846.85,891.81,156.39,60.18,120.57,5.89],[891.81,897.86,120.57,5.89,120.57,5.89],[897.86,1007.03,120.57,5.89,92.98,101.58],[1007.03,1013.48,92.98,101.58,92.98,101.58],[1013.48,1062.14,92.98,101.58,82.44,165.41],[1062.14,1070.57,82.44,165.41,82.44,165.41],[1070.57,1443.44,82.44,165.41,184.85,3.64],[1443.44,1445.06,184.85,3.64,184.85,3.64],[1445.06,1554.04,184.85,3.64,143.25,187.48],[1554.04,1557.66,143.25,187.48,143.25,187.48],[1557.66,1749.65,143.25,187.48,56.73,124.41],[1749.65,1749.92,56.73,124.41,56.73,124.41],[1749.92,1811.89,56.73,124.41,83.64,23.48],[1811.89,1813.57,83.64,23.48,83.64,23.48],[1813.57,1946.36,83.64,23.48,3.69,5.19],[1946.36,1948.1,3.69,5.19,3.69,5.19],[1948.1,2137.05,3.69,5.19,176.65,69.09],[2137.05,2137.53,176.65,69.09,176.65,69.09],[2137.53,2273.49,176.65,69.09,102.07,32.23],[2273.49,2279.86,102.07,32.23,102.07,32.23],[2279.86,2367.11,102.07,32.23,42.06,155.48],[2367.11,2372.12,42.06,155.48,42.06,155.48],[2372.12,2409.64,42.06,155.48,7.84,164.26],[2409.64,2409.68,7.84,164.26,7.84,164.26],[2409.68,2561.08,7.84,164.26,199.26,65.35],[2561.08,2561.69,199.26,65.35,199.26,65.35],[2561.69,2848.96,199.26,65.35,67.3,174.03],[2848.96,2858.85,67.3,174.03,67.3,174.03],[2858.85,2997.44,67.3,174.03,66.15,84.27],[2997.44,3005.71,66.15,84.27,66.15,84.27],[3005.71,3126.21,66.15,84.27,184.25,143.53],[3126.21,3130.27,184.25,143.53,184.25,143.53],[3130.27,3268.84,184.25,143.53,29.57,7.59],[3268.84,3273.26,29.57,7.59,29.57,7.59],[3273.26,3566.67,29.57,7.59,98.05,178.39],[3566.67,3570.12,98.05,178.39,98.05,178.39],[3570.12,3584.9,98.05,178.39,124.0,188.64],[3584.9,3588.39,124.0,188.64,124.0,188.64],[3588.39,3665.05,124.0,188.64,7.79,165.82],[3665.05,3673.23,7.79,165.82,7.79,165.82]],"28":[[0.0,28.46,70.12,165.2,87.11,130.39],[28.46,36.56,87.11,130.39,87.11,130.39],[36.56,91.52,87.11,130.39,1.93,147.95],[91.52,93.56,1.93,147.95,1.93,147.95],[93.56,320.18,1.93,147.95,129.76,47.02],[320.18,323.48,129.76,47.02,129.76,47.02],[323.48,375.24,129.76,47.02,113.1,1.58],[375.24,383.44,113.1,1.58,113.1,1.58],[383.44,516.9,113.1,1.58,128.84,165.01],[516.9,525.92,128.84,165.01,128.84,165.01],[525.92,761.83,128.84,165.01,46.32,45.99],[761.83,763.89,46.32,45.99,46.32,45.99],[763.89,887.25,46.32,45.99,128.19,158.91],[887.25,894.09,128.19,158.91,128.19,158.91],[894.09,911.99,128.19,158.91,117.81,148.36],[911.99,918.96,117.81,148.36,117.81,148.36],[918.96,1005.65,117.81,148.36,157.67,30.07],[1005.65,1006.84,157.67,30.07,157.67,30.07],[1006.84,1104.54,157.67,30.07,112.53,60.69],[1104.54,1113.79,112.53,60.69,112.53,60.69],[1113.79,1162.72,112.53,60.69,34.44,41.53],[1162.72,1166.71,34.44,41.53,34.44,41.53],[1166.71,1185.53,34.44,41.53,0.63,40.73],[1185.53,1188.76,0.63,40.73,0.63,40.73],[1188.76,1288.69,0.63,40.73,164.58,136.06],[1288.69,1292.37,164.58,136.06,164.58,136.06],[1292.37,1361.14,164.58,136.06,53.67,93.37],[1361.14,1369.24,53.67,93.37,53.67,93.37],[1369.24,1420.08,53.67,93.37,112.94,40.64],[1420.08,1427.06,112.94,40.64,112.94,40.64],[1427.06,1586.01,112.94,40.64,172.69,149.52],[1586.01,1589.76,172.69,149.52,172.69,149.52],[1589.76,1722.94,172.69,149.52,27.22,172.36],[1722.94,1731.61,27.22,172.36,27.22,172.36],[1731.61,1890.25,27.22,172.36,194.55,41.24],[1890.25,1899.31,194.55,41.24,194.55,41.24],[1899.31,1965.94,194.55,41.24,103.41,104.87],[1965.94,1966.41,103.41,104.87,103.41,104.87],[1966.41,2012.99,103.41,104.87,138.07,184.45],[2012.99,2018.72,138.07,184.45,138.07,184.45],[2018.72,2150.58,138.07,184.45,121.29,107.05],[2150.58,2154.18,121.29,107.05,121.29,107.05],[2154.18,2180.8,121.29,107.05,115.94,126.96],[2180.8,2190.65,115.94,126.96,115.94,126.96],[2190.65,2305.27,115.94,126.96,25.33,81.21],[2305.27,2307.16,25.33,81.21,25.33,81.21],[2307.16,2340.71,25.33,81.21,56.4,54.97],[2340.71,2348.62,56.4,54.97,56.4,54.97],[2348.62,2531.68,56.4,54.97,140.59,193.74],[2531.68,2540.23,140.59,193.74,140.59,193.74],[2540.23,2611.43,140.59,193.74,25.16,128.93],[2611.43,2617.63,25.16,128.93,25.16,128.93],[2617.63,2683.62,25.16,128.93,117.76,50.07],[2683.62,2685.74,117.76,50.07,117.76,50.07],[2685.74,2818.15,117.76,50.07,77.82,142.99],[2818.15,2823.49,77.82,142.99,77.82,142.99],[2823.49,2882.03,77.82,142.99,130.92,98.84],[2882.03,2885.83,130.92,98.84,130.92,98.84],[2885.83,2961.14,130.92,98.84,89.44,176.78],[2961.14,2962.67,89.44,176.78,89.44,176.78],[2962.67,3086.91,89.44,176.78,186.37,82.99],[3086.91,3091.8,186.37,82.99,186.37,82.99],[3091.8,3116.43,186.37,82.99,188.36,97.56],[3116.43,3117.33,188.36,97.56,188.36,97.56],[3117.33,3221.0,188.36,97.56,35.2,97.09],[3221.0,3230.19,35.2,97.09,35.2,97.09],[3230.19,3241.47,35.2,97.09,55.72,104.6],[3241.47,3247.7,55.72,104.6,55.72,104.6],[3247.7,3316.57,55.72,104.6,109.77,158.07],[3316.57,3326.26,109.77,158.07,109.77,158.07],[3326.26,3339.84,109.77,158.07,118.24,133.83],[3339.84,3341.41,118.24,133.83,118.24,133.83],[3341.41,3454.36,118.24,133.83,3.17,195.55],[3454.36,3463.89,3.17,195.55,3.17,195.55],[3463.89,3691.11,3.17,195.55,77.81,80.62],[3691.11,3694.27,77.81,80.62,77.81,80.62]]};
var K = {};
for (var i in S) { K[i] = 0; }
function place(t) {
  for (var i in S) {
    var s = S[i];
    var j = K[i];
    while (j < s.length - 1 && t > s[j][1]) { j++; }
    K[i] = j;
    var g = s[j];
    var f = g[1] > g[0] ? Math.min(1, Math.max(0, (t - g[0]) / (g[1] - g[0]))) : 1;
    sim.getMoteWithID(parseInt(i)).getInterfaces().getPosition()
       .setCoordinates(g[2] + f * (g[4] - g[2]), g[3] + f * (g[5] - g[3]), 0);
  }
}
var mobile = Object.keys(S).length > 0;
if (mobile) { GENERATE_MSG(1000, "mv"); }
while (true) {
  YIELD();
  if (msg.equals("mv")) {
    place(time / 1000000.0);
    GENERATE_MSG(1000, "mv");
  } else if (msg.startsWith("#")) {
    log.log(time + " " + id + " " + msg + "\n");
  }
}
]]></script>
      <active>true</active>
    </plugin_config>
    <width>600</width>
    <z>0</z>
    <height>700</height>
    <location_x>0</location_x>
    <location_y>0</location_y>
  </plugin>
</simconf>
