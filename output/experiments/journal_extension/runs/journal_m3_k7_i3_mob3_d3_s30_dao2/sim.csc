<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i3_mob3_d3_s30_dao2</title>
    <randomseed>30</randomseed>
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
          <pos x="137.16" y="140.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="7.13" y="167.59" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="56.08" y="2.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="166.00" y="18.61" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="158.99" y="49.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="162.36" y="107.79" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="143.18" y="198.56" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="88.39" y="10.53" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
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
          <pos x="46.15" y="129.64" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="65.74" y="85.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="142.98" y="15.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="113.76" y="138.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="117.97" y="173.56" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="40.38" y="108.96" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="142.76" y="88.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="190.62" y="66.70" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="113.70" y="0.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="2.38" y="187.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="147.24" y="78.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="128.32" y="91.51" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="36.00" y="155.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="22.71" y="66.87" />
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
          <pos x="142.34" y="130.61" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="24.16" y="104.55" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="49.43" y="183.73" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="150.33" y="110.52" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="132.49" y="29.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="59.73" y="147.82" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="40.68" y="105.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"2":[[0.0,158.17,137.16,140.48,83.28,199.44],[158.17,165.42,83.28,199.44,83.28,199.44],[165.42,254.05,83.28,199.44,12.63,110.92],[254.05,254.98,12.63,110.92,12.63,110.92],[254.98,307.51,12.63,110.92,51.6,90.43],[307.51,315.81,51.6,90.43,51.6,90.43],[315.81,428.07,51.6,90.43,126.7,135.44],[428.07,434.3,126.7,135.44,126.7,135.44],[434.3,495.22,126.7,135.44,196.28,63.5],[495.22,498.49,196.28,63.5,196.28,63.5],[498.49,599.97,196.28,63.5,138.91,174.82],[599.97,609.37,138.91,174.82,138.91,174.82],[609.37,877.43,138.91,174.82,150.44,23.06],[877.43,880.52,150.44,23.06,150.44,23.06],[880.52,934.84,150.44,23.06,62.46,22.18],[934.84,944.13,62.46,22.18,62.46,22.18],[944.13,1030.11,62.46,22.18,58.22,142.41],[1030.11,1032.19,58.22,142.41,58.22,142.41],[1032.19,1060.75,58.22,142.41,77.29,184.17],[1060.75,1065.63,77.29,184.17,77.29,184.17],[1065.63,1097.27,77.29,184.17,52.47,196.42],[1097.27,1103.28,52.47,196.42,52.47,196.42],[1103.28,1120.67,52.47,196.42,54.27,179.25],[1120.67,1121.99,54.27,179.25,54.27,179.25],[1121.99,1149.41,54.27,179.25,43.83,134.1],[1149.41,1151.61,43.83,134.1,43.83,134.1],[1151.61,1184.92,43.83,134.1,47.49,71.68],[1184.92,1188.55,47.49,71.68,47.49,71.68],[1188.55,1253.25,47.49,71.68,151.92,9.77],[1253.25,1262.74,151.92,9.77,151.92,9.77],[1262.74,1339.34,151.92,9.77,164.68,87.78],[1339.34,1343.68,164.68,87.78,164.68,87.78],[1343.68,1425.01,164.68,87.78,149.49,169.15],[1425.01,1425.99,149.49,169.15,149.49,169.15],[1425.99,1474.05,149.49,169.15,127.77,121.52],[1474.05,1474.95,127.77,121.52,127.77,121.52],[1474.95,1499.1,127.77,121.52,145.46,94.82],[1499.1,1500.97,145.46,94.82,145.46,94.82],[1500.97,1574.89,145.46,94.82,88.17,180.53],[1574.89,1584.35,88.17,180.53,88.17,180.53],[1584.35,1724.01,88.17,180.53,8.86,34.45],[1724.01,1726.14,8.86,34.45,8.86,34.45],[1726.14,1794.26,8.86,34.45,79.24,13.76],[1794.26,1804.13,79.24,13.76,79.24,13.76],[1804.13,1869.91,79.24,13.76,113.34,49.37],[1869.91,1871.21,113.34,49.37,113.34,49.37],[1871.21,1914.94,113.34,49.37,112.65,99.62],[1914.94,1918.48,112.65,99.62,112.65,99.62],[1918.48,1976.19,112.65,99.62,20.18,37.57],[1976.19,1982.61,20.18,37.57,20.18,37.57],[1982.61,2302.62,20.18,37.57,171.6,125.27],[2302.62,2306.57,171.6,125.27,171.6,125.27],[2306.57,2649.16,171.6,125.27,0.54,176.73],[2649.16,2653.38,0.54,176.73,0.54,176.73],[2653.38,2918.53,0.54,176.73,112.94,49.44],[2918.53,2927.68,112.94,49.44,112.94,49.44],[2927.68,3022.07,112.94,49.44,148.02,116.37],[3022.07,3030.11,148.02,116.37,148.02,116.37],[3030.11,3109.73,148.02,116.37,123.75,71.38],[3109.73,3111.18,123.75,71.38,123.75,71.38],[3111.18,3183.94,123.75,71.38,198.14,123.35],[3183.94,3187.77,198.14,123.35,198.14,123.35],[3187.77,3288.96,198.14,123.35,123.79,113.11],[3288.96,3292.39,123.79,113.11,123.79,113.11],[3292.39,3365.46,123.79,113.11,189.15,33.93],[3365.46,3366.06,189.15,33.93,189.15,33.93],[3366.06,3418.95,189.15,33.93,170.9,119.13],[3418.95,3422.51,170.9,119.13,170.9,119.13],[3422.51,3597.76,170.9,119.13,43.66,81.11],[3597.76,3602.55,43.66,81.11,43.66,81.11]],"3":[[0.0,47.49,7.13,167.59,43.95,150.36],[47.49,49.07,43.95,150.36,43.95,150.36],[49.07,90.56,43.95,150.36,87.21,138.16],[90.56,94.3,87.21,138.16,87.21,138.16],[94.3,225.75,87.21,138.16,199.89,84.32],[225.75,228.7,199.89,84.32,199.89,84.32],[228.7,336.73,199.89,84.32,14.82,76.48],[336.73,339.85,14.82,76.48,14.82,76.48],[339.85,361.78,14.82,76.48,31.92,62.73],[361.78,362.91,31.92,62.73,31.92,62.73],[362.91,413.0,31.92,62.73,110.11,5.63],[413.0,416.4,110.11,5.63,110.11,5.63],[416.4,501.19,110.11,5.63,25.55,61.8],[501.19,508.11,25.55,61.8,25.55,61.8],[508.11,580.27,25.55,61.8,95.89,41.51],[580.27,584.3,95.89,41.51,95.89,41.51],[584.3,663.89,95.89,41.51,107.18,176.63],[663.89,673.81,107.18,176.63,107.18,176.63],[673.81,708.38,107.18,176.63,164.74,138.79],[708.38,711.94,164.74,138.79,164.74,138.79],[711.94,782.79,164.74,138.79,127.87,191.53],[782.79,790.26,127.87,191.53,127.87,191.53],[790.26,855.62,127.87,191.53,84.2,90.55],[855.62,861.32,84.2,90.55,84.2,90.55],[861.32,924.35,84.2,90.55,195.71,117.7],[924.35,932.54,195.71,117.7,195.71,117.7],[932.54,1117.72,195.71,117.7,52.56,14.11],[1117.72,1123.99,52.56,14.11,52.56,14.11],[1123.99,1296.43,52.56,14.11,91.73,115.99],[1296.43,1300.17,91.73,115.99,91.73,115.99],[1300.17,1332.51,91.73,115.99,57.47,135.27],[1332.51,1335.9,57.47,135.27,57.47,135.27],[1335.9,1361.43,57.47,135.27,29.22,133.25],[1361.43,1364.14,29.22,133.25,29.22,133.25],[1364.14,1430.67,29.22,133.25,68.09,11.14],[1430.67,1439.71,68.09,11.14,68.09,11.14],[1439.71,1535.93,68.09,11.14,192.54,17.66],[1535.93,1543.33,192.54,17.66,192.54,17.66],[1543.33,1728.41,192.54,17.66,120.18,169.42],[1728.41,1728.82,120.18,169.42,120.18,169.42],[1728.82,1764.3,120.18,169.42,172.04,165.67],[1764.3,1772.73,172.04,165.67,172.04,165.67],[1772.73,1837.1,172.04,165.67,80.61,102.48],[1837.1,1841.61,80.61,102.48,80.61,102.48],[1841.61,1889.36,80.61,102.48,121.04,130.92],[1889.36,1890.92,121.04,130.92,121.04,130.92],[1890.92,1919.44,121.04,130.92,117.96,98.43],[1919.44,1920.42,117.96,98.43,117.96,98.43],[1920.42,1999.51,117.96,98.43,111.31,11.66],[1999.51,2000.85,111.31,11.66,111.31,11.66],[2000.85,2075.32,111.31,11.66,83.04,57.56],[2075.32,2081.76,83.04,57.56,83.04,57.56],[2081.76,2085.9,83.04,57.56,77.19,58.12],[2085.9,2086.09,77.19,58.12,77.19,58.12],[2086.09,2098.11,77.19,58.12,76.6,35.71],[2098.11,2104.89,76.6,35.71,76.6,35.71],[2104.89,2190.89,76.6,35.71,148.95,95.28],[2190.89,2192.05,148.95,95.28,148.95,95.28],[2192.05,2218.84,148.95,95.28,168.74,101.69],[2218.84,2220.63,168.74,101.69,168.74,101.69],[2220.63,2283.36,168.74,101.69,150.74,131.16],[2283.36,2285.52,150.74,131.16,150.74,131.16],[2285.52,2375.33,150.74,131.16,51.32,162.37],[2375.33,2384.87,51.32,162.37,51.32,162.37],[2384.87,2422.24,51.32,162.37,101.15,160.17],[2422.24,2430.47,101.15,160.17,101.15,160.17],[2430.47,2445.76,101.15,160.17,112.19,172.97],[2445.76,2450.77,112.19,172.97,112.19,172.97],[2450.77,2515.37,112.19,172.97,79.24,104.82],[2515.37,2522.43,79.24,104.82,79.24,104.82],[2522.43,2676.94,79.24,104.82,87.51,7.02],[2676.94,2679.55,87.51,7.02,87.51,7.02],[2679.55,2753.39,87.51,7.02,170.51,16.7],[2753.39,2763.11,170.51,16.7,170.51,16.7],[2763.11,2905.36,170.51,16.7,25.78,179.82],[2905.36,2905.91,25.78,179.82,25.78,179.82],[2905.91,2985.55,25.78,179.82,108.51,150.21],[2985.55,2993.83,108.51,150.21,108.51,150.21],[2993.83,3131.18,108.51,150.21,43.42,111.36],[3131.18,3140.53,43.42,111.36,43.42,111.36],[3140.53,3145.68,43.42,111.36,52.65,109.9],[3145.68,3151.63,52.65,109.9,52.65,109.9],[3151.63,3209.85,52.65,109.9,138.38,90.84],[3209.85,3217.35,138.38,90.84,138.38,90.84],[3217.35,3441.8,138.38,90.84,16.78,40.72],[3441.8,3444.21,16.78,40.72,16.78,40.72],[3444.21,3552.66,16.78,40.72,173.21,13.6],[3552.66,3559.32,173.21,13.6,173.21,13.6],[3559.32,3756.0,173.21,13.6,36.78,73.03],[3756.0,3761.35,36.78,73.03,36.78,73.03]],"8":[[0.0,52.19,56.08,2.16,93.94,83.63],[52.19,56.34,93.94,83.63,93.94,83.63],[56.34,105.4,93.94,83.63,175.39,78.15],[105.4,115.01,175.39,78.15,175.39,78.15],[115.01,210.67,175.39,78.15,40.98,61.04],[210.67,211.7,40.98,61.04,40.98,61.04],[211.7,294.9,40.98,61.04,112.15,15.27],[294.9,299.93,112.15,15.27,112.15,15.27],[299.93,387.53,112.15,15.27,0.62,147.17],[387.53,393.82,0.62,147.17,0.62,147.17],[393.82,438.03,0.62,147.17,85.53,141.17],[438.03,440.35,85.53,141.17,85.53,141.17],[440.35,549.04,85.53,141.17,115.05,51.57],[549.04,555.85,115.05,51.57,115.05,51.57],[555.85,602.39,115.05,51.57,159.05,8.49],[602.39,606.69,159.05,8.49,159.05,8.49],[606.69,631.81,159.05,8.49,114.93,26.48],[631.81,639.81,114.93,26.48,114.93,26.48],[639.81,775.84,114.93,26.48,174.95,191.92],[775.84,785.24,174.95,191.92,174.95,191.92],[785.24,957.89,174.95,191.92,34.99,32.87],[957.89,962.54,34.99,32.87,34.99,32.87],[962.54,1256.04,34.99,32.87,136.07,166.51],[1256.04,1263.24,136.07,166.51,136.07,166.51],[1263.24,1434.41,136.07,166.51,37.93,106.75],[1434.41,1441.58,37.93,106.75,37.93,106.75],[1441.58,1462.83,37.93,106.75,63.65,75.47],[1462.83,1469.48,63.65,75.47,63.65,75.47],[1469.48,1496.13,63.65,75.47,77.22,46.96],[1496.13,1502.06,77.22,46.96,77.22,46.96],[1502.06,1565.12,77.22,46.96,190.39,53.4],[1565.12,1570.51,190.39,53.4,190.39,53.4],[1570.51,1706.91,190.39,53.4,62.63,140.23],[1706.91,1712.67,62.63,140.23,62.63,140.23],[1712.67,1800.33,62.63,140.23,145.02,113.07],[1800.33,1803.8,145.02,113.07,145.02,113.07],[1803.8,1849.69,145.02,113.07,116.76,116.59],[1849.69,1858.28,116.76,116.59,116.76,116.59],[1858.28,1905.76,116.76,116.59,159.78,157.24],[1905.76,1914.78,159.78,157.24,159.78,157.24],[1914.78,2002.18,159.78,157.24,23.34,86.27],[2002.18,2004.54,23.34,86.27,23.34,86.27],[2004.54,2084.18,23.34,86.27,135.96,170.82],[2084.18,2092.34,135.96,170.82,135.96,170.82],[2092.34,2159.7,135.96,170.82,132.72,60.51],[2159.7,2163.82,132.72,60.51,132.72,60.51],[2163.82,2202.4,132.72,60.51,156.37,127.6],[2202.4,2207.67,156.37,127.6,156.37,127.6],[2207.67,2341.91,156.37,127.6,24.57,86.98],[2341.91,2342.26,24.57,86.98,24.57,86.98],[2342.26,2461.67,24.57,86.98,186.48,86.45],[2461.67,2468.31,186.48,86.45,186.48,86.45],[2468.31,2516.94,186.48,86.45,129.89,33.69],[2516.94,2524.07,129.89,33.69,129.89,33.69],[2524.07,2532.81,129.89,33.69,139.08,30.0],[2532.81,2539.51,139.08,30.0,139.08,30.0],[2539.51,2647.36,139.08,30.0,93.4,169.78],[2647.36,2647.47,93.4,169.78,93.4,169.78],[2647.47,2737.15,93.4,169.78,180.19,47.39],[2737.15,2740.76,180.19,47.39,180.19,47.39],[2740.76,2974.33,180.19,47.39,55.51,161.5],[2974.33,2982.83,55.51,161.5,55.51,161.5],[2982.83,3045.78,55.51,161.5,88.82,91.15],[3045.78,3053.6,88.82,91.15,88.82,91.15],[3053.6,3130.34,88.82,91.15,3.45,15.88],[3130.34,3134.63,3.45,15.88,3.45,15.88],[3134.63,3174.72,3.45,15.88,27.65,67.0],[3174.72,3184.01,27.65,67.0,27.65,67.0],[3184.01,3329.74,27.65,67.0,166.51,48.8],[3329.74,3339.14,166.51,48.8,166.51,48.8],[3339.14,3460.96,166.51,48.8,102.92,163.44],[3460.96,3465.44,102.92,163.44,102.92,163.44],[3465.44,3608.54,102.92,163.44,179.23,23.68],[3608.54,3611.45,179.23,23.68,179.23,23.68]],"9":[[0.0,35.45,166.0,18.61,127.21,31.28],[35.45,42.23,127.21,31.28,127.21,31.28],[42.23,181.96,127.21,31.28,19.08,185.42],[181.96,185.32,19.08,185.42,19.08,185.42],[185.32,294.0,19.08,185.42,149.85,189.0],[294.0,301.25,149.85,189.0,149.85,189.0],[301.25,495.1,149.85,189.0,176.81,70.12],[495.1,501.37,176.81,70.12,176.81,70.12],[501.37,550.93,176.81,70.12,132.2,31.67],[550.93,558.42,132.2,31.67,132.2,31.67],[558.42,643.32,132.2,31.67,87.93,185.8],[643.32,649.37,87.93,185.8,87.93,185.8],[649.37,778.38,87.93,185.8,3.51,43.14],[778.38,778.74,3.51,43.14,3.51,43.14],[778.74,1012.39,3.51,43.14,177.62,197.38],[1012.39,1015.49,177.62,197.38,177.62,197.38],[1015.49,1158.2,177.62,197.38,96.16,101.08],[1158.2,1163.91,96.16,101.08,96.16,101.08],[1163.91,1205.35,96.16,101.08,65.38,77.63],[1205.35,1208.75,65.38,77.63,65.38,77.63],[1208.75,1294.32,65.38,77.63,195.63,122.97],[1294.32,1296.94,195.63,122.97,195.63,122.97],[1296.94,1346.29,195.63,122.97,142.87,47.81],[1346.29,1347.46,142.87,47.81,142.87,47.81],[1347.46,1429.9,142.87,47.81,34.72,60.02],[1429.9,1434.73,34.72,60.02,34.72,60.02],[1434.73,1665.88,34.72,60.02,173.74,27.55],[1665.88,1673.81,173.74,27.55,173.74,27.55],[1673.81,1786.56,173.74,27.55,176.49,109.06],[1786.56,1788.56,176.49,109.06,176.49,109.06],[1788.56,1851.7,176.49,109.06,182.25,18.02],[1851.7,1857.74,182.25,18.02,182.25,18.02],[1857.74,1967.12,182.25,18.02,59.57,162.05],[1967.12,1976.0,59.57,162.05,59.57,162.05],[1976.0,1997.53,59.57,162.05,91.76,180.46],[1997.53,2006.83,91.76,180.46,91.76,180.46],[2006.83,2091.94,91.76,180.46,158.93,25.18],[2091.94,2096.47,158.93,25.18,158.93,25.18],[2096.47,2193.25,158.93,25.18,68.76,48.76],[2193.25,2197.08,68.76,48.76,68.76,48.76],[2197.08,2216.4,68.76,48.76,89.73,23.01],[2216.4,2226.14,89.73,23.01,89.73,23.01],[2226.14,2289.19,89.73,23.01,162.82,102.97],[2289.19,2296.35,162.82,102.97,162.82,102.97],[2296.35,2337.84,162.82,102.97,187.08,63.79],[2337.84,2345.78,187.08,63.79,187.08,63.79],[2345.78,2521.1,187.08,63.79,55.88,30.4],[2521.1,2528.82,55.88,30.4,55.88,30.4],[2528.82,2571.15,55.88,30.4,114.56,24.49],[2571.15,2577.39,114.56,24.49,114.56,24.49],[2577.39,2657.99,114.56,24.49,76.7,147.67],[2657.99,2667.26,76.7,147.67,76.7,147.67],[2667.26,2699.44,76.7,147.67,124.24,126.79],[2699.44,2704.98,124.24,126.79,124.24,126.79],[2704.98,2783.1,124.24,126.79,58.76,148.89],[2783.1,2790.35,58.76,148.89,58.76,148.89],[2790.35,2902.97,58.76,148.89,161.12,51.33],[2902.97,2911.09,161.12,51.33,161.12,51.33],[2911.09,2958.38,161.12,51.33,104.37,77.13],[2958.38,2965.4,104.37,77.13,104.37,77.13],[2965.4,3035.27,104.37,77.13,149.01,0.66],[3035.27,3037.35,149.01,0.66,149.01,0.66],[3037.35,3050.44,149.01,0.66,130.64,17.24],[3050.44,3058.44,130.64,17.24,130.64,17.24],[3058.44,3158.03,130.64,17.24,189.29,167.35],[3158.03,3163.89,189.29,167.35,189.29,167.35],[3163.89,3259.48,189.29,167.35,47.56,129.33],[3259.48,3261.72,47.56,129.33,47.56,129.33],[3261.72,3313.21,47.56,129.33,38.63,184.14],[3313.21,3313.91,38.63,184.14,38.63,184.14],[3313.91,3418.58,38.63,184.14,132.65,120.87],[3418.58,3425.61,132.65,120.87,132.65,120.87],[3425.61,3590.55,132.65,120.87,99.77,31.86],[3590.55,3596.12,99.77,31.86,99.77,31.86],[3596.12,3725.74,99.77,31.86,12.87,89.4],[3725.74,3730.39,12.87,89.4,12.87,89.4]],"12":[[0.0,224.8,158.99,49.25,59.32,187.5],[224.8,227.56,59.32,187.5,59.32,187.5],[227.56,289.55,59.32,187.5,99.37,163.04],[289.55,291.6,99.37,163.04,99.37,163.04],[291.6,342.14,99.37,163.04,30.17,163.54],[342.14,350.56,30.17,163.54,30.17,163.54],[350.56,370.26,30.17,163.54,50.51,152.82],[370.26,378.95,50.51,152.82,50.51,152.82],[378.95,597.73,50.51,152.82,153.97,25.53],[597.73,601.31,153.97,25.53,153.97,25.53],[601.31,620.43,153.97,25.53,120.22,19.29],[620.43,624.28,120.22,19.29,120.22,19.29],[624.28,661.01,120.22,19.29,157.9,57.61],[661.01,668.24,157.9,57.61,157.9,57.61],[668.24,708.3,157.9,57.61,90.79,28.57],[708.3,716.88,90.79,28.57,90.79,28.57],[716.88,828.36,90.79,28.57,25.63,172.37],[828.36,835.26,25.63,172.37,25.63,172.37],[835.26,910.23,25.63,172.37,143.14,98.74],[910.23,916.38,143.14,98.74,143.14,98.74],[916.38,952.78,143.14,98.74,163.08,151.37],[952.78,962.37,163.08,151.37,163.08,151.37],[962.37,1123.05,163.08,151.37,52.19,133.45],[1123.05,1130.09,52.19,133.45,52.19,133.45],[1130.09,1204.33,52.19,133.45,79.48,34.46],[1204.33,1212.88,79.48,34.46,79.48,34.46],[1212.88,1276.13,79.48,34.46,155.94,119.67],[1276.13,1283.27,155.94,119.67,155.94,119.67],[1283.27,1334.48,155.94,119.67,174.41,74.92],[1334.48,1335.29,174.41,74.92,174.41,74.92],[1335.29,1427.28,174.41,74.92,77.87,52.61],[1427.28,1427.66,77.87,52.61,77.87,52.61],[1427.66,1469.57,77.87,52.61,37.85,103.79],[1469.57,1472.81,37.85,103.79,37.85,103.79],[1472.81,1628.81,37.85,103.79,83.05,188.83],[1628.81,1634.75,83.05,188.83,83.05,188.83],[1634.75,1695.42,83.05,188.83,107.06,110.26],[1695.42,1700.16,107.06,110.26,107.06,110.26],[1700.16,1743.46,107.06,110.26,33.56,115.63],[1743.46,1750.45,33.56,115.63,33.56,115.63],[1750.45,1817.83,33.56,115.63,0.94,58.07],[1817.83,1820.16,0.94,58.07,0.94,58.07],[1820.16,2160.71,0.94,58.07,174.74,125.57],[2160.71,2163.32,174.74,125.57,174.74,125.57],[2163.32,2290.0,174.74,125.57,58.05,183.36],[2290.0,2293.62,58.05,183.36,58.05,183.36],[2293.62,2371.14,58.05,183.36,115.67,64.06],[2371.14,2376.0,115.67,64.06,115.67,64.06],[2376.0,2430.12,115.67,64.06,128.5,161.79],[2430.12,2434.33,128.5,161.79,128.5,161.79],[2434.33,2501.91,128.5,161.79,72.94,103.62],[2501.91,2504.57,72.94,103.62,72.94,103.62],[2504.57,2573.54,72.94,103.62,150.52,92.05],[2573.54,2576.41,150.52,92.05,150.52,92.05],[2576.41,2613.84,150.52,92.05,147.87,22.46],[2613.84,2623.29,147.87,22.46,147.87,22.46],[2623.29,2722.59,147.87,22.46,191.32,60.97],[2722.59,2727.6,191.32,60.97,191.32,60.97],[2727.6,2766.26,191.32,60.97,130.55,36.54],[2766.26,2773.16,130.55,36.54,130.55,36.54],[2773.16,2903.3,130.55,36.54,187.83,199.94],[2903.3,2911.94,187.83,199.94,187.83,199.94],[2911.94,2986.49,187.83,199.94,91.52,98.23],[2986.49,2995.51,91.52,98.23,91.52,98.23],[2995.51,3013.04,91.52,98.23,102.56,67.2],[3013.04,3022.64,102.56,67.2,102.56,67.2],[3022.64,3067.72,102.56,67.2,166.68,127.51],[3067.72,3070.77,166.68,127.51,166.68,127.51],[3070.77,3221.06,166.68,127.51,49.43,114.03],[3221.06,3223.62,49.43,114.03,49.43,114.03],[3223.62,3293.53,49.43,114.03,146.67,159.24],[3293.53,3299.01,146.67,159.24,146.67,159.24],[3299.01,3372.53,146.67,159.24,171.04,90.8],[3372.53,3377.86,171.04,90.8,171.04,90.8],[3377.86,3392.06,171.04,90.8,179.91,102.18],[3392.06,3393.84,179.91,102.18,179.91,102.18],[3393.84,3507.59,179.91,102.18,103.63,16.1],[3507.59,3515.23,103.63,16.1,103.63,16.1],[3515.23,3568.96,103.63,16.1,110.58,114.49],[3568.96,3572.43,110.58,114.49,110.58,114.49],[3572.43,3709.59,110.58,114.49,152.55,23.46],[3709.59,3711.22,152.55,23.46,152.55,23.46]],"20":[[0.0,98.97,162.36,107.79,128.35,152.22],[98.97,105.61,128.35,152.22,128.35,152.22],[105.61,148.61,128.35,152.22,154.69,114.42],[148.61,152.97,154.69,114.42,154.69,114.42],[152.97,177.34,154.69,114.42,146.29,162.09],[177.34,184.77,146.29,162.09,146.29,162.09],[184.77,264.12,146.29,162.09,57.57,122.58],[264.12,266.42,57.57,122.58,57.57,122.58],[266.42,293.99,57.57,122.58,72.61,139.72],[293.99,294.09,72.61,139.72,72.61,139.72],[294.09,312.96,72.61,139.72,63.34,160.93],[312.96,318.76,63.34,160.93,63.34,160.93],[318.76,451.47,63.34,160.93,79.24,62.31],[451.47,457.75,79.24,62.31,79.24,62.31],[457.75,523.58,79.24,62.31,10.65,33.27],[523.58,525.92,10.65,33.27,10.65,33.27],[525.92,787.42,10.65,33.27,197.41,27.29],[787.42,796.19,197.41,27.29,197.41,27.29],[796.19,940.67,197.41,27.29,44.95,71.94],[940.67,948.33,44.95,71.94,44.95,71.94],[948.33,1022.63,44.95,71.94,72.65,12.12],[1022.63,1027.69,72.65,12.12,72.65,12.12],[1027.69,1046.92,72.65,12.12,44.46,0.83],[1046.92,1051.48,44.46,0.83,44.46,0.83],[1051.48,1076.35,44.46,0.83,7.2,16.54],[1076.35,1085.98,7.2,16.54,7.2,16.54],[1085.98,1130.52,7.2,16.54,69.71,62.34],[1130.52,1139.51,69.71,62.34,69.71,62.34],[1139.51,1179.88,69.71,62.34,101.75,103.54],[1179.88,1182.57,101.75,103.54,101.75,103.54],[1182.57,1222.21,101.75,103.54,134.16,86.34],[1222.21,1224.21,134.16,86.34,134.16,86.34],[1224.21,1278.54,134.16,86.34,157.77,53.08],[1278.54,1281.64,157.77,53.08,157.77,53.08],[1281.64,1302.57,157.77,53.08,135.02,39.59],[1302.57,1306.09,135.02,39.59,135.02,39.59],[1306.09,1376.63,135.02,39.59,114.88,149.2],[1376.63,1379.18,114.88,149.2,114.88,149.2],[1379.18,1387.92,114.88,149.2,112.6,139.13],[1387.92,1392.69,112.6,139.13,112.6,139.13],[1392.69,1504.02,112.6,139.13,199.88,0.05],[1504.02,1512.5,199.88,0.05,199.88,0.05],[1512.5,1916.37,199.88,0.05,43.18,150.6],[1916.37,1919.71,43.18,150.6,43.18,150.6],[1919.71,1956.71,43.18,150.6,34.62,171.26],[1956.71,1962.48,34.62,171.26,34.62,171.26],[1962.48,2027.12,34.62,171.26,40.64,73.43],[2027.12,2034.15,40.64,73.43,40.64,73.43],[2034.15,2073.72,40.64,73.43,91.99,28.7],[2073.72,2079.5,91.99,28.7,91.99,28.7],[2079.5,2218.55,91.99,28.7,183.68,89.83],[2218.55,2226.01,183.68,89.83,183.68,89.83],[2226.01,2347.59,183.68,89.83,61.03,87.95],[2347.59,2353.32,61.03,87.95,61.03,87.95],[2353.32,2426.02,61.03,87.95,28.13,190.19],[2426.02,2433.06,28.13,190.19,28.13,190.19],[2433.06,2562.96,28.13,190.19,177.97,138.11],[2562.96,2570.31,177.97,138.11,177.97,138.11],[2570.31,2865.49,177.97,138.11,5.27,181.02],[2865.49,2870.39,5.27,181.02,5.27,181.02],[2870.39,2936.58,5.27,181.02,7.15,114.74],[2936.58,2945.51,7.15,114.74,7.15,114.74],[2945.51,3037.75,7.15,114.74,117.96,80.16],[3037.75,3047.06,117.96,80.16,117.96,80.16],[3047.06,3101.58,117.96,80.16,151.4,148.99],[3101.58,3109.69,151.4,148.99,151.4,148.99],[3109.69,3266.41,151.4,148.99,33.6,30.04],[3266.41,3274.11,33.6,30.04,33.6,30.04],[3274.11,3399.33,33.6,30.04,137.76,130.68],[3399.33,3405.51,137.76,130.68,137.76,130.68],[3405.51,3446.1,137.76,130.68,184.15,196.16],[3446.1,3451.14,184.15,196.16,184.15,196.16],[3451.14,3562.28,184.15,196.16,99.36,103.54],[3562.28,3567.59,99.36,103.54,99.36,103.54],[3567.59,3623.47,99.36,103.54,71.08,186.03],[3623.47,3629.62,71.08,186.03,71.08,186.03]],"21":[[0.0,187.45,143.18,198.56,36.8,145.25],[187.45,194.52,36.8,145.25,36.8,145.25],[194.52,235.47,36.8,145.25,81.97,121.81],[235.47,242.82,81.97,121.81,81.97,121.81],[242.82,289.62,81.97,121.81,166.29,147.93],[289.62,297.53,166.29,147.93,166.29,147.93],[297.53,322.28,166.29,147.93,121.39,138.63],[322.28,331.3,121.39,138.63,121.39,138.63],[331.3,438.48,121.39,138.63,101.54,49.75],[438.48,442.8,101.54,49.75,101.54,49.75],[442.8,555.04,101.54,49.75,89.17,198.75],[555.04,555.28,89.17,198.75,89.17,198.75],[555.28,575.73,89.17,198.75,72.27,163.05],[575.73,577.23,72.27,163.05,72.27,163.05],[577.23,688.47,72.27,163.05,180.87,176.38],[688.47,691.41,180.87,176.38,180.87,176.38],[691.41,805.77,180.87,176.38,60.59,61.73],[805.77,811.78,60.59,61.73,60.59,61.73],[811.78,941.62,60.59,61.73,61.22,147.83],[941.62,951.03,61.22,147.83,61.22,147.83],[951.03,1029.43,61.22,147.83,148.58,26.7],[1029.43,1032.06,148.58,26.7,148.58,26.7],[1032.06,1088.73,148.58,26.7,154.83,55.23],[1088.73,1093.4,154.83,55.23,154.83,55.23],[1093.4,1191.09,154.83,55.23,9.64,70.09],[1191.09,1191.67,9.64,70.09,9.64,70.09],[1191.67,1273.49,9.64,70.09,36.22,173.96],[1273.49,1281.62,36.22,173.96,36.22,173.96],[1281.62,1313.31,36.22,173.96,8.02,131.01],[1313.31,1318.52,8.02,131.01,8.02,131.01],[1318.52,1392.98,8.02,131.01,27.04,34.8],[1392.98,1400.57,27.04,34.8,27.04,34.8],[1400.57,1562.38,27.04,34.8,1.47,176.66],[1562.38,1569.34,1.47,176.66,1.47,176.66],[1569.34,1727.95,1.47,176.66,187.46,102.6],[1727.95,1732.57,187.46,102.6,187.46,102.6],[1732.57,1765.79,187.46,102.6,131.7,105.33],[1765.79,1770.96,131.7,105.33,131.7,105.33],[1770.96,1900.94,131.7,105.33,93.73,52.4],[1900.94,1903.52,93.73,52.4,93.73,52.4],[1903.52,1967.99,93.73,52.4,151.16,165.64],[1967.99,1971.0,151.16,165.64,151.16,165.64],[1971.0,2076.33,151.16,165.64,10.7,37.33],[2076.33,2084.56,10.7,37.33,10.7,37.33],[2084.56,2443.2,10.7,37.33,169.91,136.9],[2443.2,2450.15,169.91,136.9,169.91,136.9],[2450.15,2485.97,169.91,136.9,115.02,119.01],[2485.97,2495.51,115.02,119.01,115.02,119.01],[2495.51,2568.4,115.02,119.01,161.81,10.38],[2568.4,2571.11,161.81,10.38,161.81,10.38],[2571.11,2739.22,161.81,10.38,107.12,191.33],[2739.22,2745.66,107.12,191.33,107.12,191.33],[2745.66,2815.07,107.12,191.33,73.36,64.56],[2815.07,2823.09,73.36,64.56,73.36,64.56],[2823.09,2896.75,73.36,64.56,2.23,79.85],[2896.75,2902.09,2.23,79.85,2.23,79.85],[2902.09,3054.12,2.23,79.85,90.61,178.56],[3054.12,3060.33,90.61,178.56,90.61,178.56],[3060.33,3125.6,90.61,178.56,186.22,96.05],[3125.6,3133.87,186.22,96.05,186.22,96.05],[3133.87,3324.24,186.22,96.05,24.62,13.42],[3324.24,3330.63,24.62,13.42,24.62,13.42],[3330.63,3346.83,24.62,13.42,48.25,18.05],[3346.83,3352.26,48.25,18.05,48.25,18.05],[3352.26,3462.67,48.25,18.05,112.75,189.63],[3462.67,3472.04,112.75,189.63,112.75,189.63],[3472.04,3566.86,112.75,189.63,29.35,58.99],[3566.86,3571.3,29.35,58.99,29.35,58.99],[3571.3,3669.64,29.35,58.99,189.63,117.02],[3669.64,3677.26,189.63,117.02,189.63,117.02]],"26":[[0.0,128.71,40.68,105.23,6.04,28.3],[128.71,137.35,6.04,28.3,6.04,28.3],[137.35,272.86,6.04,28.3,99.91,173.98],[272.86,276.89,99.91,173.98,99.91,173.98],[276.89,440.27,99.91,173.98,0.12,17.19],[440.27,445.85,0.12,17.19,0.12,17.19],[445.85,577.52,0.12,17.19,190.3,43.56],[577.52,578.74,190.3,43.56,190.3,43.56],[578.74,621.65,190.3,43.56,178.84,69.22],[621.65,622.36,178.84,69.22,178.84,69.22],[622.36,717.48,178.84,69.22,51.66,114.14],[717.48,726.3,51.66,114.14,51.66,114.14],[726.3,766.09,51.66,114.14,87.44,98.99],[766.09,773.46,87.44,98.99,87.44,98.99],[773.46,852.17,87.44,98.99,13.01,126.99],[852.17,857.97,13.01,126.99,13.01,126.99],[857.97,919.09,13.01,126.99,25.39,82.29],[919.09,926.01,25.39,82.29,25.39,82.29],[926.01,953.67,25.39,82.29,45.47,44.47],[953.67,961.74,45.47,44.47,45.47,44.47],[961.74,998.37,45.47,44.47,69.89,18.78],[998.37,999.27,69.89,18.78,69.89,18.78],[999.27,1028.31,69.89,18.78,121.37,11.41],[1028.31,1032.8,121.37,11.41,121.37,11.41],[1032.8,1154.92,121.37,11.41,87.93,176.18],[1154.92,1164.48,87.93,176.18,87.93,176.18],[1164.48,1301.24,87.93,176.18,53.26,7.03],[1301.24,1305.63,53.26,7.03,53.26,7.03],[1305.63,1469.37,53.26,7.03,98.83,175.46],[1469.37,1473.08,98.83,175.46,98.83,175.46],[1473.08,1644.39,98.83,175.46,120.38,55.32],[1644.39,1649.0,120.38,55.32,120.38,55.32],[1649.0,1829.11,120.38,55.32,80.38,176.41],[1829.11,1832.58,80.38,176.41,80.38,176.41],[1832.58,1914.81,80.38,176.41,191.74,133.79],[1914.81,1916.85,191.74,133.79,191.74,133.79],[1916.85,2011.68,191.74,133.79,77.48,101.86],[2011.68,2021.27,77.48,101.86,77.48,101.86],[2021.27,2077.75,77.48,101.86,73.83,55.76],[2077.75,2078.38,73.83,55.76,73.83,55.76],[2078.38,2138.18,73.83,55.76,158.2,84.72],[2138.18,2143.06,158.2,84.72,158.2,84.72],[2143.06,2179.29,158.2,84.72,141.11,56.55],[2179.29,2181.84,141.11,56.55,141.11,56.55],[2181.84,2327.54,141.11,56.55,55.4,16.82],[2327.54,2333.46,55.4,16.82,55.4,16.82],[2333.46,2417.97,55.4,16.82,103.34,133.08],[2417.97,2422.12,103.34,133.08,103.34,133.08],[2422.12,2460.3,103.34,133.08,94.61,196.74],[2460.3,2463.25,94.61,196.74,94.61,196.74],[2463.25,2706.76,94.61,196.74,50.75,22.9],[2706.76,2715.03,50.75,22.9,50.75,22.9],[2715.03,2929.35,50.75,22.9,58.6,156.78],[2929.35,2930.87,58.6,156.78,58.6,156.78],[2930.87,3073.04,58.6,156.78,192.68,161.62],[3073.04,3080.9,192.68,161.62,192.68,161.62],[3080.9,3127.94,192.68,161.62,151.93,110.11],[3127.94,3128.96,151.93,110.11,151.93,110.11],[3128.96,3244.26,151.93,110.11,166.97,3.59],[3244.26,3253.47,166.97,3.59,166.97,3.59],[3253.47,3325.15,166.97,3.59,171.09,114.23],[3325.15,3330.47,171.09,114.23,171.09,114.23],[3330.47,3382.56,171.09,114.23,90.81,119.42],[3382.56,3387.28,90.81,119.42,90.81,119.42],[3387.28,3425.55,90.81,119.42,76.0,48.27],[3425.55,3432.14,76.0,48.27,76.0,48.27],[3432.14,3561.81,76.0,48.27,149.1,146.57],[3561.81,3564.69,149.1,146.57,149.1,146.57],[3564.69,3575.53,149.1,146.57,156.01,136.33],[3575.53,3583.93,156.01,136.33,156.01,136.33],[3583.93,3801.17,156.01,136.33,6.88,48.69],[3801.17,3801.28,6.88,48.69,6.88,48.69]],"28":[[0.0,49.55,88.39,10.53,92.83,83.78],[49.55,53.94,92.83,83.78,92.83,83.78],[53.94,119.56,92.83,83.78,197.12,147.83],[119.56,121.27,197.12,147.83,197.12,147.83],[121.27,246.21,197.12,147.83,114.54,93.2],[246.21,247.09,114.54,93.2,114.54,93.2],[247.09,390.76,114.54,93.2,88.73,11.8],[390.76,391.05,88.73,11.8,88.73,11.8],[391.05,502.78,88.73,11.8,167.61,114.2],[502.78,512.45,167.61,114.2,167.61,114.2],[512.45,612.52,167.61,114.2,76.28,194.23],[612.52,614.81,76.28,194.23,76.28,194.23],[614.81,673.42,76.28,194.23,163.34,144.51],[673.42,680.66,163.34,144.51,163.34,144.51],[680.66,741.92,163.34,144.51,81.12,164.49],[741.92,746.71,81.12,164.49,81.12,164.49],[746.71,797.21,81.12,164.49,135.21,153.74],[797.21,801.88,135.21,153.74,135.21,153.74],[801.88,876.12,135.21,153.74,62.61,146.87],[876.12,879.2,62.61,146.87,62.61,146.87],[879.2,959.8,62.61,146.87,140.75,98.85],[959.8,963.97,140.75,98.85,140.75,98.85],[963.97,1017.31,140.75,98.85,186.2,78.45],[1017.31,1020.77,186.2,78.45,186.2,78.45],[1020.77,1060.79,186.2,78.45,126.01,116.19],[1060.79,1070.47,126.01,116.19,126.01,116.19],[1070.47,1106.07,126.01,116.19,179.73,135.25],[1106.07,1115.3,179.73,135.25,179.73,135.25],[1115.3,1234.87,179.73,135.25,4.42,65.3],[1234.87,1237.52,4.42,65.3,4.42,65.3],[1237.52,1352.87,4.42,65.3,122.79,17.11],[1352.87,1355.55,122.79,17.11,122.79,17.11],[1355.55,1372.27,122.79,17.11,103.25,41.73],[1372.27,1377.06,103.25,41.73,103.25,41.73],[1377.06,1433.46,103.25,41.73,141.81,18.23],[1433.46,1440.95,141.81,18.23,141.81,18.23],[1440.95,1565.74,141.81,18.23,41.71,58.76],[1565.74,1575.2,41.71,58.76,41.71,58.76],[1575.2,1616.44,41.71,58.76,81.35,23.68],[1616.44,1619.42,81.35,23.68,81.35,23.68],[1619.42,1893.01,81.35,23.68,141.71,153.68],[1893.01,1895.95,141.71,153.68,141.71,153.68],[1895.95,1941.75,141.71,153.68,110.07,119.14],[1941.75,1950.76,110.07,119.14,110.07,119.14],[1950.76,2005.91,110.07,119.14,89.5,58.33],[2005.91,2011.05,89.5,58.33,89.5,58.33],[2011.05,2147.79,89.5,58.33,28.89,138.16],[2147.79,2150.46,28.89,138.16,28.89,138.16],[2150.46,2254.49,28.89,138.16,160.05,87.01],[2254.49,2262.0,160.05,87.01,160.05,87.01],[2262.0,2291.72,160.05,87.01,112.3,53.87],[2291.72,2297.38,112.3,53.87,112.3,53.87],[2297.38,2372.33,112.3,53.87,31.87,180.34],[2372.33,2373.07,31.87,180.34,31.87,180.34],[2373.07,2510.77,31.87,180.34,52.89,39.8],[2510.77,2517.32,52.89,39.8,52.89,39.8],[2517.32,2567.63,52.89,39.8,43.52,123.56],[2567.63,2573.77,43.52,123.56,43.52,123.56],[2573.77,2658.67,43.52,123.56,114.79,33.57],[2658.67,2665.04,114.79,33.57,114.79,33.57],[2665.04,2712.02,114.79,33.57,165.78,58.68],[2712.02,2712.73,165.78,58.68,165.78,58.68],[2712.73,2957.83,165.78,58.68,19.16,127.02],[2957.83,2960.59,19.16,127.02,19.16,127.02],[2960.59,3026.0,19.16,127.02,64.03,148.98],[3026.0,3034.91,64.03,148.98,64.03,148.98],[3034.91,3086.9,64.03,148.98,129.3,181.02],[3086.9,3088.38,129.3,181.02,129.3,181.02],[3088.38,3107.75,129.3,181.02,107.78,157.67],[3107.75,3112.53,107.78,157.67,107.78,157.67],[3112.53,3224.79,107.78,157.67,180.32,37.37],[3224.79,3229.47,180.32,37.37,180.32,37.37],[3229.47,3362.17,180.32,37.37,144.27,176.19],[3362.17,3364.31,144.27,176.19,144.27,176.19],[3364.31,3546.05,144.27,176.19,5.44,128.09],[3546.05,3552.17,5.44,128.09,5.44,128.09],[3552.17,3683.91,5.44,128.09,169.96,152.92],[3683.91,3690.43,169.96,152.92,169.96,152.92]]};
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
