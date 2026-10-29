<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i10_mob3_d0_s29_dao10</title>
    <randomseed>29</randomseed>
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
      <identifier>v_root_d0</identifier>
      <description>v_root_d0</description>
      <source>/home/user/project/build/variants/v_root_d0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d0.cooja</commands>
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
      <identifier>v_journal_atk_dis10_dao10</identifier>
      <description>v_journal_atk_dis10_dao10</description>
      <source>/home/user/project/build/variants/v_journal_atk_dis10_dao10/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_journal_atk_dis10_dao10.cooja</commands>
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
          <pos x="39.46" y="28.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="126.09" y="45.85" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="152.67" y="183.77" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="183.77" y="157.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="160.40" y="1.73" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="147.37" y="4.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="133.10" y="170.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d0_m0</identifier>
      <description>v_cli_d0_m0</description>
      <source>/home/user/project/build/variants/v_cli_d0_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d0_m0.cooja</commands>
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
          <pos x="32.23" y="33.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="142.65" y="18.67" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="109.19" y="181.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="58.58" y="194.88" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="154.21" y="107.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="178.24" y="62.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="163.21" y="8.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.94" y="23.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="132.01" y="197.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="87.63" y="34.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="188.92" y="45.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="19.53" y="131.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="63.96" y="165.65" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="58.25" y="124.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="133.20" y="83.93" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d0_m1</identifier>
      <description>v_cli_d0_m1</description>
      <source>/home/user/project/build/variants/v_cli_d0_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d0_m1.cooja</commands>
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
          <pos x="161.37" y="144.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="49.14" y="156.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="69.81" y="186.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="145.07" y="48.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="18.83" y="17.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.46" y="8.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="171.93" y="113.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"5":[[0.0,49.6,161.37,144.02,192.94,97.08],[49.6,53.18,192.94,97.08,192.94,97.08],[53.18,168.47,192.94,97.08,42.34,81.53],[168.47,174.51,42.34,81.53,42.34,81.53],[174.51,185.02,42.34,81.53,35.13,66.9],[185.02,188.11,35.13,66.9,35.13,66.9],[188.11,506.29,35.13,66.9,196.66,129.94],[506.29,510.25,196.66,129.94,196.66,129.94],[510.25,764.78,196.66,129.94,29.08,1.37],[764.78,765.76,29.08,1.37,29.08,1.37],[765.76,958.05,29.08,1.37,148.13,163.87],[958.05,964.38,148.13,163.87,148.13,163.87],[964.38,989.62,148.13,163.87,111.98,178.61],[989.62,998.9,111.98,178.61,111.98,178.61],[998.9,1009.2,111.98,178.61,105.94,186.59],[1009.2,1015.27,105.94,186.59,105.94,186.59],[1015.27,1351.71,105.94,186.59,41.31,15.01],[1351.71,1357.9,41.31,15.01,41.31,15.01],[1357.9,1472.41,41.31,15.01,24.07,166.21],[1472.41,1476.53,24.07,166.21,24.07,166.21],[1476.53,1696.67,24.07,166.21,183.62,99.96],[1696.67,1697.92,183.62,99.96,183.62,99.96],[1697.92,1726.56,183.62,99.96,159.96,105.09],[1726.56,1726.78,159.96,105.09,159.96,105.09],[1726.78,1807.34,159.96,105.09,53.75,85.75],[1807.34,1813.0,53.75,85.75,53.75,85.75],[1813.0,2032.25,53.75,85.75,1.35,193.03],[2032.25,2033.98,1.35,193.03,1.35,193.03],[2033.98,2143.7,1.35,193.03,143.73,99.07],[2143.7,2148.06,143.73,99.07,143.73,99.07],[2148.06,2253.66,143.73,99.07,134.04,25.68],[2253.66,2256.91,134.04,25.68,134.04,25.68],[2256.91,2347.79,134.04,25.68,37.18,86.79],[2347.79,2351.22,37.18,86.79,37.18,86.79],[2351.22,2373.96,37.18,86.79,71.67,70.3],[2373.96,2383.81,71.67,70.3,71.67,70.3],[2383.81,2468.55,71.67,70.3,137.79,152.91],[2468.55,2470.57,137.79,152.91,137.79,152.91],[2470.57,2487.06,137.79,152.91,163.71,152.02],[2487.06,2494.99,163.71,152.02,163.71,152.02],[2494.99,2575.67,163.71,152.02,54.15,77.73],[2575.67,2583.09,54.15,77.73,54.15,77.73],[2583.09,2709.6,54.15,77.73,3.25,17.27],[2709.6,2718.87,3.25,17.27,3.25,17.27],[2718.87,2763.95,3.25,17.27,78.69,2.97],[2763.95,2766.09,78.69,2.97,78.69,2.97],[2766.09,2917.83,78.69,2.97,142.37,64.6],[2917.83,2927.34,142.37,64.6,142.37,64.6],[2927.34,3180.26,142.37,64.6,37.91,176.68],[3180.26,3187.0,37.91,176.68,37.91,176.68],[3187.0,3243.38,37.91,176.68,19.42,78.02],[3243.38,3244.68,19.42,78.02,19.42,78.02],[3244.68,3266.24,19.42,78.02,44.57,111.45],[3266.24,3271.3,44.57,111.45,44.57,111.45],[3271.3,3345.4,44.57,111.45,139.97,151.6],[3345.4,3346.38,139.97,151.6,139.97,151.6],[3346.38,3430.7,139.97,151.6,34.76,66.16],[3430.7,3436.17,34.76,66.16,34.76,66.16],[3436.17,3502.77,34.76,66.16,127.29,69.0],[3502.77,3508.79,127.29,69.0,127.29,69.0],[3508.79,3556.13,127.29,69.0,128.35,128.42],[3556.13,3560.34,128.35,128.42,128.35,128.42],[3560.34,3637.38,128.35,128.42,48.15,189.59],[3637.38,3638.11,48.15,189.59,48.15,189.59]],"10":[[0.0,84.01,49.14,156.31,155.7,105.08],[84.01,88.63,155.7,105.08,155.7,105.08],[88.63,138.76,155.7,105.08,188.77,162.07],[138.76,147.25,188.77,162.07,188.77,162.07],[147.25,291.79,188.77,162.07,64.33,0.02],[291.79,297.47,64.33,0.02,64.33,0.02],[297.47,518.78,64.33,0.02,144.32,186.77],[518.78,527.23,144.32,186.77,144.32,186.77],[527.23,542.87,144.32,186.77,165.38,193.11],[542.87,544.92,165.38,193.11,165.38,193.11],[544.92,681.74,165.38,193.11,3.12,56.76],[681.74,690.45,3.12,56.76,3.12,56.76],[690.45,749.36,3.12,56.76,59.03,73.36],[749.36,750.04,59.03,73.36,59.03,73.36],[750.04,820.64,59.03,73.36,136.66,69.99],[820.64,829.84,136.66,69.99,136.66,69.99],[829.84,893.61,136.66,69.99,174.48,170.75],[893.61,896.24,174.48,170.75,174.48,170.75],[896.24,984.02,174.48,170.75,47.24,134.18],[984.02,991.33,47.24,134.18,47.24,134.18],[991.33,1143.55,47.24,134.18,144.46,129.16],[1143.55,1147.88,144.46,129.16,144.46,129.16],[1147.88,1196.2,144.46,129.16,98.24,167.64],[1196.2,1201.57,98.24,167.64,98.24,167.64],[1201.57,1211.43,98.24,167.64,98.38,150.89],[1211.43,1214.96,98.38,150.89,98.38,150.89],[1214.96,1370.32,98.38,150.89,145.52,0.55],[1370.32,1374.55,145.52,0.55,145.52,0.55],[1374.55,1645.57,145.52,0.55,35.6,88.5],[1645.57,1649.2,35.6,88.5,35.6,88.5],[1649.2,1744.18,35.6,88.5,186.75,49.36],[1744.18,1749.7,186.75,49.36,186.75,49.36],[1749.7,1848.05,186.75,49.36,114.69,98.47],[1848.05,1855.17,114.69,98.47,114.69,98.47],[1855.17,1942.18,114.69,98.47,62.89,188.23],[1942.18,1951.7,62.89,188.23,62.89,188.23],[1951.7,2042.25,62.89,188.23,132.26,149.56],[2042.25,2051.12,132.26,149.56,132.26,149.56],[2051.12,2248.33,132.26,149.56,90.97,47.4],[2248.33,2249.21,90.97,47.4,90.97,47.4],[2249.21,2357.35,90.97,47.4,170.52,18.69],[2357.35,2363.93,170.52,18.69,170.52,18.69],[2363.93,2431.06,170.52,18.69,171.91,87.46],[2431.06,2434.17,171.91,87.46,171.91,87.46],[2434.17,2537.99,171.91,87.46,91.54,31.64],[2537.99,2547.06,91.54,31.64,91.54,31.64],[2547.06,2689.79,91.54,31.64,162.77,178.11],[2689.79,2691.89,162.77,178.11,162.77,178.11],[2691.89,2743.05,162.77,178.11,179.94,106.3],[2743.05,2752.23,179.94,106.3,179.94,106.3],[2752.23,2809.12,179.94,106.3,185.15,197.67],[2809.12,2809.41,185.15,197.67,185.15,197.67],[2809.41,2904.08,185.15,197.67,160.87,38.44],[2904.08,2911.14,160.87,38.44,160.87,38.44],[2911.14,2947.86,160.87,38.44,117.17,16.95],[2947.86,2951.59,117.17,16.95,117.17,16.95],[2951.59,3110.57,117.17,16.95,25.51,60.34],[3110.57,3120.45,25.51,60.34,25.51,60.34],[3120.45,3258.91,25.51,60.34,155.87,16.53],[3258.91,3263.34,155.87,16.53,155.87,16.53],[3263.34,3334.45,155.87,16.53,83.96,43.86],[3334.45,3335.94,83.96,43.86,83.96,43.86],[3335.94,3390.75,83.96,43.86,12.12,27.77],[3390.75,3393.37,12.12,27.77,12.12,27.77],[3393.37,3543.82,12.12,27.77,61.93,123.72],[3543.82,3552.48,61.93,123.72,61.93,123.72],[3552.48,3605.0,61.93,123.72,160.82,152.7],[3605.0,3612.35,160.82,152.7,160.82,152.7]],"12":[[0.0,82.05,69.81,186.47,10.87,71.95],[82.05,84.45,10.87,71.95,10.87,71.95],[84.45,200.37,10.87,71.95,148.26,44.46],[200.37,207.61,148.26,44.46,148.26,44.46],[207.61,259.7,148.26,44.46,97.35,37.43],[259.7,260.98,97.35,37.43,97.35,37.43],[260.98,360.83,97.35,37.43,57.07,191.3],[360.83,364.17,57.07,191.3,57.07,191.3],[364.17,566.49,57.07,191.3,199.09,166.48],[566.49,568.03,199.09,166.48,199.09,166.48],[568.03,642.61,199.09,166.48,175.4,78.26],[642.61,649.85,175.4,78.26,175.4,78.26],[649.85,733.17,175.4,78.26,94.87,78.72],[733.17,741.06,94.87,78.72,94.87,78.72],[741.06,791.41,94.87,78.72,87.34,2.72],[791.41,794.42,87.34,2.72,87.34,2.72],[794.42,884.89,87.34,2.72,78.88,104.97],[884.89,887.02,78.88,104.97,78.88,104.97],[887.02,955.21,78.88,104.97,124.62,145.79],[955.21,956.49,124.62,145.79,124.62,145.79],[956.49,970.0,124.62,145.79,119.2,166.75],[970.0,979.91,119.2,166.75,119.2,166.75],[979.91,985.7,119.2,166.75,112.03,159.74],[985.7,989.2,112.03,159.74,112.03,159.74],[989.2,1041.58,112.03,159.74,141.88,71.39],[1041.58,1043.41,141.88,71.39,141.88,71.39],[1043.41,1073.76,141.88,71.39,126.3,35.06],[1073.76,1082.26,126.3,35.06,126.3,35.06],[1082.26,1278.95,126.3,35.06,27.83,73.0],[1278.95,1286.72,27.83,73.0,27.83,73.0],[1286.72,1378.75,27.83,73.0,176.96,61.37],[1378.75,1386.14,176.96,61.37,176.96,61.37],[1386.14,1437.11,176.96,61.37,78.16,36.99],[1437.11,1441.15,78.16,36.99,78.16,36.99],[1441.15,1482.4,78.16,36.99,50.35,23.13],[1482.4,1490.82,50.35,23.13,50.35,23.13],[1490.82,1548.47,50.35,23.13,165.57,19.04],[1548.47,1552.02,165.57,19.04,165.57,19.04],[1552.02,1617.51,165.57,19.04,178.58,140.31],[1617.51,1626.0,178.58,140.31,178.58,140.31],[1626.0,1680.65,178.58,140.31,114.44,188.5],[1680.65,1682.5,114.44,188.5,114.44,188.5],[1682.5,1775.47,114.44,188.5,51.22,189.89],[1775.47,1778.83,51.22,189.89,51.22,189.89],[1778.83,1841.74,51.22,189.89,23.26,79.7],[1841.74,1843.81,23.26,79.7,23.26,79.7],[1843.81,1901.74,23.26,79.7,117.54,22.41],[1901.74,1903.48,117.54,22.41,117.54,22.41],[1903.48,2000.0,117.54,22.41,130.54,168.78],[2000.0,2001.88,130.54,168.78,130.54,168.78],[2001.88,2125.82,130.54,168.78,161.78,24.83],[2125.82,2129.68,161.78,24.83,161.78,24.83],[2129.68,2242.89,161.78,24.83,186.84,103.74],[2242.89,2251.76,186.84,103.74,186.84,103.74],[2251.76,2352.34,186.84,103.74,0.29,130.61],[2352.34,2355.32,0.29,130.61,0.29,130.61],[2355.32,2461.85,0.29,130.61,36.45,199.09],[2461.85,2468.48,36.45,199.09,36.45,199.09],[2468.48,2625.6,36.45,199.09,172.52,67.87],[2625.6,2634.22,172.52,67.87,172.52,67.87],[2634.22,2769.28,172.52,67.87,140.47,162.3],[2769.28,2778.01,140.47,162.3,140.47,162.3],[2778.01,2808.1,140.47,162.3,194.04,179.53],[2808.1,2811.36,194.04,179.53,194.04,179.53],[2811.36,2961.52,194.04,179.53,78.46,61.42],[2961.52,2967.1,78.46,61.42,78.46,61.42],[2967.1,3035.45,78.46,61.42,179.61,65.19],[3035.45,3042.29,179.61,65.19,179.61,65.19],[3042.29,3168.73,179.61,65.19,141.68,4.26],[3168.73,3174.85,141.68,4.26,141.68,4.26],[3174.85,3256.84,141.68,4.26,24.61,100.73],[3256.84,3257.56,24.61,100.73,24.61,100.73],[3257.56,3349.31,24.61,100.73,190.67,75.83],[3349.31,3349.94,190.67,75.83,190.67,75.83],[3349.94,3526.38,190.67,75.83,37.05,164.4],[3526.38,3528.8,37.05,164.4,37.05,164.4],[3528.8,3544.59,37.05,164.4,55.17,162.69],[3544.59,3550.88,55.17,162.69,55.17,162.69],[3550.88,3658.73,55.17,162.69,190.18,46.78],[3658.73,3667.79,190.18,46.78,190.18,46.78]],"14":[[0.0,120.46,183.77,157.22,0.83,94.62],[120.46,126.63,0.83,94.62,0.83,94.62],[126.63,134.94,0.83,94.62,5.72,82.16],[134.94,139.44,5.72,82.16,5.72,82.16],[139.44,186.02,5.72,82.16,75.36,107.73],[186.02,195.24,75.36,107.73,75.36,107.73],[195.24,268.71,75.36,107.73,112.02,178.43],[268.71,274.44,112.02,178.43,112.02,178.43],[274.44,516.36,112.02,178.43,49.09,37.15],[516.36,522.96,49.09,37.15,49.09,37.15],[522.96,670.2,49.09,37.15,145.2,180.52],[670.2,674.94,145.2,180.52,145.2,180.52],[674.94,734.58,145.2,180.52,126.49,151.19],[734.58,735.26,126.49,151.19,126.49,151.19],[735.26,801.24,126.49,151.19,199.21,59.26],[801.24,805.47,199.21,59.26,199.21,59.26],[805.47,846.95,199.21,59.26,126.31,32.07],[846.95,847.45,126.31,32.07,126.31,32.07],[847.45,886.72,126.31,32.07,156.72,5.56],[886.72,894.36,156.72,5.56,156.72,5.56],[894.36,993.37,156.72,5.56,83.54,95.39],[993.37,1000.48,83.54,95.39,83.54,95.39],[1000.48,1091.52,83.54,95.39,119.38,173.08],[1091.52,1097.06,119.38,173.08,119.38,173.08],[1097.06,1200.07,119.38,173.08,43.39,65.59],[1200.07,1202.77,43.39,65.59,43.39,65.59],[1202.77,1241.35,43.39,65.59,46.17,0.87],[1241.35,1249.07,46.17,0.87,46.17,0.87],[1249.07,1298.84,46.17,0.87,55.17,89.18],[1298.84,1306.68,55.17,89.18,55.17,89.18],[1306.68,1320.68,55.17,89.18,78.88,77.73],[1320.68,1322.65,78.88,77.73,78.88,77.73],[1322.65,1389.45,78.88,77.73,170.3,69.78],[1389.45,1395.25,170.3,69.78,170.3,69.78],[1395.25,1411.14,170.3,69.78,160.85,75.37],[1411.14,1414.52,160.85,75.37,160.85,75.37],[1414.52,1464.8,160.85,75.37,116.66,12.79],[1464.8,1465.93,116.66,12.79,116.66,12.79],[1465.93,1537.12,116.66,12.79,136.37,146.63],[1537.12,1544.2,136.37,146.63,136.37,146.63],[1544.2,1669.02,136.37,146.63,35.89,58.46],[1669.02,1678.65,35.89,58.46,35.89,58.46],[1678.65,1757.81,35.89,58.46,113.69,27.85],[1757.81,1758.99,113.69,27.85,113.69,27.85],[1758.99,1853.17,113.69,27.85,178.36,134.27],[1853.17,1862.92,178.36,134.27,178.36,134.27],[1862.92,1927.44,178.36,134.27,110.86,120.17],[1927.44,1929.66,110.86,120.17,110.86,120.17],[1929.66,1991.93,110.86,120.17,47.63,69.64],[1991.93,2000.34,47.63,69.64,47.63,69.64],[2000.34,2094.44,47.63,69.64,165.25,172.63],[2094.44,2098.74,165.25,172.63,165.25,172.63],[2098.74,2336.73,165.25,172.63,152.58,24.47],[2336.73,2337.41,152.58,24.47,152.58,24.47],[2337.41,2411.12,152.58,24.47,162.58,111.59],[2411.12,2416.93,162.58,111.59,162.58,111.59],[2416.93,2502.78,162.58,111.59,101.57,63.23],[2502.78,2505.46,101.57,63.23,101.57,63.23],[2505.46,2549.84,101.57,63.23,151.55,75.21],[2549.84,2559.59,151.55,75.21,151.55,75.21],[2559.59,2621.59,151.55,75.21,92.09,51.69],[2621.59,2630.71,92.09,51.69,92.09,51.69],[2630.71,2852.3,92.09,51.69,3.3,199.63],[2852.3,2858.82,3.3,199.63,3.3,199.63],[2858.82,3039.18,3.3,199.63,127.26,32.82],[3039.18,3042.28,127.26,32.82,127.26,32.82],[3042.28,3044.6,127.26,32.82,125.19,31.99],[3044.6,3049.85,125.19,31.99,125.19,31.99],[3049.85,3129.68,125.19,31.99,48.66,158.61],[3129.68,3132.79,48.66,158.61,48.66,158.61],[3132.79,3190.45,48.66,158.61,95.76,100.6],[3190.45,3191.14,95.76,100.6,95.76,100.6],[3191.14,3299.42,95.76,100.6,181.24,167.79],[3299.42,3300.13,181.24,167.79,181.24,167.79],[3300.13,3422.16,181.24,167.79,42.32,85.37],[3422.16,3430.4,42.32,85.37,42.32,85.37],[3430.4,3483.85,42.32,85.37,112.36,137.42],[3483.85,3488.14,112.36,137.42,112.36,137.42],[3488.14,3562.55,112.36,137.42,96.26,84.12],[3562.55,3562.99,96.26,84.12,96.26,84.12],[3562.99,3658.67,96.26,84.12,38.37,17.26],[3658.67,3667.56,38.37,17.26,38.37,17.26]],"15":[[0.0,63.91,145.07,48.21,193.38,145.52],[63.91,69.53,193.38,145.52,193.38,145.52],[69.53,237.14,193.38,145.52,123.35,27.78],[237.14,241.73,123.35,27.78,123.35,27.78],[241.73,418.07,123.35,27.78,152.83,168.03],[418.07,420.08,152.83,168.03,152.83,168.03],[420.08,450.86,152.83,168.03,171.84,136.53],[450.86,459.14,171.84,136.53,171.84,136.53],[459.14,514.51,171.84,136.53,114.0,168.81],[514.51,517.64,114.0,168.81,114.0,168.81],[517.64,687.24,114.0,168.81,33.63,58.71],[687.24,693.39,33.63,58.71,33.63,58.71],[693.39,834.04,33.63,58.71,136.55,58.78],[834.04,840.76,136.55,58.78,136.55,58.78],[840.76,950.82,136.55,58.78,8.51,198.85],[950.82,956.01,8.51,198.85,8.51,198.85],[956.01,1114.9,8.51,198.85,189.84,93.25],[1114.9,1122.81,189.84,93.25,189.84,93.25],[1122.81,1172.17,189.84,93.25,125.5,167.14],[1172.17,1178.71,125.5,167.14,125.5,167.14],[1178.71,1339.13,125.5,167.14,125.22,13.25],[1339.13,1348.35,125.22,13.25,125.22,13.25],[1348.35,1569.7,125.22,13.25,141.14,129.23],[1569.7,1572.5,141.14,129.23,141.14,129.23],[1572.5,1621.94,141.14,129.23,51.66,147.84],[1621.94,1630.62,51.66,147.84,51.66,147.84],[1630.62,1671.82,51.66,147.84,40.18,87.58],[1671.82,1672.74,40.18,87.58,40.18,87.58],[1672.74,1761.25,40.18,87.58,52.12,180.43],[1761.25,1766.54,52.12,180.43,52.12,180.43],[1766.54,1982.01,52.12,180.43,21.52,18.42],[1982.01,1986.77,21.52,18.42,21.52,18.42],[1986.77,2096.27,21.52,18.42,196.02,73.21],[2096.27,2103.49,196.02,73.21,196.02,73.21],[2103.49,2271.22,196.02,73.21,152.3,167.0],[2271.22,2272.63,152.3,167.0,152.3,167.0],[2272.63,2308.37,152.3,167.0,172.88,114.07],[2308.37,2311.0,172.88,114.07,172.88,114.07],[2311.0,2482.28,172.88,114.07,61.27,112.25],[2482.28,2484.71,61.27,112.25,61.27,112.25],[2484.71,2525.74,61.27,112.25,13.57,110.2],[2525.74,2535.27,13.57,110.2,13.57,110.2],[2535.27,2751.66,13.57,110.2,177.7,96.91],[2751.66,2751.84,177.7,96.91,177.7,96.91],[2751.84,2809.24,177.7,96.91,94.63,70.2],[2809.24,2810.61,94.63,70.2,94.63,70.2],[2810.61,2907.73,94.63,70.2,171.52,156.68],[2907.73,2915.87,171.52,156.68,171.52,156.68],[2915.87,3091.64,171.52,156.68,155.41,60.81],[3091.64,3091.78,155.41,60.81,155.41,60.81],[3091.78,3138.11,155.41,60.81,88.52,114.75],[3138.11,3140.33,88.52,114.75,88.52,114.75],[3140.33,3214.75,88.52,114.75,17.6,23.32],[3214.75,3216.34,17.6,23.32,17.6,23.32],[3216.34,3329.67,17.6,23.32,149.33,59.4],[3329.67,3334.15,149.33,59.4,149.33,59.4],[3334.15,3360.73,149.33,59.4,183.92,43.89],[3360.73,3368.69,183.92,43.89,183.92,43.89],[3368.69,3588.97,183.92,43.89,31.63,73.21],[3588.97,3598.69,31.63,73.21,31.63,73.21],[3598.69,3637.82,31.63,73.21,59.93,2.29],[3637.82,3646.61,59.93,2.29,59.93,2.29]],"22":[[0.0,83.33,18.83,17.25,65.02,126.86],[83.33,84.11,65.02,126.86,65.02,126.86],[84.11,238.77,65.02,126.86,42.8,36.17],[238.77,239.78,42.8,36.17,42.8,36.17],[239.78,373.4,42.8,36.17,150.3,24.16],[373.4,382.72,150.3,24.16,150.3,24.16],[382.72,551.89,150.3,24.16,93.82,178.59],[551.89,552.56,93.82,178.59,93.82,178.59],[552.56,696.9,93.82,178.59,199.83,79.67],[696.9,703.14,199.83,79.67,199.83,79.67],[703.14,751.53,199.83,79.67,173.8,60.78],[751.53,756.32,173.8,60.78,173.8,60.78],[756.32,868.71,173.8,60.78,90.76,43.64],[868.71,871.34,90.76,43.64,90.76,43.64],[871.34,879.08,90.76,43.64,79.14,48.71],[879.08,886.97,79.14,48.71,79.14,48.71],[886.97,931.18,79.14,48.71,127.82,36.3],[931.18,935.02,127.82,36.3,127.82,36.3],[935.02,967.43,127.82,36.3,138.9,96.15],[967.43,970.63,138.9,96.15,138.9,96.15],[970.63,1165.03,138.9,96.15,33.16,95.25],[1165.03,1171.85,33.16,95.25,33.16,95.25],[1171.85,1278.39,33.16,95.25,66.31,32.49],[1278.39,1278.99,66.31,32.49,66.31,32.49],[1278.99,1391.57,66.31,32.49,159.57,84.59],[1391.57,1401.29,159.57,84.59,159.57,84.59],[1401.29,1427.16,159.57,84.59,180.76,109.4],[1427.16,1429.57,180.76,109.4,180.76,109.4],[1429.57,1602.82,180.76,109.4,93.24,101.47],[1602.82,1610.41,93.24,101.47,93.24,101.47],[1610.41,1726.42,93.24,101.47,28.83,12.61],[1726.42,1735.6,28.83,12.61,28.83,12.61],[1735.6,1752.37,28.83,12.61,23.77,41.08],[1752.37,1752.42,23.77,41.08,23.77,41.08],[1752.42,1952.07,23.77,41.08,184.23,73.07],[1952.07,1960.93,184.23,73.07,184.23,73.07],[1960.93,2007.26,184.23,73.07,164.89,20.02],[2007.26,2007.66,164.89,20.02,164.89,20.02],[2007.66,2174.06,164.89,20.02,68.08,90.26],[2174.06,2177.41,68.08,90.26,68.08,90.26],[2177.41,2241.24,68.08,90.26,152.14,95.96],[2241.24,2251.06,152.14,95.96,152.14,95.96],[2251.06,2347.21,152.14,95.96,156.43,1.71],[2347.21,2354.93,156.43,1.71,156.43,1.71],[2354.93,2426.75,156.43,1.71,82.82,46.36],[2426.75,2432.64,82.82,46.36,82.82,46.36],[2432.64,2453.39,82.82,46.36,109.48,51.2],[2453.39,2462.33,109.48,51.2,109.48,51.2],[2462.33,2529.75,109.48,51.2,54.44,7.11],[2529.75,2536.79,54.44,7.11,54.44,7.11],[2536.79,2591.29,54.44,7.11,47.27,80.92],[2591.29,2591.94,47.27,80.92,47.27,80.92],[2591.94,2692.57,47.27,80.92,182.9,39.04],[2692.57,2695.45,182.9,39.04,182.9,39.04],[2695.45,2980.97,182.9,39.04,18.33,194.45],[2980.97,2986.72,18.33,194.45,18.33,194.45],[2986.72,3141.57,18.33,194.45,93.49,13.4],[3141.57,3150.25,93.49,13.4,93.49,13.4],[3150.25,3164.68,93.49,13.4,111.6,11.18],[3164.68,3170.03,111.6,11.18,111.6,11.18],[3170.03,3236.58,111.6,11.18,153.53,135.9],[3236.58,3237.02,153.53,135.9,153.53,135.9],[3237.02,3320.21,153.53,135.9,17.78,40.59],[3320.21,3329.7,17.78,40.59,17.78,40.59],[3329.7,3434.76,17.78,40.59,118.61,48.69],[3434.76,3441.23,118.61,48.69,118.61,48.69],[3441.23,3662.15,118.61,48.69,184.53,151.94],[3662.15,3668.97,184.53,151.94,184.53,151.94]],"23":[[0.0,87.71,136.46,8.05,27.33,114.68],[87.71,92.14,27.33,114.68,27.33,114.68],[92.14,234.72,27.33,114.68,149.79,114.64],[234.72,235.78,149.79,114.64,149.79,114.64],[235.78,348.77,149.79,114.64,52.29,89.71],[348.77,350.21,52.29,89.71,52.29,89.71],[350.21,631.86,52.29,89.71,181.8,193.67],[631.86,633.51,181.8,193.67,181.8,193.67],[633.51,697.83,181.8,193.67,162.83,74.87],[697.83,705.65,162.83,74.87,162.83,74.87],[705.65,738.45,162.83,74.87,101.15,70.73],[738.45,744.17,101.15,70.73,101.15,70.73],[744.17,833.63,101.15,70.73,24.11,20.49],[833.63,842.09,24.11,20.49,24.11,20.49],[842.09,1134.03,24.11,20.49,145.96,173.44],[1134.03,1137.91,145.96,173.44,145.96,173.44],[1137.91,1269.27,145.96,173.44,109.14,57.61],[1269.27,1275.99,109.14,57.61,109.14,57.61],[1275.99,1475.16,109.14,57.61,5.31,90.26],[1475.16,1478.95,5.31,90.26,5.31,90.26],[1478.95,1515.65,5.31,90.26,32.97,154.68],[1515.65,1516.25,32.97,154.68,32.97,154.68],[1516.25,1587.43,32.97,154.68,83.2,56.44],[1587.43,1595.0,83.2,56.44,83.2,56.44],[1595.0,1654.8,83.2,56.44,51.98,91.79],[1654.8,1660.89,51.98,91.79,51.98,91.79],[1660.89,1684.84,51.98,91.79,85.55,114.59],[1684.84,1690.81,85.55,114.59,85.55,114.59],[1690.81,1740.97,85.55,114.59,16.05,58.17],[1740.97,1750.21,16.05,58.17,16.05,58.17],[1750.21,1811.03,16.05,58.17,129.61,67.43],[1811.03,1813.66,129.61,67.43,129.61,67.43],[1813.66,1864.92,129.61,67.43,157.64,93.02],[1864.92,1870.37,157.64,93.02,157.64,93.02],[1870.37,1878.97,157.64,93.02,165.38,101.47],[1878.97,1885.82,165.38,101.47,165.38,101.47],[1885.82,1999.34,165.38,101.47,100.3,68.45],[1999.34,2002.06,100.3,68.45,100.3,68.45],[2002.06,2026.16,100.3,68.45,124.29,43.19],[2026.16,2026.59,124.29,43.19,124.29,43.19],[2026.59,2074.48,124.29,43.19,150.19,0.75],[2074.48,2078.27,150.19,0.75,150.19,0.75],[2078.27,2129.32,150.19,0.75,111.69,52.24],[2129.32,2138.43,111.69,52.24,111.69,52.24],[2138.43,2179.1,111.69,52.24,69.23,21.46],[2179.1,2188.8,69.23,21.46,69.23,21.46],[2188.8,2393.55,69.23,21.46,37.95,121.9],[2393.55,2395.44,37.95,121.9,37.95,121.9],[2395.44,2477.52,37.95,121.9,162.96,107.75],[2477.52,2482.26,162.96,107.75,162.96,107.75],[2482.26,2504.21,162.96,107.75,194.74,100.44],[2504.21,2509.09,194.74,100.44,194.74,100.44],[2509.09,2686.58,194.74,100.44,76.1,151.76],[2686.58,2695.81,76.1,151.76,76.1,151.76],[2695.81,2883.54,76.1,151.76,13.27,71.06],[2883.54,2892.14,13.27,71.06,13.27,71.06],[2892.14,2960.99,13.27,71.06,122.86,116.58],[2960.99,2962.04,122.86,116.58,122.86,116.58],[2962.04,3185.47,122.86,116.58,12.49,173.6],[3185.47,3191.02,12.49,173.6,12.49,173.6],[3191.02,3342.21,12.49,173.6,144.76,114.61],[3342.21,3348.18,144.76,114.61,144.76,114.61],[3348.18,3503.18,144.76,114.61,38.17,8.55],[3503.18,3512.68,38.17,8.55,38.17,8.55],[3512.68,3599.38,38.17,8.55,129.86,39.25],[3599.38,3605.27,129.86,39.25,129.86,39.25]],"24":[[0.0,51.7,147.37,4.03,189.05,37.26],[51.7,55.01,189.05,37.26,189.05,37.26],[55.01,95.01,189.05,37.26,123.9,55.34],[95.01,102.12,123.9,55.34,123.9,55.34],[102.12,186.56,123.9,55.34,45.84,189.8],[186.56,196.11,45.84,189.8,45.84,189.8],[196.11,359.04,45.84,189.8,152.11,71.78],[359.04,365.55,152.11,71.78,152.11,71.78],[365.55,399.67,152.11,71.78,99.43,33.55],[399.67,399.88,99.43,33.55,99.43,33.55],[399.88,479.71,99.43,33.55,29.06,169.35],[479.71,487.4,29.06,169.35,29.06,169.35],[487.4,569.37,29.06,169.35,169.08,185.16],[569.37,579.34,169.08,185.16,169.08,185.16],[579.34,668.56,169.08,185.16,12.22,161.76],[668.56,673.82,12.22,161.76,12.22,161.76],[673.82,782.39,12.22,161.76,114.55,44.04],[782.39,784.77,114.55,44.04,114.55,44.04],[784.77,852.13,114.55,44.04,71.27,125.71],[852.13,855.17,71.27,125.71,71.27,125.71],[855.17,1067.55,71.27,125.71,164.18,195.93],[1067.55,1073.8,164.18,195.93,164.18,195.93],[1073.8,1150.71,164.18,195.93,28.29,164.39],[1150.71,1160.41,28.29,164.39,28.29,164.39],[1160.41,1214.32,28.29,164.39,71.06,181.71],[1214.32,1218.48,71.06,181.71,71.06,181.71],[1218.48,1462.95,71.06,181.71,150.84,29.2],[1462.95,1467.35,150.84,29.2,150.84,29.2],[1467.35,1515.49,150.84,29.2,106.81,104.38],[1515.49,1520.81,106.81,104.38,106.81,104.38],[1520.81,1684.53,106.81,104.38,18.06,191.95],[1684.53,1690.26,18.06,191.95,18.06,191.95],[1690.26,1836.01,18.06,191.95,36.19,82.03],[1836.01,1839.31,36.19,82.03,36.19,82.03],[1839.31,1976.29,36.19,82.03,132.28,75.5],[1976.29,1977.08,132.28,75.5,132.28,75.5],[1977.08,2029.01,132.28,75.5,143.41,146.75],[2029.01,2034.38,143.41,146.75,143.41,146.75],[2034.38,2060.5,143.41,146.75,135.38,189.09],[2060.5,2068.99,135.38,189.09,135.38,189.09],[2068.99,2129.91,135.38,189.09,49.42,122.59],[2129.91,2138.66,49.42,122.59,49.42,122.59],[2138.66,2234.75,49.42,122.59,26.4,173.03],[2234.75,2236.95,26.4,173.03,26.4,173.03],[2236.95,2298.69,26.4,173.03,127.8,195.41],[2298.69,2305.49,127.8,195.41,127.8,195.41],[2305.49,2421.07,127.8,195.41,20.33,70.51],[2421.07,2429.45,20.33,70.51,20.33,70.51],[2429.45,2490.01,20.33,70.51,98.88,144.69],[2490.01,2495.54,98.88,144.69,98.88,144.69],[2495.54,2683.04,98.88,144.69,12.28,99.05],[2683.04,2684.79,12.28,99.05,12.28,99.05],[2684.79,2722.15,12.28,99.05,17.63,44.79],[2722.15,2726.13,17.63,44.79,17.63,44.79],[2726.13,2834.51,17.63,44.79,37.97,189.85],[2834.51,2836.09,37.97,189.85,37.97,189.85],[2836.09,3006.29,37.97,189.85,129.04,56.01],[3006.29,3008.11,129.04,56.01,129.04,56.01],[3008.11,3068.67,129.04,56.01,24.13,115.97],[3068.67,3069.97,24.13,115.97,24.13,115.97],[3069.97,3109.8,24.13,115.97,45.08,176.73],[3109.8,3116.3,45.08,176.73,45.08,176.73],[3116.3,3209.63,45.08,176.73,179.23,157.57],[3209.63,3215.1,179.23,157.57,179.23,157.57],[3215.1,3301.35,179.23,157.57,31.77,173.66],[3301.35,3302.19,31.77,173.66,31.77,173.66],[3302.19,3394.64,31.77,173.66,29.14,38.98],[3394.64,3402.52,29.14,38.98,29.14,38.98],[3402.52,3507.56,29.14,38.98,11.21,178.53],[3507.56,3513.85,11.21,178.53,11.21,178.53],[3513.85,3638.17,11.21,178.53,72.03,27.83],[3638.17,3641.45,72.03,27.83,72.03,27.83]],"28":[[0.0,77.1,171.93,113.35,122.32,13.91],[77.1,83.65,122.32,13.91,122.32,13.91],[83.65,145.57,122.32,13.91,37.9,54.65],[145.57,153.71,37.9,54.65,37.9,54.65],[153.71,235.19,37.9,54.65,80.03,166.31],[235.19,237.13,80.03,166.31,80.03,166.31],[237.13,264.64,80.03,166.31,134.35,164.4],[264.64,274.03,134.35,164.4,134.35,164.4],[274.03,310.28,134.35,164.4,97.27,197.93],[310.28,317.24,97.27,197.93,97.27,197.93],[317.24,508.66,97.27,197.93,147.82,13.27],[508.66,516.75,147.82,13.27,147.82,13.27],[516.75,640.7,147.82,13.27,180.75,141.1],[640.7,646.37,180.75,141.1,180.75,141.1],[646.37,714.78,180.75,141.1,180.6,40.32],[714.78,721.93,180.6,40.32,180.6,40.32],[721.93,760.47,180.6,40.32,133.83,76.49],[760.47,769.54,133.83,76.49,133.83,76.49],[769.54,832.13,133.83,76.49,83.73,38.06],[832.13,839.04,83.73,38.06,83.73,38.06],[839.04,866.62,83.73,38.06,48.45,70.7],[866.62,876.46,48.45,70.7,48.45,70.7],[876.46,985.59,48.45,70.7,41.68,10.96],[985.59,988.28,41.68,10.96,41.68,10.96],[988.28,1077.4,41.68,10.96,41.34,170.03],[1077.4,1084.04,41.34,170.03,41.34,170.03],[1084.04,1161.27,41.34,170.03,152.86,122.89],[1161.27,1169.75,152.86,122.89,152.86,122.89],[1169.75,1242.69,152.86,122.89,77.46,2.79],[1242.69,1248.3,77.46,2.79,77.46,2.79],[1248.3,1333.24,77.46,2.79,189.27,126.85],[1333.24,1335.45,189.27,126.85,189.27,126.85],[1335.45,1411.15,189.27,126.85,77.6,33.32],[1411.15,1412.02,77.6,33.32,77.6,33.32],[1412.02,1505.06,77.6,33.32,199.68,107.32],[1505.06,1506.54,199.68,107.32,199.68,107.32],[1506.54,1666.91,199.68,107.32,31.5,95.94],[1666.91,1667.45,31.5,95.94,31.5,95.94],[1667.45,1944.08,31.5,95.94,163.17,53.2],[1944.08,1952.06,163.17,53.2,163.17,53.2],[1952.06,1973.72,163.17,53.2,180.28,61.96],[1973.72,1976.35,180.28,61.96,180.28,61.96],[1976.35,2138.49,180.28,61.96,94.79,103.75],[2138.49,2148.21,94.79,103.75,94.79,103.75],[2148.21,2202.72,94.79,103.75,160.99,34.82],[2202.72,2204.17,160.99,34.82,160.99,34.82],[2204.17,2455.22,160.99,34.82,56.33,184.32],[2455.22,2459.24,56.33,184.32,56.33,184.32],[2459.24,2561.61,56.33,184.32,189.32,137.45],[2561.61,2570.08,189.32,137.45,189.32,137.45],[2570.08,2848.86,189.32,137.45,89.71,34.26],[2848.86,2855.36,89.71,34.26,89.71,34.26],[2855.36,2967.37,89.71,34.26,80.74,125.67],[2967.37,2973.17,80.74,125.67,80.74,125.67],[2973.17,3006.11,80.74,125.67,60.96,152.48],[3006.11,3011.88,60.96,152.48,60.96,152.48],[3011.88,3105.09,60.96,152.48,166.56,179.04],[3105.09,3114.76,166.56,179.04,166.56,179.04],[3114.76,3236.09,166.56,179.04,187.13,41.51],[3236.09,3238.16,187.13,41.51,187.13,41.51],[3238.16,3242.46,187.13,41.51,183.14,40.72],[3242.46,3243.85,183.14,40.72,183.14,40.72],[3243.85,3273.19,183.14,40.72,153.1,72.82],[3273.19,3280.9,153.1,72.82,153.1,72.82],[3280.9,3358.07,153.1,72.82,182.77,148.15],[3358.07,3365.23,182.77,148.15,182.77,148.15],[3365.23,3482.23,182.77,148.15,29.16,124.04],[3482.23,3487.32,29.16,124.04,29.16,124.04],[3487.32,3567.35,29.16,124.04,155.18,194.04],[3567.35,3571.55,155.18,194.04,155.18,194.04],[3571.55,3601.36,155.18,194.04,101.19,174.21],[3601.36,3601.93,101.19,174.21,101.19,174.21]]};
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
