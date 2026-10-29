<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i3_mob3_d3_s28_dao2</title>
    <randomseed>28</randomseed>
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
      <identifier>v_root_d3</identifier>
      <description>v_root_d3</description>
      <source>/home/user/project/build/variants/v_root_d3/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d3.cooja</commands>
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
      <identifier>v_cli_d3_m0</identifier>
      <description>v_cli_d3_m0</description>
      <source>/home/user/project/build/variants/v_cli_d3_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d3_m0.cooja</commands>
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
          <pos x="68.08" y="144.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="39.83" y="177.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="196.67" y="46.88" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="130.73" y="22.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="143.65" y="11.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="178.93" y="159.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="145.37" y="139.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="26.07" y="136.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="112.51" y="138.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="36.59" y="68.73" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="152.39" y="60.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="113.88" y="56.76" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="115.95" y="192.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="6.00" y="75.96" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="19.01" y="27.67" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
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
          <pos x="147.18" y="170.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="110.28" y="35.53" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="62.32" y="164.71" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="39.52" y="128.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="161.23" y="38.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="66.32" y="88.95" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="128.55" y="158.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d3_m1</identifier>
      <description>v_cli_d3_m1</description>
      <source>/home/user/project/build/variants/v_cli_d3_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d3_m1.cooja</commands>
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
          <pos x="172.01" y="17.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="5.28" y="100.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="54.48" y="159.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="81.20" y="66.58" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="14.39" y="19.67" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="48.38" y="61.90" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="15.08" y="195.69" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"4":[[0.0,94.03,147.18,170.22,83.86,175.9],[94.03,101.47,83.86,175.9,83.86,175.9],[101.47,240.78,83.86,175.9,197.82,1.87],[240.78,250.45,197.82,1.87,197.82,1.87],[250.45,317.74,197.82,1.87,188.46,118.52],[317.74,322.77,188.46,118.52,188.46,118.52],[322.77,419.33,188.46,118.52,36.62,96.62],[419.33,427.52,36.62,96.62,36.62,96.62],[427.52,493.63,36.62,96.62,73.22,187.82],[493.63,497.6,73.22,187.82,73.22,187.82],[497.6,520.65,73.22,187.82,101.93,189.63],[520.65,526.94,101.93,189.63,101.93,189.63],[526.94,646.83,101.93,189.63,174.23,160.85],[646.83,648.88,174.23,160.85,174.23,160.85],[648.88,749.69,174.23,160.85,106.0,151.07],[749.69,752.33,106.0,151.07,106.0,151.07],[752.33,815.38,106.0,151.07,17.61,98.98],[815.38,816.57,17.61,98.98,17.61,98.98],[816.57,886.83,17.61,98.98,39.28,143.15],[886.83,891.49,39.28,143.15,39.28,143.15],[891.49,952.45,39.28,143.15,107.02,114.31],[952.45,955.9,107.02,114.31,107.02,114.31],[955.9,1002.98,107.02,114.31,34.14,170.95],[1002.98,1004.71,34.14,170.95,34.14,170.95],[1004.71,1057.54,34.14,170.95,109.85,108.55],[1057.54,1067.25,109.85,108.55,109.85,108.55],[1067.25,1107.01,109.85,108.55,140.35,177.53],[1107.01,1109.1,140.35,177.53,140.35,177.53],[1109.1,1200.62,140.35,177.53,126.45,90.53],[1200.62,1204.71,126.45,90.53,126.45,90.53],[1204.71,1249.79,126.45,90.53,193.67,65.29],[1249.79,1251.81,193.67,65.29,193.67,65.29],[1251.81,1322.93,193.67,65.29,162.49,153.14],[1322.93,1330.72,162.49,153.14,162.49,153.14],[1330.72,1418.74,162.49,153.14,110.69,172.95],[1418.74,1420.73,110.69,172.95,110.69,172.95],[1420.73,1433.92,110.69,172.95,117.46,189.6],[1433.92,1435.71,117.46,189.6,117.46,189.6],[1435.71,1488.21,117.46,189.6,111.03,130.04],[1488.21,1495.39,111.03,130.04,111.03,130.04],[1495.39,1522.62,111.03,130.04,82.81,109.59],[1522.62,1527.57,82.81,109.59,82.81,109.59],[1527.57,1553.02,82.81,109.59,94.55,156.19],[1553.02,1557.06,94.55,156.19,94.55,156.19],[1557.06,1642.24,94.55,156.19,160.15,80.45],[1642.24,1648.99,160.15,80.45,160.15,80.45],[1648.99,1702.72,160.15,80.45,126.43,150.14],[1702.72,1705.79,126.43,150.14,126.43,150.14],[1705.79,1783.49,126.43,150.14,170.07,62.38],[1783.49,1783.69,170.07,62.38,170.07,62.38],[1783.69,1912.62,170.07,62.38,65.89,185.27],[1912.62,1914.32,65.89,185.27,65.89,185.27],[1914.32,2080.88,65.89,185.27,170.41,67.99],[2080.88,2084.11,170.41,67.99,170.41,67.99],[2084.11,2155.57,170.41,67.99,55.81,109.78],[2155.57,2158.32,55.81,109.78,55.81,109.78],[2158.32,2270.65,55.81,109.78,191.24,36.05],[2270.65,2278.8,191.24,36.05,191.24,36.05],[2278.8,2352.64,191.24,36.05,159.63,151.59],[2352.64,2358.4,159.63,151.59,159.63,151.59],[2358.4,2392.87,159.63,151.59,114.02,142.91],[2392.87,2402.82,114.02,142.91,114.02,142.91],[2402.82,2454.12,114.02,142.91,142.91,177.69],[2454.12,2455.93,142.91,177.69,142.91,177.69],[2455.93,2502.57,142.91,177.69,103.23,124.21],[2502.57,2511.83,103.23,124.21,103.23,124.21],[2511.83,2532.29,103.23,124.21,85.65,135.89],[2532.29,2540.04,85.65,135.89,85.65,135.89],[2540.04,2779.84,85.65,135.89,33.59,8.13],[2779.84,2783.15,33.59,8.13,33.59,8.13],[2783.15,2837.25,33.59,8.13,9.09,60.84],[2837.25,2839.95,9.09,60.84,9.09,60.84],[2839.95,2951.67,9.09,60.84,170.08,139.38],[2951.67,2951.96,170.08,139.38,170.08,139.38],[2951.96,3004.0,170.08,139.38,189.82,83.49],[3004.0,3006.86,189.82,83.49,189.82,83.49],[3006.86,3127.19,189.82,83.49,21.69,169.61],[3127.19,3130.85,21.69,169.61,21.69,169.61],[3130.85,3206.65,21.69,169.61,80.12,151.25],[3206.65,3213.1,80.12,151.25,80.12,151.25],[3213.1,3267.34,80.12,151.25,38.02,66.58],[3267.34,3274.34,38.02,66.58,38.02,66.58],[3274.34,3373.09,38.02,66.58,72.72,152.15],[3373.09,3382.67,72.72,152.15,72.72,152.15],[3382.67,3500.65,72.72,152.15,180.21,90.16],[3500.65,3507.94,180.21,90.16,180.21,90.16],[3507.94,3822.45,180.21,90.16,12.95,192.16],[3822.45,3823.88,12.95,192.16,12.95,192.16]],"9":[[0.0,124.17,172.01,17.13,37.65,45.15],[124.17,132.45,37.65,45.15,37.65,45.15],[132.45,230.34,37.65,45.15,99.72,150.56],[230.34,236.38,99.72,150.56,99.72,150.56],[236.38,350.07,99.72,150.56,48.65,83.25],[350.07,357.58,48.65,83.25,48.65,83.25],[357.58,409.79,48.65,83.25,27.17,126.0],[409.79,411.85,27.17,126.0,27.17,126.0],[411.85,449.01,27.17,126.0,17.51,74.69],[449.01,449.73,17.51,74.69,17.51,74.69],[449.73,482.08,17.51,74.69,59.63,116.5],[482.08,488.08,59.63,116.5,59.63,116.5],[488.08,605.95,59.63,116.5,137.42,108.14],[605.95,612.15,137.42,108.14,137.42,108.14],[612.15,636.99,137.42,108.14,116.74,149.44],[636.99,640.43,116.74,149.44,116.74,149.44],[640.43,791.28,116.74,149.44,118.8,70.05],[791.28,800.54,118.8,70.05,118.8,70.05],[800.54,893.03,118.8,70.05,130.18,185.83],[893.03,899.52,130.18,185.83,130.18,185.83],[899.52,1028.61,130.18,185.83,103.96,35.42],[1028.61,1033.96,103.96,35.42,103.96,35.42],[1033.96,1080.16,103.96,35.42,31.26,24.33],[1080.16,1087.31,31.26,24.33,31.26,24.33],[1087.31,1292.61,31.26,24.33,176.22,117.35],[1292.61,1301.81,176.22,117.35,176.22,117.35],[1301.81,1372.31,176.22,117.35,60.64,40.83],[1372.31,1374.71,60.64,40.83,60.64,40.83],[1374.71,1469.81,60.64,40.83,148.53,171.55],[1469.81,1479.02,148.53,171.55,148.53,171.55],[1479.02,1566.87,148.53,171.55,168.28,98.79],[1566.87,1567.95,168.28,98.79,168.28,98.79],[1567.95,1590.51,168.28,98.79,157.9,92.14],[1590.51,1593.3,157.9,92.14,157.9,92.14],[1593.3,1650.55,157.9,92.14,105.64,111.02],[1650.55,1654.61,105.64,111.02,105.64,111.02],[1654.61,1674.28,105.64,111.02,134.61,88.42],[1674.28,1674.68,134.61,88.42,134.61,88.42],[1674.68,1886.99,134.61,88.42,15.17,29.06],[1886.99,1892.72,15.17,29.06,15.17,29.06],[1892.72,2166.22,15.17,29.06,130.6,108.03],[2166.22,2171.86,130.6,108.03,130.6,108.03],[2171.86,2341.8,130.6,108.03,22.39,136.68],[2341.8,2344.56,22.39,136.68,22.39,136.68],[2344.56,2419.1,22.39,136.68,72.54,179.54],[2419.1,2421.15,72.54,179.54,72.54,179.54],[2421.15,2552.02,72.54,179.54,8.82,31.69],[2552.02,2559.73,8.82,31.69,8.82,31.69],[2559.73,2942.31,8.82,31.69,137.85,198.13],[2942.31,2945.5,137.85,198.13,137.85,198.13],[2945.5,3023.69,137.85,198.13,194.21,190.36],[3023.69,3029.86,194.21,190.36,194.21,190.36],[3029.86,3105.97,194.21,190.36,86.14,122.17],[3105.97,3112.03,86.14,122.17,86.14,122.17],[3112.03,3177.45,86.14,122.17,1.46,30.93],[3177.45,3184.29,1.46,30.93,1.46,30.93],[3184.29,3230.82,1.46,30.93,68.67,33.45],[3230.82,3233.45,68.67,33.45,68.67,33.45],[3233.45,3388.2,68.67,33.45,95.58,197.59],[3388.2,3397.42,95.58,197.59,95.58,197.59],[3397.42,3442.51,95.58,197.59,104.41,170.47],[3442.51,3445.88,104.41,170.47,104.41,170.47],[3445.88,3602.14,104.41,170.47,119.05,35.18],[3602.14,3607.52,119.05,35.18,119.05,35.18]],"13":[[0.0,64.8,39.52,128.46,165.4,110.73],[64.8,71.99,165.4,110.73,165.4,110.73],[71.99,197.06,165.4,110.73,74.5,45.89],[197.06,203.67,74.5,45.89,74.5,45.89],[203.67,284.91,74.5,45.89,96.95,94.45],[284.91,287.8,96.95,94.45,96.95,94.45],[287.8,383.42,96.95,94.45,62.91,146.64],[383.42,384.49,62.91,146.64,62.91,146.64],[384.49,493.18,62.91,146.64,4.01,81.29],[493.18,498.23,4.01,81.29,4.01,81.29],[498.23,609.82,4.01,81.29,145.85,58.9],[609.82,617.24,145.85,58.9,145.85,58.9],[617.24,672.47,145.85,58.9,73.96,129.23],[672.47,675.64,73.96,129.23,73.96,129.23],[675.64,908.33,73.96,129.23,92.93,11.95],[908.33,916.12,92.93,11.95,92.93,11.95],[916.12,981.78,92.93,11.95,41.83,88.18],[981.78,985.93,41.83,88.18,41.83,88.18],[985.93,1005.91,41.83,88.18,31.49,121.14],[1005.91,1015.88,31.49,121.14,31.49,121.14],[1015.88,1093.0,31.49,121.14,61.03,58.41],[1093.0,1100.33,61.03,58.41,61.03,58.41],[1100.33,1270.49,61.03,58.41,77.73,182.59],[1270.49,1278.19,77.73,182.59,77.73,182.59],[1278.19,1335.05,77.73,182.59,142.2,193.04],[1335.05,1339.02,142.2,193.04,142.2,193.04],[1339.02,1437.64,142.2,193.04,82.85,195.3],[1437.64,1446.82,82.85,195.3,82.85,195.3],[1446.82,1630.04,82.85,195.3,13.56,40.94],[1630.04,1635.25,13.56,40.94,13.56,40.94],[1635.25,1724.23,13.56,40.94,34.57,122.15],[1724.23,1729.82,34.57,122.15,34.57,122.15],[1729.82,1750.67,34.57,122.15,23.75,149.05],[1750.67,1750.91,23.75,149.05,23.75,149.05],[1750.91,1854.66,23.75,149.05,139.19,180.99],[1854.66,1864.52,139.19,180.99,139.19,180.99],[1864.52,2004.78,139.19,180.99,168.02,10.93],[2004.78,2011.14,168.02,10.93,168.02,10.93],[2011.14,2090.81,168.02,10.93,61.52,93.12],[2090.81,2098.44,61.52,93.12,61.52,93.12],[2098.44,2125.01,61.52,93.12,82.19,138.03],[2125.01,2128.11,82.19,138.03,82.19,138.03],[2128.11,2189.48,82.19,138.03,82.14,17.68],[2189.48,2192.37,82.14,17.68,82.14,17.68],[2192.37,2400.31,82.14,17.68,143.24,128.57],[2400.31,2407.47,143.24,128.57,143.24,128.57],[2407.47,2430.12,143.24,128.57,120.28,117.21],[2430.12,2439.95,120.28,117.21,120.28,117.21],[2439.95,2534.58,120.28,117.21,9.78,151.48],[2534.58,2538.41,9.78,151.48,9.78,151.48],[2538.41,2639.33,9.78,151.48,132.06,0.38],[2639.33,2643.12,132.06,0.38,132.06,0.38],[2643.12,2744.51,132.06,0.38,188.03,53.87],[2744.51,2746.59,188.03,53.87,188.03,53.87],[2746.59,2816.48,188.03,53.87,74.86,83.45],[2816.48,2821.37,74.86,83.45,74.86,83.45],[2821.37,2896.27,74.86,83.45,175.36,160.69],[2896.27,2900.12,175.36,160.69,175.36,160.69],[2900.12,2987.37,175.36,160.69,125.8,80.08],[2987.37,2987.96,125.8,80.08,125.8,80.08],[2987.96,3046.06,125.8,80.08,69.0,65.77],[3046.06,3046.58,69.0,65.77,69.0,65.77],[3046.58,3143.07,69.0,65.77,31.42,11.31],[3143.07,3148.72,31.42,11.31,31.42,11.31],[3148.72,3245.7,31.42,11.31,63.19,63.18],[3245.7,3253.77,63.19,63.18,63.19,63.18],[3253.77,3264.68,63.19,63.18,45.77,74.6],[3264.68,3274.0,45.77,74.6,45.77,74.6],[3274.0,3329.39,45.77,74.6,124.48,77.05],[3329.39,3332.4,124.48,77.05,124.48,77.05],[3332.4,3397.85,124.48,77.05,156.25,25.6],[3397.85,3398.02,156.25,25.6,156.25,25.6],[3398.02,3413.23,156.25,25.6,174.63,3.98],[3413.23,3422.02,174.63,3.98,174.63,3.98],[3422.02,3429.34,174.63,3.98,179.74,2.4],[3429.34,3432.04,179.74,2.4,179.74,2.4],[3432.04,3575.51,179.74,2.4,155.36,195.27],[3575.51,3576.74,155.36,195.27,155.36,195.27],[3576.74,3792.98,155.36,195.27,50.55,163.85],[3792.98,3802.0,50.55,163.85,50.55,163.85]],"14":[[0.0,169.93,5.28,100.1,179.4,47.73],[169.93,178.96,179.4,47.73,179.4,47.73],[178.96,193.58,179.4,47.73,165.71,22.64],[193.58,203.23,165.71,22.64,165.71,22.64],[203.23,211.87,165.71,22.64,164.42,33.6],[211.87,214.44,164.42,33.6,164.42,33.6],[214.44,244.44,164.42,33.6,122.77,6.77],[244.44,252.63,122.77,6.77,122.77,6.77],[252.63,335.41,122.77,6.77,19.62,92.98],[335.41,344.51,19.62,92.98,19.62,92.98],[344.51,381.7,19.62,92.98,90.82,84.02],[381.7,385.85,90.82,84.02,90.82,84.02],[385.85,451.72,90.82,84.02,65.77,162.49],[451.72,461.43,65.77,162.49,65.77,162.49],[461.43,675.07,65.77,162.49,3.49,44.33],[675.07,682.37,3.49,44.33,3.49,44.33],[682.37,882.01,3.49,44.33,51.34,192.85],[882.01,883.69,51.34,192.85,51.34,192.85],[883.69,976.4,51.34,192.85,66.32,21.89],[976.4,983.94,66.32,21.89,66.32,21.89],[983.94,1002.24,66.32,21.89,80.84,15.36],[1002.24,1004.33,80.84,15.36,80.84,15.36],[1004.33,1036.87,80.84,15.36,19.69,11.38],[1036.87,1045.3,19.69,11.38,19.69,11.38],[1045.3,1075.34,19.69,11.38,67.33,0.09],[1075.34,1080.76,67.33,0.09,67.33,0.09],[1080.76,1140.99,67.33,0.09,135.1,50.8],[1140.99,1146.06,135.1,50.8,135.1,50.8],[1146.06,1248.46,135.1,50.8,51.53,177.35],[1248.46,1252.86,51.53,177.35,51.53,177.35],[1252.86,1441.68,51.53,177.35,99.1,72.08],[1441.68,1447.0,99.1,72.08,99.1,72.08],[1447.0,1598.27,99.1,72.08,19.46,161.06],[1598.27,1604.57,19.46,161.06,19.46,161.06],[1604.57,1702.76,19.46,161.06,71.81,26.98],[1702.76,1707.57,71.81,26.98,71.81,26.98],[1707.57,1757.95,71.81,26.98,108.04,46.83],[1757.95,1767.61,108.04,46.83,108.04,46.83],[1767.61,1960.46,108.04,46.83,70.14,172.66],[1960.46,1969.04,70.14,172.66,70.14,172.66],[1969.04,2111.28,70.14,172.66,36.35,95.42],[2111.28,2121.01,36.35,95.42,36.35,95.42],[2121.01,2219.41,36.35,95.42,4.7,163.07],[2219.41,2225.22,4.7,163.07,4.7,163.07],[2225.22,2259.93,4.7,163.07,60.39,132.6],[2259.93,2260.64,60.39,132.6,60.39,132.6],[2260.64,2305.66,60.39,132.6,22.49,72.83],[2305.66,2309.27,22.49,72.83,22.49,72.83],[2309.27,2324.17,22.49,72.83,10.96,95.49],[2324.17,2331.84,10.96,95.49,10.96,95.49],[2331.84,2430.56,10.96,95.49,97.9,119.34],[2430.56,2436.89,97.9,119.34,97.9,119.34],[2436.89,2455.38,97.9,119.34,116.15,87.2],[2455.38,2463.23,116.15,87.2,116.15,87.2],[2463.23,2583.9,116.15,87.2,21.61,53.23],[2583.9,2586.36,21.61,53.23,21.61,53.23],[2586.36,2663.15,21.61,53.23,94.96,164.91],[2663.15,2667.41,94.96,164.91,94.96,164.91],[2667.41,2779.44,94.96,164.91,80.54,30.72],[2779.44,2788.56,80.54,30.72,80.54,30.72],[2788.56,2897.49,80.54,30.72,5.89,69.77],[2897.49,2904.12,5.89,69.77,5.89,69.77],[2904.12,3107.19,5.89,69.77,102.41,144.51],[3107.19,3116.48,102.41,144.51,102.41,144.51],[3116.48,3217.91,102.41,144.51,73.6,23.27],[3217.91,3221.78,73.6,23.27,73.6,23.27],[3221.78,3367.48,73.6,23.27,172.67,166.13],[3367.48,3369.45,172.67,166.13,172.67,166.13],[3369.45,3450.91,172.67,166.13,164.43,3.73],[3450.91,3455.05,164.43,3.73,164.43,3.73],[3455.05,3674.79,164.43,3.73,79.06,90.01],[3674.79,3684.38,79.06,90.01,79.06,90.01]],"16":[[0.0,100.86,54.48,159.25,186.05,66.48],[100.86,110.38,186.05,66.48,186.05,66.48],[110.38,230.2,186.05,66.48,110.97,198.65],[230.2,235.59,110.97,198.65,110.97,198.65],[235.59,297.68,110.97,198.65,176.3,159.25],[297.68,307.43,176.3,159.25,176.3,159.25],[307.43,470.99,176.3,159.25,7.25,7.56],[470.99,472.13,7.25,7.56,7.25,7.56],[472.13,486.86,7.25,7.56,1.91,23.45],[486.86,486.94,1.91,23.45,1.91,23.45],[486.94,606.35,1.91,23.45,130.86,149.94],[606.35,612.66,130.86,149.94,130.86,149.94],[612.66,654.92,130.86,149.94,185.5,181.98],[654.92,663.2,185.5,181.98,185.5,181.98],[663.2,797.18,185.5,181.98,91.41,180.92],[797.18,805.77,91.41,180.92,91.41,180.92],[805.77,839.11,91.41,180.92,30.81,172.03],[839.11,844.25,30.81,172.03,30.81,172.03],[844.25,986.56,30.81,172.03,166.95,177.37],[986.56,989.89,166.95,177.37,166.95,177.37],[989.89,1231.48,166.95,177.37,34.05,191.74],[1231.48,1233.39,34.05,191.74,34.05,191.74],[1233.39,1422.97,34.05,191.74,145.29,17.75],[1422.97,1429.49,145.29,17.75,145.29,17.75],[1429.49,1479.46,145.29,17.75,67.47,42.61],[1479.46,1481.81,67.47,42.61,67.47,42.61],[1481.81,1501.24,67.47,42.61,79.05,43.93],[1501.24,1507.19,79.05,43.93,79.05,43.93],[1507.19,1577.68,79.05,43.93,37.09,145.19],[1577.68,1583.85,37.09,145.19,37.09,145.19],[1583.85,1651.44,37.09,145.19,143.41,101.4],[1651.44,1660.72,143.41,101.4,143.41,101.4],[1660.72,1780.99,143.41,101.4,76.3,165.29],[1780.99,1783.54,76.3,165.29,76.3,165.29],[1783.54,1850.04,76.3,165.29,42.79,165.47],[1850.04,1857.43,42.79,165.47,42.79,165.47],[1857.43,1867.71,42.79,165.47,52.38,182.61],[1867.71,1871.6,52.38,182.61,52.38,182.61],[1871.6,1913.04,52.38,182.61,112.3,152.15],[1913.04,1913.55,112.3,152.15,112.3,152.15],[1913.55,1978.88,112.3,152.15,154.38,162.81],[1978.88,1981.5,154.38,162.81,154.38,162.81],[1981.5,2017.17,154.38,162.81,151.96,91.85],[2017.17,2017.53,151.96,91.85,151.96,91.85],[2017.53,2065.11,151.96,91.85,86.07,91.61],[2065.11,2072.28,86.07,91.61,86.07,91.61],[2072.28,2154.53,86.07,91.61,64.99,137.9],[2154.53,2158.05,64.99,137.9,64.99,137.9],[2158.05,2287.02,64.99,137.9,161.44,88.23],[2287.02,2293.52,161.44,88.23,161.44,88.23],[2293.52,2305.08,161.44,88.23,183.36,94.26],[2305.08,2313.78,183.36,94.26,183.36,94.26],[2313.78,2420.06,183.36,94.26,196.36,176.06],[2420.06,2428.37,196.36,176.06,196.36,176.06],[2428.37,2464.53,196.36,176.06,139.46,170.88],[2464.53,2474.14,139.46,170.88,139.46,170.88],[2474.14,2555.23,139.46,170.88,186.48,183.83],[2555.23,2564.27,186.48,183.83,186.48,183.83],[2564.27,2685.55,186.48,183.83,51.6,47.05],[2685.55,2692.47,51.6,47.05,51.6,47.05],[2692.47,2885.52,51.6,47.05,69.37,158.73],[2885.52,2893.07,69.37,158.73,69.37,158.73],[2893.07,2903.03,69.37,158.73,84.16,157.92],[2903.03,2903.6,84.16,157.92,84.16,157.92],[2903.6,3093.05,84.16,157.92,97.59,18.2],[3093.05,3100.02,97.59,18.2,97.59,18.2],[3100.02,3122.9,97.59,18.2,78.49,50.77],[3122.9,3124.82,78.49,50.77,78.49,50.77],[3124.82,3355.84,78.49,50.77,197.97,153.4],[3355.84,3357.95,197.97,153.4,197.97,153.4],[3357.95,3491.36,197.97,153.4,6.77,70.27],[3491.36,3491.42,6.77,70.27,6.77,70.27],[3491.42,3580.75,6.77,70.27,101.25,4.25],[3580.75,3582.87,101.25,4.25,101.25,4.25],[3582.87,3617.6,101.25,4.25,77.84,68.46],[3617.6,3621.41,77.84,68.46,77.84,68.46]],"22":[[0.0,212.08,81.2,66.58,10.81,184.22],[212.08,219.91,10.81,184.22,10.81,184.22],[219.91,341.24,10.81,184.22,133.58,109.41],[341.24,348.08,133.58,109.41,133.58,109.41],[348.08,526.4,133.58,109.41,25.23,24.06],[526.4,530.21,25.23,24.06,25.23,24.06],[530.21,640.39,25.23,24.06,18.17,140.8],[640.39,644.02,18.17,140.8,18.17,140.8],[644.02,714.75,18.17,140.8,22.58,188.84],[714.75,722.25,22.58,188.84,22.58,188.84],[722.25,882.71,22.58,188.84,128.43,155.65],[882.71,887.02,128.43,155.65,128.43,155.65],[887.02,1014.49,128.43,155.65,15.16,53.99],[1014.49,1016.94,15.16,53.99,15.16,53.99],[1016.94,1114.36,15.16,53.99,124.28,133.46],[1114.36,1123.61,124.28,133.46,124.28,133.46],[1123.61,1134.44,124.28,133.46,142.6,138.62],[1134.44,1136.85,142.6,138.62,142.6,138.62],[1136.85,1150.86,142.6,138.62,153.21,115.46],[1150.86,1152.85,153.21,115.46,153.21,115.46],[1152.85,1211.13,153.21,115.46,180.83,22.69],[1211.13,1217.62,180.83,22.69,180.83,22.69],[1217.62,1523.68,180.83,22.69,12.02,12.47],[1523.68,1528.53,12.02,12.47,12.02,12.47],[1528.53,1586.76,12.02,12.47,28.45,62.71],[1586.76,1595.39,28.45,62.71,28.45,62.71],[1595.39,1617.48,28.45,62.71,16.65,36.13],[1617.48,1618.29,16.65,36.13,16.65,36.13],[1618.29,1761.1,16.65,36.13,57.9,159.64],[1761.1,1766.12,57.9,159.64,57.9,159.64],[1766.12,1821.61,57.9,159.64,78.49,60.29],[1821.61,1821.68,78.49,60.29,78.49,60.29],[1821.68,1909.21,78.49,60.29,135.9,199.51],[1909.21,1912.39,135.9,199.51,135.9,199.51],[1912.39,2146.36,135.9,199.51,6.24,32.54],[2146.36,2153.13,6.24,32.54,6.24,32.54],[2153.13,2184.61,6.24,32.54,67.54,23.97],[2184.61,2194.11,67.54,23.97,67.54,23.97],[2194.11,2267.8,67.54,23.97,11.99,72.26],[2267.8,2270.96,11.99,72.26,11.99,72.26],[2270.96,2343.2,11.99,72.26,129.9,101.8],[2343.2,2351.37,129.9,101.8,129.9,101.8],[2351.37,2368.61,129.9,101.8,136.97,71.12],[2368.61,2378.44,136.97,71.12,136.97,71.12],[2378.44,2447.17,136.97,71.12,159.19,18.36],[2447.17,2455.38,159.19,18.36,159.19,18.36],[2455.38,2538.99,159.19,18.36,34.95,128.64],[2538.99,2542.88,34.95,128.64,34.95,128.64],[2542.88,2702.95,34.95,128.64,93.34,60.11],[2702.95,2711.06,93.34,60.11,93.34,60.11],[2711.06,2767.87,93.34,60.11,28.1,113.55],[2767.87,2777.46,28.1,113.55,28.1,113.55],[2777.46,2817.49,28.1,113.55,20.29,47.34],[2817.49,2826.94,20.29,47.34,20.29,47.34],[2826.94,2909.38,20.29,47.34,119.8,32.99],[2909.38,2911.48,119.8,32.99,119.8,32.99],[2911.48,2966.79,119.8,32.99,28.99,62.64],[2966.79,2974.18,28.99,62.64,28.99,62.64],[2974.18,3047.41,28.99,62.64,143.54,30.42],[3047.41,3052.13,143.54,30.42,143.54,30.42],[3052.13,3116.18,143.54,30.42,32.64,37.02],[3116.18,3118.83,32.64,37.02,32.64,37.02],[3118.83,3145.21,32.64,37.02,11.65,60.0],[3145.21,3151.14,11.65,60.0,11.65,60.0],[3151.14,3286.6,11.65,60.0,181.29,56.35],[3286.6,3292.2,181.29,56.35,181.29,56.35],[3292.2,3446.16,181.29,56.35,13.77,171.13],[3446.16,3453.38,13.77,171.13,13.77,171.13],[3453.38,3696.51,13.77,171.13,84.6,20.65],[3696.51,3697.51,84.6,20.65,84.6,20.65]],"23":[[0.0,99.08,14.39,19.67,82.6,105.42],[99.08,102.98,82.6,105.42,82.6,105.42],[102.98,181.18,82.6,105.42,181.61,185.83],[181.18,187.03,181.61,185.83,181.61,185.83],[187.03,245.74,181.61,185.83,137.24,146.14],[245.74,250.34,137.24,146.14,137.24,146.14],[250.34,305.24,137.24,146.14,89.58,73.79],[305.24,307.71,89.58,73.79,89.58,73.79],[307.71,395.14,89.58,73.79,50.65,182.76],[395.14,398.7,50.65,182.76,50.65,182.76],[398.7,466.68,50.65,182.76,119.01,161.87],[466.68,469.22,119.01,161.87,119.01,161.87],[469.22,473.16,119.01,161.87,115.49,158.63],[473.16,478.34,115.49,158.63,115.49,158.63],[478.34,615.24,115.49,158.63,120.8,37.07],[615.24,623.74,120.8,37.07,120.8,37.07],[623.74,661.21,120.8,37.07,170.39,87.38],[661.21,667.23,170.39,87.38,170.39,87.38],[667.23,739.93,170.39,87.38,61.09,60.03],[739.93,743.08,61.09,60.03,61.09,60.03],[743.08,906.3,61.09,60.03,197.81,105.54],[906.3,907.97,197.81,105.54,197.81,105.54],[907.97,1004.9,197.81,105.54,65.71,165.78],[1004.9,1010.19,65.71,165.78,65.71,165.78],[1010.19,1067.99,65.71,165.78,39.33,103.61],[1067.99,1073.91,39.33,103.61,39.33,103.61],[1073.91,1110.56,39.33,103.61,111.96,105.92],[1110.56,1110.63,111.96,105.92,111.96,105.92],[1110.63,1147.04,111.96,105.92,149.56,154.27],[1147.04,1150.66,149.56,154.27,149.56,154.27],[1150.66,1181.24,149.56,154.27,123.6,110.35],[1181.24,1185.31,123.6,110.35,123.6,110.35],[1185.31,1230.18,123.6,110.35,97.12,189.68],[1230.18,1231.08,97.12,189.68,97.12,189.68],[1231.08,1281.73,97.12,189.68,164.92,123.93],[1281.73,1290.97,164.92,123.93,164.92,123.93],[1290.97,1508.08,164.92,123.93,54.42,123.59],[1508.08,1512.48,54.42,123.59,54.42,123.59],[1512.48,1522.0,54.42,123.59,48.97,128.57],[1522.0,1531.02,48.97,128.57,48.97,128.57],[1531.02,1563.64,48.97,128.57,7.5,166.98],[1563.64,1565.17,7.5,166.98,7.5,166.98],[1565.17,1643.0,7.5,166.98,162.31,182.16],[1643.0,1648.05,162.31,182.16,162.31,182.16],[1648.05,1726.3,162.31,182.16,48.37,110.21],[1726.3,1727.72,48.37,110.21,48.37,110.21],[1727.72,1783.98,48.37,110.21,123.44,135.62],[1783.98,1792.84,123.44,135.62,123.44,135.62],[1792.84,1854.35,123.44,135.62,64.2,122.33],[1854.35,1854.45,64.2,122.33,64.2,122.33],[1854.45,1877.68,64.2,122.33,107.74,130.26],[1877.68,1885.36,107.74,130.26,107.74,130.26],[1885.36,1917.51,107.74,130.26,72.92,139.85],[1917.51,1922.92,72.92,139.85,72.92,139.85],[1922.92,2032.43,72.92,139.85,4.3,63.96],[2032.43,2038.32,4.3,63.96,4.3,63.96],[2038.32,2064.75,4.3,63.96,4.0,17.61],[2064.75,2074.2,4.0,17.61,4.0,17.61],[2074.2,2148.24,4.0,17.61,57.42,139.58],[2148.24,2151.91,57.42,139.58,57.42,139.58],[2151.91,2183.3,57.42,139.58,117.5,142.59],[2183.3,2190.76,117.5,142.59,117.5,142.59],[2190.76,2219.58,117.5,142.59,62.52,128.53],[2219.58,2220.04,62.52,128.53,62.52,128.53],[2220.04,2394.68,62.52,128.53,167.08,138.75],[2394.68,2402.11,167.08,138.75,167.08,138.75],[2402.11,2490.64,167.08,138.75,51.9,179.35],[2490.64,2492.11,51.9,179.35,51.9,179.35],[2492.11,2646.21,51.9,179.35,3.18,14.32],[2646.21,2655.78,3.18,14.32,3.18,14.32],[2655.78,2684.4,3.18,14.32,29.59,44.03],[2684.4,2686.56,29.59,44.03,29.59,44.03],[2686.56,2735.18,29.59,44.03,93.96,88.16],[2735.18,2736.58,93.96,88.16,93.96,88.16],[2736.58,2889.03,93.96,88.16,157.27,32.77],[2889.03,2893.29,157.27,32.77,157.27,32.77],[2893.29,2972.77,157.27,32.77,38.8,4.0],[2972.77,2974.75,38.8,4.0,38.8,4.0],[2974.75,3027.39,38.8,4.0,123.25,16.7],[3027.39,3034.09,123.25,16.7,123.25,16.7],[3034.09,3297.05,123.25,16.7,144.07,180.53],[3297.05,3298.31,144.07,180.53,144.07,180.53],[3298.31,3509.92,144.07,180.53,27.15,52.41],[3509.92,3510.18,27.15,52.41,27.15,52.41],[3510.18,3586.56,27.15,52.41,144.06,90.06],[3586.56,3594.99,144.06,90.06,144.06,90.06],[3594.99,3615.16,144.06,90.06,140.0,111.14],[3615.16,3620.18,140.0,111.14,140.0,111.14]],"28":[[0.0,283.98,48.38,61.9,195.36,72.01],[283.98,291.77,195.36,72.01,195.36,72.01],[291.77,417.81,195.36,72.01,19.28,84.42],[417.81,425.62,19.28,84.42,19.28,84.42],[425.62,734.57,19.28,84.42,176.18,52.13],[734.57,744.24,176.18,52.13,176.18,52.13],[744.24,771.03,176.18,52.13,179.21,100.71],[771.03,773.18,179.21,100.71,179.21,100.71],[773.18,839.27,179.21,100.71,127.94,11.72],[839.27,839.89,127.94,11.72,127.94,11.72],[839.89,850.02,127.94,11.72,147.21,8.58],[850.02,853.22,147.21,8.58,147.21,8.58],[853.22,930.53,147.21,8.58,160.13,105.28],[930.53,937.24,160.13,105.28,160.13,105.28],[937.24,1087.11,160.13,105.28,56.46,188.14],[1087.11,1097.1,56.46,188.14,56.46,188.14],[1097.1,1163.56,56.46,188.14,4.73,133.05],[1163.56,1171.52,4.73,133.05,4.73,133.05],[1171.52,1309.7,4.73,133.05,177.04,1.65],[1309.7,1319.16,177.04,1.65,177.04,1.65],[1319.16,1398.61,177.04,1.65,29.4,9.98],[1398.61,1405.21,29.4,9.98,29.4,9.98],[1405.21,1471.89,29.4,9.98,111.69,46.54],[1471.89,1477.32,111.69,46.54,111.69,46.54],[1477.32,1491.69,111.69,46.54,92.86,33.0],[1491.69,1493.4,92.86,33.0,92.86,33.0],[1493.4,1578.07,92.86,33.0,8.88,92.15],[1578.07,1586.51,8.88,92.15,8.88,92.15],[1586.51,1653.47,8.88,92.15,84.65,68.76],[1653.47,1658.9,84.65,68.76,84.65,68.76],[1658.9,1754.16,84.65,68.76,160.87,0.54],[1754.16,1756.75,160.87,0.54,160.87,0.54],[1756.75,1833.59,160.87,0.54,77.18,116.67],[1833.59,1835.09,77.18,116.67,77.18,116.67],[1835.09,2003.4,77.18,116.67,168.84,37.5],[2003.4,2010.2,168.84,37.5,168.84,37.5],[2010.2,2091.95,168.84,37.5,172.41,177.02],[2091.95,2099.17,172.41,177.02,172.41,177.02],[2099.17,2165.28,172.41,177.02,192.37,103.14],[2165.28,2173.66,192.37,103.14,192.37,103.14],[2173.66,2258.81,192.37,103.14,71.32,98.59],[2258.81,2266.34,71.32,98.59,71.32,98.59],[2266.34,2357.22,71.32,98.59,134.81,21.72],[2357.22,2358.41,134.81,21.72,134.81,21.72],[2358.41,2407.77,134.81,21.72,114.75,111.87],[2407.77,2413.72,114.75,111.87,114.75,111.87],[2413.72,2550.68,114.75,111.87,66.33,183.91],[2550.68,2555.64,66.33,183.91,66.33,183.91],[2555.64,2628.84,66.33,183.91,195.75,189.18],[2628.84,2638.56,195.75,189.18,195.75,189.18],[2638.56,2720.44,195.75,189.18,61.97,156.22],[2720.44,2725.05,61.97,156.22,61.97,156.22],[2725.05,2778.75,61.97,156.22,1.93,157.06],[2778.75,2788.56,1.93,157.06,1.93,157.06],[2788.56,2855.75,1.93,157.06,36.6,108.5],[2855.75,2856.49,36.6,108.5,36.6,108.5],[2856.49,3036.93,36.6,108.5,160.33,18.47],[3036.93,3045.44,160.33,18.47,160.33,18.47],[3045.44,3079.76,160.33,18.47,117.24,71.87],[3079.76,3084.25,117.24,71.87,117.24,71.87],[3084.25,3136.03,117.24,71.87,124.92,29.28],[3136.03,3138.31,124.92,29.28,124.92,29.28],[3138.31,3190.29,124.92,29.28,109.04,128.74],[3190.29,3191.26,109.04,128.74,109.04,128.74],[3191.26,3297.36,109.04,128.74,43.81,18.07],[3297.36,3304.43,43.81,18.07,43.81,18.07],[3304.43,3393.19,43.81,18.07,137.14,159.66],[3393.19,3400.28,137.14,159.66,137.14,159.66],[3400.28,3464.65,137.14,159.66,199.86,109.45],[3464.65,3465.55,199.86,109.45,199.86,109.45],[3465.55,3531.37,199.86,109.45,150.82,18.94],[3531.37,3536.65,150.82,18.94,150.82,18.94],[3536.65,3609.71,150.82,18.94,199.18,139.37],[3609.71,3617.51,199.18,139.37,199.18,139.37]],"30":[[0.0,60.78,15.08,195.69,119.43,177.46],[60.78,65.9,119.43,177.46,119.43,177.46],[65.9,116.53,119.43,177.46,97.16,128.79],[116.53,124.43,97.16,128.79,97.16,128.79],[124.43,162.39,97.16,128.79,158.16,114.34],[162.39,164.68,158.16,114.34,158.16,114.34],[164.68,257.19,158.16,114.34,20.67,132.59],[257.19,260.57,20.67,132.59,20.67,132.59],[260.57,368.5,20.67,132.59,190.86,100.6],[368.5,376.76,190.86,100.6,190.86,100.6],[376.76,455.02,190.86,100.6,45.18,86.41],[455.02,462.47,45.18,86.41,45.18,86.41],[462.47,550.67,45.18,86.41,6.64,186.12],[550.67,556.87,6.64,186.12,6.64,186.12],[556.87,762.97,6.64,186.12,199.9,191.51],[762.97,768.96,199.9,191.51,199.9,191.51],[768.96,930.55,199.9,191.51,91.55,29.73],[930.55,934.12,91.55,29.73,91.55,29.73],[934.12,980.44,91.55,29.73,137.81,28.85],[980.44,989.83,137.81,28.85,137.81,28.85],[989.83,1047.5,137.81,28.85,131.3,86.37],[1047.5,1050.39,131.3,86.37,131.3,86.37],[1050.39,1069.39,131.3,86.37,116.58,120.58],[1069.39,1070.11,116.58,120.58,116.58,120.58],[1070.11,1102.9,116.58,120.58,175.93,139.97],[1102.9,1109.23,175.93,139.97,175.93,139.97],[1109.23,1169.95,175.93,139.97,76.86,148.65],[1169.95,1171.93,76.86,148.65,76.86,148.65],[1171.93,1260.21,76.86,148.65,163.07,101.55],[1260.21,1269.11,163.07,101.55,163.07,101.55],[1269.11,1395.77,163.07,101.55,21.95,5.52],[1395.77,1403.64,21.95,5.52,21.95,5.52],[1403.64,1483.9,21.95,5.52,157.31,58.75],[1483.9,1489.99,157.31,58.75,157.31,58.75],[1489.99,1671.3,157.31,58.75,46.82,185.1],[1671.3,1677.89,46.82,185.1,46.82,185.1],[1677.89,1795.34,46.82,185.1,47.44,26.39],[1795.34,1798.6,47.44,26.39,47.44,26.39],[1798.6,1910.21,47.44,26.39,194.46,114.11],[1910.21,1913.63,194.46,114.11,194.46,114.11],[1913.63,2048.63,194.46,114.11,119.92,27.48],[2048.63,2056.83,119.92,27.48,119.92,27.48],[2056.83,2109.72,119.92,27.48,144.94,116.63],[2109.72,2114.48,144.94,116.63,144.94,116.63],[2114.48,2373.73,144.94,116.63,19.48,30.78],[2373.73,2383.66,19.48,30.78,19.48,30.78],[2383.66,2412.45,19.48,30.78,21.92,64.79],[2412.45,2418.55,21.92,64.79,21.92,64.79],[2418.55,2478.38,21.92,64.79,22.82,138.6],[2478.38,2487.67,22.82,138.6,22.82,138.6],[2487.67,2691.69,22.82,138.6,128.37,18.67],[2691.69,2699.34,128.37,18.67,128.37,18.67],[2699.34,2786.26,128.37,18.67,153.39,64.71],[2786.26,2786.53,153.39,64.71,153.39,64.71],[2786.53,2811.88,153.39,64.71,138.68,41.66],[2811.88,2816.21,138.68,41.66,138.68,41.66],[2816.21,2929.0,138.68,41.66,13.5,171.22],[2929.0,2933.41,13.5,171.22,13.5,171.22],[2933.41,3069.31,13.5,171.22,155.16,7.03],[3069.31,3071.79,155.16,7.03,155.16,7.03],[3071.79,3171.67,155.16,7.03,146.77,122.3],[3171.67,3180.68,146.77,122.3,146.77,122.3],[3180.68,3196.77,146.77,122.3,138.67,102.94],[3196.77,3205.27,138.67,102.94,138.67,102.94],[3205.27,3275.37,138.67,102.94,69.82,192.75],[3275.37,3284.62,69.82,192.75,69.82,192.75],[3284.62,3325.26,69.82,192.75,70.12,116.59],[3325.26,3333.52,70.12,116.59,70.12,116.59],[3333.52,3403.13,70.12,116.59,196.71,61.15],[3403.13,3404.46,196.71,61.15,196.71,61.15],[3404.46,3717.5,196.71,61.15,73.26,167.53],[3717.5,3723.38,73.26,167.53,73.26,167.53]]};
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
