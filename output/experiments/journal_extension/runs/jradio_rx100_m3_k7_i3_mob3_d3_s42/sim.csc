<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>jradio_rx100_m3_k7_i3_mob3_d3_s42</title>
    <randomseed>42</randomseed>
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
          <pos x="87.94" y="178.75" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="172.65" y="101.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="65.16" y="158.83" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="124.69" y="117.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="187.40" y="33.93" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
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
          <pos x="119.15" y="188.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="83.97" y="115.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="105.86" y="20.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="147.75" y="16.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="125.09" y="125.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="134.70" y="42.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="99.49" y="162.77" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="81.24" y="78.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="195.36" y="63.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="99.66" y="126.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="143.12" y="162.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="158.30" y="168.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="53.09" y="79.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="57.58" y="85.70" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="114.21" y="46.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="111.68" y="179.99" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="45.19" y="63.75" />
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
          <pos x="41.46" y="113.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="25.74" y="175.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="6.70" y="170.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="25.49" y="61.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="135.74" y="109.61" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="75.32" y="54.61" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="169.01" y="178.96" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"2":[[0.0,76.86,87.94,178.75,17.23,47.1],[76.86,83.27,17.23,47.1,17.23,47.1],[83.27,214.86,17.23,47.1,188.98,107.8],[214.86,215.22,188.98,107.8,188.98,107.8],[215.22,217.49,188.98,107.8,189.86,103.66],[217.49,217.77,189.86,103.66,189.86,103.66],[217.77,296.83,189.86,103.66,90.67,140.49],[296.83,298.69,90.67,140.49,90.67,140.49],[298.69,340.89,90.67,140.49,33.91,79.42],[340.89,350.48,33.91,79.42,33.91,79.42],[350.48,430.55,33.91,79.42,176.01,57.86],[430.55,439.33,176.01,57.86,176.01,57.86],[439.33,540.64,176.01,57.86,16.21,159.66],[540.64,541.72,16.21,159.66,16.21,159.66],[541.72,613.59,16.21,159.66,18.03,32.27],[613.59,614.34,18.03,32.27,18.03,32.27],[614.34,728.98,18.03,32.27,165.49,47.65],[728.98,736.32,165.49,47.65,165.49,47.65],[736.32,851.18,165.49,47.65,128.44,122.88],[851.18,860.09,128.44,122.88,128.44,122.88],[860.09,961.11,128.44,122.88,179.79,48.62],[961.11,966.34,179.79,48.62,179.79,48.62],[966.34,1252.02,179.79,48.62,44.35,184.74],[1252.02,1252.53,44.35,184.74,44.35,184.74],[1252.53,1364.23,44.35,184.74,115.45,180.68],[1364.23,1366.08,115.45,180.68,115.45,180.68],[1366.08,1378.27,115.45,180.68,132.71,193.28],[1378.27,1382.72,132.71,193.28,132.71,193.28],[1382.72,1448.11,132.71,193.28,56.75,145.5],[1448.11,1449.54,56.75,145.5,56.75,145.5],[1449.54,1521.61,56.75,145.5,35.88,199.99],[1521.61,1522.04,35.88,199.99,35.88,199.99],[1522.04,1602.03,35.88,199.99,35.84,67.51],[1602.03,1609.97,35.84,67.51,35.84,67.51],[1609.97,1663.78,35.84,67.51,119.86,12.98],[1663.78,1664.72,119.86,12.98,119.86,12.98],[1664.72,1701.76,119.86,12.98,132.53,84.13],[1701.76,1706.31,132.53,84.13,132.53,84.13],[1706.31,1836.62,132.53,84.13,178.91,195.3],[1836.62,1836.66,178.91,195.3,178.91,195.3],[1836.66,1965.19,178.91,195.3,138.84,70.03],[1965.19,1965.36,138.84,70.03,138.84,70.03],[1965.36,2051.21,138.84,70.03,198.41,136.24],[2051.21,2058.64,198.41,136.24,198.41,136.24],[2058.64,2154.93,198.41,136.24,100.32,37.82],[2154.93,2161.93,100.32,37.82,100.32,37.82],[2161.93,2259.39,100.32,37.82,119.24,178.97],[2259.39,2263.88,119.24,178.97,119.24,178.97],[2263.88,2297.46,119.24,178.97,169.44,181.24],[2297.46,2305.61,169.44,181.24,169.44,181.24],[2305.61,2425.54,169.44,181.24,64.92,167.79],[2425.54,2427.53,64.92,167.79,64.92,167.79],[2427.53,2520.79,64.92,167.79,113.84,64.46],[2520.79,2525.34,113.84,64.46,113.84,64.46],[2525.34,2569.98,113.84,64.46,55.63,17.99],[2569.98,2572.68,55.63,17.99,55.63,17.99],[2572.68,2693.67,55.63,17.99,126.96,176.44],[2693.67,2694.08,126.96,176.44,126.96,176.44],[2694.08,2709.55,126.96,176.44,99.35,182.31],[2709.55,2710.52,99.35,182.31,99.35,182.31],[2710.52,2754.02,99.35,182.31,83.23,167.45],[2754.02,2761.38,83.23,167.45,83.23,167.45],[2761.38,2906.33,83.23,167.45,119.15,60.73],[2906.33,2908.19,119.15,60.73,119.15,60.73],[2908.19,2947.91,119.15,60.73,98.87,121.54],[2947.91,2951.25,98.87,121.54,98.87,121.54],[2951.25,3078.38,98.87,121.54,187.53,191.09],[3078.38,3078.59,187.53,191.09,187.53,191.09],[3078.59,3208.89,187.53,191.09,26.49,54.65],[3208.89,3215.25,26.49,54.65,26.49,54.65],[3215.25,3303.52,26.49,54.65,165.9,0.39],[3303.52,3305.89,165.9,0.39,165.9,0.39],[3305.89,3365.04,165.9,0.39,185.49,79.12],[3365.04,3370.06,185.49,79.12,185.49,79.12],[3370.06,3480.88,185.49,79.12,16.19,171.92],[3480.88,3486.88,16.19,171.92,16.19,171.92],[3486.88,3571.73,16.19,171.92,112.77,79.92],[3571.73,3573.72,112.77,79.92,112.77,79.92],[3573.72,3709.17,112.77,79.92,6.48,14.91],[3709.17,3718.91,6.48,14.91,6.48,14.91]],"4":[[0.0,70.07,172.65,101.32,133.14,49.61],[70.07,72.86,133.14,49.61,133.14,49.61],[72.86,153.07,133.14,49.61,184.78,174.47],[153.07,159.0,184.78,174.47,184.78,174.47],[159.0,179.67,184.78,174.47,152.97,155.17],[179.67,186.66,152.97,155.17,152.97,155.17],[186.66,486.33,152.97,155.17,14.89,83.61],[486.33,488.63,14.89,83.61,14.89,83.61],[488.63,547.72,14.89,83.61,47.91,193.43],[547.72,549.37,47.91,193.43,47.91,193.43],[549.37,578.07,47.91,193.43,36.41,182.93],[578.07,578.22,36.41,182.93,36.41,182.93],[578.22,693.58,36.41,182.93,85.4,124.89],[693.58,697.47,85.4,124.89,85.4,124.89],[697.47,754.45,85.4,124.89,39.09,82.38],[754.45,763.13,39.09,82.38,39.09,82.38],[763.13,776.09,39.09,82.38,57.9,76.4],[776.09,779.39,57.9,76.4,57.9,76.4],[779.39,812.39,57.9,76.4,28.87,30.82],[812.39,815.74,28.87,30.82,28.87,30.82],[815.74,884.32,28.87,30.82,159.49,37.75],[884.32,891.04,159.49,37.75,159.49,37.75],[891.04,927.57,159.49,37.75,191.09,90.08],[927.57,929.61,191.09,90.08,191.09,90.08],[929.61,952.52,191.09,90.08,184.91,129.83],[952.52,960.74,184.91,129.83,184.91,129.83],[960.74,1063.47,184.91,129.83,171.75,5.36],[1063.47,1069.41,171.75,5.36,171.75,5.36],[1069.41,1139.84,171.75,5.36,129.56,95.84],[1139.84,1145.06,129.56,95.84,129.56,95.84],[1145.06,1325.65,129.56,95.84,31.0,195.88],[1325.65,1329.11,31.0,195.88,31.0,195.88],[1329.11,1568.37,31.0,195.88,192.65,80.17],[1568.37,1577.98,192.65,80.17,192.65,80.17],[1577.98,1669.94,192.65,80.17,32.37,141.55],[1669.94,1674.72,32.37,141.55,32.37,141.55],[1674.72,1802.9,32.37,141.55,128.64,41.93],[1802.9,1803.39,128.64,41.93,128.64,41.93],[1803.39,1873.11,128.64,41.93,52.05,48.27],[1873.11,1874.44,52.05,48.27,52.05,48.27],[1874.44,1970.67,52.05,48.27,137.92,127.87],[1970.67,1975.0,137.92,127.87,137.92,127.87],[1975.0,2003.24,137.92,127.87,95.46,114.14],[2003.24,2013.03,95.46,114.14,95.46,114.14],[2013.03,2067.29,95.46,114.14,31.29,198.3],[2067.29,2072.56,31.29,198.3,31.29,198.3],[2072.56,2168.86,31.29,198.3,101.82,81.57],[2168.86,2176.06,101.82,81.57,101.82,81.57],[2176.06,2209.3,101.82,81.57,104.54,62.06],[2209.3,2213.71,104.54,62.06,104.54,62.06],[2213.71,2242.96,104.54,62.06,134.59,72.34],[2242.96,2245.39,134.59,72.34,134.59,72.34],[2245.39,2365.16,134.59,72.34,116.81,145.81],[2365.16,2368.15,116.81,145.81,116.81,145.81],[2368.15,2380.24,116.81,145.81,94.37,136.92],[2380.24,2389.85,94.37,136.92,94.37,136.92],[2389.85,2435.17,94.37,136.92,171.74,97.14],[2435.17,2439.97,171.74,97.14,171.74,97.14],[2439.97,2570.98,171.74,97.14,22.51,66.79],[2570.98,2578.69,22.51,66.79,22.51,66.79],[2578.69,2623.62,22.51,66.79,30.2,123.27],[2623.62,2627.47,30.2,123.27,30.2,123.27],[2627.47,2721.58,30.2,123.27,104.56,179.38],[2721.58,2726.13,104.56,179.38,104.56,179.38],[2726.13,2848.35,104.56,179.38,93.5,17.38],[2848.35,2854.95,93.5,17.38,93.5,17.38],[2854.95,2903.84,93.5,17.38,24.1,73.88],[2903.84,2905.52,24.1,73.88,24.1,73.88],[2905.52,2926.97,24.1,73.88,14.1,98.07],[2926.97,2931.09,14.1,98.07,14.1,98.07],[2931.09,3085.95,14.1,98.07,107.27,23.86],[3085.95,3086.12,107.27,23.86,107.27,23.86],[3086.12,3146.76,107.27,23.86,53.91,132.76],[3146.76,3154.75,53.91,132.76,53.91,132.76],[3154.75,3239.73,53.91,132.76,130.97,0.47],[3239.73,3240.27,130.97,0.47,130.97,0.47],[3240.27,3325.7,130.97,0.47,154.07,96.71],[3325.7,3328.03,154.07,96.71,154.07,96.71],[3328.03,3437.27,154.07,96.71,57.86,99.52],[3437.27,3440.27,57.86,99.52,57.86,99.52],[3440.27,3613.97,57.86,99.52,13.34,5.83],[3613.97,3621.06,13.34,5.83,13.34,5.83]],"6":[[0.0,65.36,41.46,113.3,94.77,136.53],[65.36,73.97,94.77,136.53,94.77,136.53],[73.97,126.68,94.77,136.53,184.59,88.39],[126.68,133.75,184.59,88.39,184.59,88.39],[133.75,177.83,184.59,88.39,192.57,35.81],[177.83,184.79,192.57,35.81,192.57,35.81],[184.79,338.31,192.57,35.81,150.77,184.14],[338.31,339.22,150.77,184.14,150.77,184.14],[339.22,440.99,150.77,184.14,32.45,66.53],[440.99,448.91,32.45,66.53,32.45,66.53],[448.91,473.58,32.45,66.53,51.19,74.38],[473.58,479.32,51.19,74.38,51.19,74.38],[479.32,557.18,51.19,74.38,193.07,86.08],[557.18,565.03,193.07,86.08,193.07,86.08],[565.03,664.03,193.07,86.08,154.52,146.15],[664.03,671.63,154.52,146.15,154.52,146.15],[671.63,722.85,154.52,146.15,113.59,128.73],[722.85,730.94,113.59,128.73,113.59,128.73],[730.94,772.87,113.59,128.73,50.56,87.59],[772.87,779.17,50.56,87.59,50.56,87.59],[779.17,789.96,50.56,87.59,37.0,94.99],[789.96,797.35,37.0,94.99,37.0,94.99],[797.35,846.21,37.0,94.99,40.07,57.36],[846.21,854.76,40.07,57.36,40.07,57.36],[854.76,1003.62,40.07,57.36,120.4,59.68],[1003.62,1012.63,120.4,59.68,120.4,59.68],[1012.63,1050.83,120.4,59.68,179.64,86.94],[1050.83,1051.59,179.64,86.94,179.64,86.94],[1051.59,1151.64,179.64,86.94,25.68,11.3],[1151.64,1157.64,25.68,11.3,25.68,11.3],[1157.64,1242.66,25.68,11.3,102.54,135.73],[1242.66,1244.91,102.54,135.73,102.54,135.73],[1244.91,1293.18,102.54,135.73,12.54,121.03],[1293.18,1301.01,12.54,121.03,12.54,121.03],[1301.01,1458.39,12.54,121.03,87.05,157.58],[1458.39,1459.28,87.05,157.58,87.05,157.58],[1459.28,1604.85,87.05,157.58,69.8,26.72],[1604.85,1606.17,69.8,26.72,69.8,26.72],[1606.17,1680.7,69.8,26.72,11.88,97.22],[1680.7,1685.36,11.88,97.22,11.88,97.22],[1685.36,1753.27,11.88,97.22,104.62,32.37],[1753.27,1754.43,104.62,32.37,104.62,32.37],[1754.43,1838.34,104.62,32.37,118.65,173.78],[1838.34,1845.24,118.65,173.78,118.65,173.78],[1845.24,1869.21,118.65,173.78,110.37,152.21],[1869.21,1877.04,110.37,152.21,110.37,152.21],[1877.04,1920.72,110.37,152.21,50.17,99.42],[1920.72,1921.88,50.17,99.42,50.17,99.42],[1921.88,1940.56,50.17,99.42,22.72,118.27],[1940.56,1946.79,22.72,118.27,22.72,118.27],[1946.79,2171.24,22.72,118.27,171.57,9.29],[2171.24,2179.39,171.57,9.29,171.57,9.29],[2179.39,2467.29,171.57,9.29,136.73,178.76],[2467.29,2471.9,136.73,178.76,136.73,178.76],[2471.9,2598.68,136.73,178.76,171.25,28.99],[2598.68,2607.12,171.25,28.99,171.25,28.99],[2607.12,2730.82,171.25,28.99,8.59,65.8],[2730.82,2739.27,8.59,65.8,8.59,65.8],[2739.27,2813.44,8.59,65.8,14.46,155.73],[2813.44,2820.28,14.46,155.73,14.46,155.73],[2820.28,2893.57,14.46,155.73,141.9,172.39],[2893.57,2897.02,141.9,172.39,141.9,172.39],[2897.02,2954.94,141.9,172.39,102.54,89.24],[2954.94,2958.11,102.54,89.24,102.54,89.24],[2958.11,3012.31,102.54,89.24,32.3,121.49],[3012.31,3016.59,32.3,121.49,32.3,121.49],[3016.59,3092.33,32.3,121.49,87.5,152.67],[3092.33,3101.04,87.5,152.67,87.5,152.67],[3101.04,3208.46,87.5,152.67,145.19,180.86],[3208.46,3210.82,145.19,180.86,145.19,180.86],[3210.82,3252.03,145.19,180.86,105.37,133.07],[3252.03,3253.58,105.37,133.07,105.37,133.07],[3253.58,3336.01,105.37,133.07,176.99,39.17],[3336.01,3342.47,176.99,39.17,176.99,39.17],[3342.47,3419.57,176.99,39.17,33.35,34.41],[3419.57,3427.07,33.35,34.41,33.35,34.41],[3427.07,3525.94,33.35,34.41,121.29,171.63],[3525.94,3535.88,121.29,171.63,121.29,171.63],[3535.88,3872.4,121.29,171.63,4.8,41.23],[3872.4,3876.31,4.8,41.23,4.8,41.23]],"13":[[0.0,55.72,25.49,61.09,36.5,134.89],[55.72,62.45,36.5,134.89,36.5,134.89],[62.45,132.05,36.5,134.89,158.55,109.79],[132.05,139.34,158.55,109.79,158.55,109.79],[139.34,276.48,158.55,109.79,66.65,158.21],[276.48,278.14,66.65,158.21,66.65,158.21],[278.14,401.28,66.65,158.21,188.47,59.3],[401.28,406.89,188.47,59.3,188.47,59.3],[406.89,573.88,188.47,59.3,63.98,198.97],[573.88,583.38,63.98,198.97,63.98,198.97],[583.38,636.19,63.98,198.97,130.62,163.96],[636.19,645.87,130.62,163.96,130.62,163.96],[645.87,743.11,130.62,163.96,143.71,40.64],[743.11,751.63,143.71,40.64,143.71,40.64],[751.63,777.97,143.71,40.64,174.87,41.34],[777.97,786.93,174.87,41.34,174.87,41.34],[786.93,859.61,174.87,41.34,76.45,78.91],[859.61,862.53,76.45,78.91,76.45,78.91],[862.53,973.77,76.45,78.91,198.17,147.85],[973.77,982.36,198.17,147.85,198.17,147.85],[982.36,1063.41,198.17,147.85,109.28,92.22],[1063.41,1070.99,109.28,92.22,109.28,92.22],[1070.99,1106.9,109.28,92.22,107.88,25.75],[1106.9,1110.2,107.88,25.75,107.88,25.75],[1110.2,1162.0,107.88,25.75,53.17,106.01],[1162.0,1167.46,53.17,106.01,53.17,106.01],[1167.46,1312.63,53.17,106.01,181.6,168.11],[1312.63,1314.56,181.6,168.11,181.6,168.11],[1314.56,1381.7,181.6,168.11,125.7,98.92],[1381.7,1383.15,125.7,98.92,125.7,98.92],[1383.15,1566.67,125.7,98.92,152.98,9.77],[1566.67,1575.41,152.98,9.77,152.98,9.77],[1575.41,1650.93,152.98,9.77,30.33,43.37],[1650.93,1655.07,30.33,43.37,30.33,43.37],[1655.07,1751.52,30.33,43.37,3.2,148.55],[1751.52,1759.63,3.2,148.55,3.2,148.55],[1759.63,1890.02,3.2,148.55,146.42,119.99],[1890.02,1897.27,146.42,119.99,146.42,119.99],[1897.27,1912.09,146.42,119.99,123.89,107.85],[1912.09,1914.87,123.89,107.85,123.89,107.85],[1914.87,2004.33,123.89,107.85,41.58,39.21],[2004.33,2009.77,41.58,39.21,41.58,39.21],[2009.77,2060.35,41.58,39.21,17.55,135.34],[2060.35,2067.02,17.55,135.34,17.55,135.34],[2067.02,2139.46,17.55,135.34,138.04,176.74],[2139.46,2148.88,138.04,176.74,138.04,176.74],[2148.88,2257.58,138.04,176.74,25.99,94.22],[2257.58,2265.98,25.99,94.22,25.99,94.22],[2265.98,2373.25,25.99,94.22,180.25,34.1],[2373.25,2374.45,180.25,34.1,180.25,34.1],[2374.45,2545.62,180.25,34.1,53.53,198.39],[2545.62,2548.63,53.53,198.39,53.53,198.39],[2548.63,2728.66,53.53,198.39,183.68,6.86],[2728.66,2733.08,183.68,6.86,183.68,6.86],[2733.08,2945.07,183.68,6.86,77.38,195.01],[2945.07,2948.09,77.38,195.01,77.38,195.01],[2948.09,3109.65,77.38,195.01,73.62,8.89],[3109.65,3115.77,73.62,8.89,73.62,8.89],[3115.77,3332.63,73.62,8.89,110.63,127.9],[3332.63,3339.77,110.63,127.9,110.63,127.9],[3339.77,3419.17,110.63,127.9,188.08,183.26],[3419.17,3423.11,188.08,183.26,188.08,183.26],[3423.11,3601.38,188.08,183.26,103.94,25.41],[3601.38,3608.58,103.94,25.41,103.94,25.41]],"14":[[0.0,13.9,65.16,158.83,75.7,170.93],[13.9,23.87,75.7,170.93,75.7,170.93],[23.87,98.45,75.7,170.93,75.77,50.22],[98.45,99.44,75.77,50.22,75.77,50.22],[99.44,153.31,75.77,50.22,79.76,110.78],[153.31,162.38,79.76,110.78,79.76,110.78],[162.38,244.42,79.76,110.78,173.51,181.57],[244.42,253.36,173.51,181.57,173.51,181.57],[253.36,311.71,173.51,181.57,97.22,140.09],[311.71,312.28,97.22,140.09,97.22,140.09],[312.28,334.65,97.22,140.09,127.03,127.85],[334.65,344.13,127.03,127.85,127.03,127.85],[344.13,515.55,127.03,127.85,113.85,28.55],[515.55,523.89,113.85,28.55,113.85,28.55],[523.89,562.99,113.85,28.55,40.07,46.61],[562.99,569.52,40.07,46.61,40.07,46.61],[569.52,642.44,40.07,46.61,175.45,75.24],[642.44,643.97,175.45,75.24,175.45,75.24],[643.97,700.16,175.45,75.24,121.85,49.13],[700.16,705.22,121.85,49.13,121.85,49.13],[705.22,743.5,121.85,49.13,47.94,53.47],[743.5,745.1,47.94,53.47,47.94,53.47],[745.1,809.42,47.94,53.47,6.58,156.47],[809.42,814.28,6.58,156.47,6.58,156.47],[814.28,921.17,6.58,156.47,129.84,120.45],[921.17,925.78,129.84,120.45,129.84,120.45],[925.78,1188.83,129.84,120.45,1.08,62.63],[1188.83,1188.94,1.08,62.63,1.08,62.63],[1188.94,1340.85,1.08,62.63,186.49,6.66],[1340.85,1341.82,186.49,6.66,186.49,6.66],[1341.82,1428.09,186.49,6.66,86.02,41.59],[1428.09,1429.93,86.02,41.59,86.02,41.59],[1429.93,1494.58,86.02,41.59,123.9,104.7],[1494.58,1502.43,123.9,104.7,123.9,104.7],[1502.43,1539.41,123.9,104.7,91.15,46.69],[1539.41,1545.86,91.15,46.69,91.15,46.69],[1545.86,1614.84,91.15,46.69,68.87,102.84],[1614.84,1624.2,68.87,102.84,68.87,102.84],[1624.2,1695.72,68.87,102.84,140.23,124.21],[1695.72,1696.01,140.23,124.21,140.23,124.21],[1696.01,1734.4,140.23,124.21,76.12,84.05],[1734.4,1741.49,76.12,84.05,76.12,84.05],[1741.49,1837.62,76.12,84.05,7.45,119.02],[1837.62,1838.6,7.45,119.02,7.45,119.02],[1838.6,1869.71,7.45,119.02,19.0,167.51],[1869.71,1873.46,19.0,167.51,19.0,167.51],[1873.46,2173.72,19.0,167.51,151.73,14.3],[2173.72,2174.2,151.73,14.3,151.73,14.3],[2174.2,2216.83,151.73,14.3,87.25,28.68],[2216.83,2222.3,87.25,28.68,87.25,28.68],[2222.3,2318.27,87.25,28.68,6.0,56.23],[2318.27,2321.4,6.0,56.23,6.0,56.23],[2321.4,2350.58,6.0,56.23,0.54,80.85],[2350.58,2355.88,0.54,80.85,0.54,80.85],[2355.88,2392.93,0.54,80.85,63.77,100.76],[2392.93,2402.42,63.77,100.76,63.77,100.76],[2402.42,2437.51,63.77,100.76,121.29,61.4],[2437.51,2443.92,121.29,61.4,121.29,61.4],[2443.92,2501.73,121.29,61.4,165.09,144.89],[2501.73,2507.94,165.09,144.89,165.09,144.89],[2507.94,2559.39,165.09,144.89,85.19,105.8],[2559.39,2562.24,85.19,105.8,85.19,105.8],[2562.24,2614.82,85.19,105.8,36.85,47.47],[2614.82,2621.28,36.85,47.47,36.85,47.47],[2621.28,2672.74,36.85,47.47,126.36,5.48],[2672.74,2681.73,126.36,5.48,126.36,5.48],[2681.73,2756.6,126.36,5.48,93.19,96.83],[2756.6,2761.95,93.19,96.83,93.19,96.83],[2761.95,2879.7,93.19,96.83,66.89,194.35],[2879.7,2881.83,66.89,194.35,66.89,194.35],[2881.83,2978.78,66.89,194.35,25.88,71.26],[2978.78,2986.7,25.88,71.26,25.88,71.26],[2986.7,3082.37,25.88,71.26,78.44,65.17],[3082.37,3089.85,78.44,65.17,78.44,65.17],[3089.85,3120.04,78.44,65.17,40.79,50.25],[3120.04,3125.41,40.79,50.25,40.79,50.25],[3125.41,3212.03,40.79,50.25,169.12,104.85],[3212.03,3220.51,169.12,104.85,169.12,104.85],[3220.51,3425.39,169.12,104.85,0.93,170.44],[3425.39,3429.68,0.93,170.44,0.93,170.44],[3429.68,3536.88,0.93,170.44,113.85,153.2],[3536.88,3539.58,113.85,153.2,113.85,153.2],[3539.58,3635.46,113.85,153.2,106.14,57.32],[3635.46,3643.52,106.14,57.32,106.14,57.32]],"15":[[0.0,44.05,124.69,117.22,160.5,74.5],[44.05,44.15,160.5,74.5,160.5,74.5],[44.15,180.52,160.5,74.5,4.67,182.5],[180.52,183.09,4.67,182.5,4.67,182.5],[183.09,393.01,4.67,182.5,191.96,185.09],[393.01,399.89,191.96,185.09,191.96,185.09],[399.89,604.8,191.96,185.09,6.26,10.9],[604.8,606.33,6.26,10.9,6.26,10.9],[606.33,801.19,6.26,10.9,170.91,155.82],[801.19,802.83,170.91,155.82,170.91,155.82],[802.83,827.2,170.91,155.82,135.62,141.53],[827.2,832.47,135.62,141.53,135.62,141.53],[832.47,921.52,135.62,141.53,83.45,66.31],[921.52,925.45,83.45,66.31,83.45,66.31],[925.45,974.32,83.45,66.31,98.17,97.88],[974.32,983.56,98.17,97.88,98.17,97.88],[983.56,1078.96,98.17,97.88,162.97,185.24],[1078.96,1087.96,162.97,185.24,162.97,185.24],[1087.96,1222.76,162.97,185.24,61.29,143.64],[1222.76,1224.27,61.29,143.64,61.29,143.64],[1224.27,1386.25,61.29,143.64,99.75,6.75],[1386.25,1393.51,99.75,6.75,99.75,6.75],[1393.51,1468.8,99.75,6.75,99.19,92.92],[1468.8,1475.39,99.19,92.92,99.19,92.92],[1475.39,1518.71,99.19,92.92,91.16,9.91],[1518.71,1523.85,91.16,9.91,91.16,9.91],[1523.85,1622.31,91.16,9.91,185.86,38.11],[1622.31,1627.98,185.86,38.11,185.86,38.11],[1627.98,1713.36,185.86,38.11,49.28,83.7],[1713.36,1720.03,49.28,83.7,49.28,83.7],[1720.03,1773.26,49.28,83.7,70.28,185.29],[1773.26,1776.81,70.28,185.29,70.28,185.29],[1776.81,1868.41,70.28,185.29,91.98,73.43],[1868.41,1875.27,91.98,73.43,91.98,73.43],[1875.27,1937.61,91.98,73.43,5.49,74.95],[1937.61,1947.45,5.49,74.95,5.49,74.95],[1947.45,2123.55,5.49,74.95,173.92,32.25],[2123.55,2133.23,173.92,32.25,173.92,32.25],[2133.23,2415.1,173.92,32.25,9.9,110.42],[2415.1,2415.53,9.9,110.42,9.9,110.42],[2415.53,2471.15,9.9,110.42,76.54,151.71],[2471.15,2473.01,76.54,151.71,76.54,151.71],[2473.01,2514.99,76.54,151.71,123.25,91.93],[2514.99,2524.41,123.25,91.93,123.25,91.93],[2524.41,2594.17,123.25,91.93,10.18,58.78],[2594.17,2600.42,10.18,58.78,10.18,58.78],[2600.42,2830.14,10.18,58.78,199.07,190.92],[2830.14,2838.58,199.07,190.92,199.07,190.92],[2838.58,2883.04,199.07,190.92,125.71,160.16],[2883.04,2890.08,125.71,160.16,125.71,160.16],[2890.08,2996.56,125.71,160.16,86.47,25.51],[2996.56,3003.03,86.47,25.51,86.47,25.51],[3003.03,3082.99,86.47,25.51,195.75,106.42],[3082.99,3090.29,195.75,106.42,195.75,106.42],[3090.29,3306.17,195.75,106.42,45.89,176.36],[3306.17,3314.19,45.89,176.36,45.89,176.36],[3314.19,3396.93,45.89,176.36,166.77,138.32],[3396.93,3401.92,166.77,138.32,166.77,138.32],[3401.92,3546.05,166.77,138.32,21.34,9.15],[3546.05,3553.45,21.34,9.15,21.34,9.15],[3553.45,3854.14,21.34,9.15,172.4,40.39],[3854.14,3857.85,172.4,40.39,172.4,40.39]],"24":[[0.0,57.12,187.4,33.93,129.61,33.16],[57.12,64.58,129.61,33.16,129.61,33.16],[64.58,147.48,129.61,33.16,73.98,82.71],[147.48,154.06,73.98,82.71,73.98,82.71],[154.06,200.85,73.98,82.71,82.59,148.54],[200.85,202.06,82.59,148.54,82.59,148.54],[202.06,262.14,82.59,148.54,162.55,136.52],[262.14,268.31,162.55,136.52,162.55,136.52],[268.31,343.95,162.55,136.52,42.08,69.9],[343.95,349.92,42.08,69.9,42.08,69.9],[349.92,465.51,42.08,69.9,114.56,176.6],[465.51,468.76,114.56,176.6,114.56,176.6],[468.76,614.34,114.56,176.6,87.41,21.33],[614.34,620.77,87.41,21.33,87.41,21.33],[620.77,874.71,87.41,21.33,181.83,180.81],[874.71,881.9,181.83,180.81,181.83,180.81],[881.9,966.02,181.83,180.81,77.96,156.47],[966.02,975.82,77.96,156.47,77.96,156.47],[975.82,1102.18,77.96,156.47,30.58,104.44],[1102.18,1107.79,30.58,104.44,30.58,104.44],[1107.79,1174.08,30.58,104.44,104.1,55.02],[1174.08,1178.79,104.1,55.02,104.1,55.02],[1178.79,1302.57,104.1,55.02,24.38,139.7],[1302.57,1303.82,24.38,139.7,24.38,139.7],[1303.82,1350.87,24.38,139.7,58.91,153.53],[1350.87,1357.22,58.91,153.53,58.91,153.53],[1357.22,1466.01,58.91,153.53,17.45,13.86],[1466.01,1470.99,17.45,13.86,17.45,13.86],[1470.99,1603.12,17.45,13.86,114.84,96.12],[1603.12,1611.18,114.84,96.12,114.84,96.12],[1611.18,1656.73,114.84,96.12,55.64,92.73],[1656.73,1664.67,55.64,92.73,55.64,92.73],[1664.67,1705.76,55.64,92.73,14.4,24.75],[1705.76,1710.89,14.4,24.75,14.4,24.75],[1710.89,1817.94,14.4,24.75,23.08,173.25],[1817.94,1820.18,23.08,173.25,23.08,173.25],[1820.18,1850.71,23.08,173.25,66.81,198.41],[1850.71,1852.55,66.81,198.41,66.81,198.41],[1852.55,1940.32,66.81,198.41,9.39,134.67],[1940.32,1943.17,9.39,134.67,9.39,134.67],[1943.17,2064.72,9.39,134.67,177.05,121.73],[2064.72,2072.15,177.05,121.73,177.05,121.73],[2072.15,2207.7,177.05,121.73,68.01,168.18],[2207.7,2215.15,68.01,168.18,68.01,168.18],[2215.15,2267.46,68.01,168.18,154.75,130.09],[2267.46,2274.23,154.75,130.09,154.75,130.09],[2274.23,2288.16,154.75,130.09,139.33,136.67],[2288.16,2295.93,139.33,136.67,139.33,136.67],[2295.93,2518.48,139.33,136.67,18.17,17.02],[2518.48,2520.26,18.17,17.02,18.17,17.02],[2520.26,2569.31,18.17,17.02,41.35,97.23],[2569.31,2578.85,41.35,97.23,41.35,97.23],[2578.85,2599.88,41.35,97.23,27.6,130.81],[2599.88,2602.13,27.6,130.81,27.6,130.81],[2602.13,2763.05,27.6,130.81,197.23,186.03],[2763.05,2766.77,197.23,186.03,197.23,186.03],[2766.77,2985.22,197.23,186.03,87.31,160.37],[2985.22,2994.51,87.31,160.37,87.31,160.37],[2994.51,3086.54,87.31,160.37,73.75,63.6],[3086.54,3088.02,73.75,63.6,73.75,63.6],[3088.02,3221.86,73.75,63.6,96.24,143.01],[3221.86,3231.11,96.24,143.01,96.24,143.01],[3231.11,3304.63,96.24,143.01,10.59,198.12],[3304.63,3313.87,10.59,198.12,10.59,198.12],[3313.87,3454.38,10.59,198.12,192.78,34.64],[3454.38,3457.05,192.78,34.64,192.78,34.64],[3457.05,3687.87,192.78,34.64,49.75,24.01],[3687.87,3694.22,49.75,24.01,49.75,24.01]],"26":[[0.0,90.12,75.32,54.61,197.47,148.9],[90.12,93.06,197.47,148.9,197.47,148.9],[93.06,209.96,197.47,148.9,99.26,154.83],[209.96,217.3,99.26,154.83,99.26,154.83],[217.3,333.17,99.26,154.83,37.6,2.35],[333.17,341.6,37.6,2.35,37.6,2.35],[341.6,747.16,37.6,2.35,197.73,178.08],[747.16,749.54,197.73,178.08,197.73,178.08],[749.54,779.48,197.73,178.08,165.45,183.68],[779.48,786.85,165.45,183.68,165.45,183.68],[786.85,955.47,165.45,183.68,88.13,61.57],[955.47,956.5,88.13,61.57,88.13,61.57],[956.5,977.9,88.13,61.57,49.92,70.06],[977.9,981.78,49.92,70.06,49.92,70.06],[981.78,1147.2,49.92,70.06,174.85,144.4],[1147.2,1154.21,174.85,144.4,174.85,144.4],[1154.21,1174.66,174.85,144.4,161.53,180.86],[1174.66,1175.65,161.53,180.86,161.53,180.86],[1175.65,1273.04,161.53,180.86,184.35,110.01],[1273.04,1274.43,184.35,110.01,184.35,110.01],[1274.43,1482.76,184.35,110.01,17.17,158.12],[1482.76,1489.26,17.17,158.12,17.17,158.12],[1489.26,1630.66,17.17,158.12,182.81,46.9],[1630.66,1637.7,182.81,46.9,182.81,46.9],[1637.7,1691.52,182.81,46.9,190.18,134.01],[1691.52,1698.59,190.18,134.01,190.18,134.01],[1698.59,1807.29,190.18,134.01,39.12,105.63],[1807.29,1817.12,39.12,105.63,39.12,105.63],[1817.12,1959.91,39.12,105.63,5.93,4.7],[1959.91,1961.28,5.93,4.7,5.93,4.7],[1961.28,2210.42,5.93,4.7,0.31,149.49],[2210.42,2213.18,0.31,149.49,0.31,149.49],[2213.18,2338.02,0.31,149.49,115.07,0.95],[2338.02,2343.37,115.07,0.95,115.07,0.95],[2343.37,2424.86,115.07,0.95,146.22,132.09],[2424.86,2432.75,146.22,132.09,146.22,132.09],[2432.75,2481.08,146.22,132.09,137.79,162.1],[2481.08,2486.13,137.79,162.1,137.79,162.1],[2486.13,2556.62,137.79,162.1,20.42,122.36],[2556.62,2558.52,20.42,122.36,20.42,122.36],[2558.52,2568.08,20.42,122.36,34.34,112.74],[2568.08,2570.04,34.34,112.74,34.34,112.74],[2570.04,2630.22,34.34,112.74,99.04,40.82],[2630.22,2637.82,99.04,40.82,99.04,40.82],[2637.82,2730.24,99.04,40.82,199.81,170.85],[2730.24,2734.76,199.81,170.85,199.81,170.85],[2734.76,2816.35,199.81,170.85,157.24,84.02],[2816.35,2824.67,157.24,84.02,157.24,84.02],[2824.67,2885.23,157.24,84.02,125.67,132.32],[2885.23,2892.67,125.67,132.32,125.67,132.32],[2892.67,2986.76,125.67,132.32,91.99,1.51],[2986.76,2992.01,91.99,1.51,91.99,1.51],[2992.01,3055.86,91.99,1.51,118.86,121.88],[3055.86,3061.88,118.86,121.88,118.86,121.88],[3061.88,3222.88,118.86,121.88,66.18,14.68],[3222.88,3228.26,66.18,14.68,66.18,14.68],[3228.26,3254.02,66.18,14.68,109.41,6.02],[3254.02,3261.88,109.41,6.02,109.41,6.02],[3261.88,3309.87,109.41,6.02,138.04,63.4],[3309.87,3313.95,138.04,63.4,138.04,63.4],[3313.95,3431.15,138.04,63.4,194.77,43.43],[3431.15,3437.93,194.77,43.43,194.77,43.43],[3437.93,3520.02,194.77,43.43,64.36,89.25],[3520.02,3529.76,64.36,89.25,64.36,89.25],[3529.76,3675.71,64.36,89.25,158.01,102.78],[3675.71,3678.26,158.01,102.78,158.01,102.78]],"27":[[0.0,188.69,169.01,178.96,123.18,51.23],[188.69,196.68,123.18,51.23,123.18,51.23],[196.68,265.98,123.18,51.23,154.21,4.01],[265.98,272.06,154.21,4.01,154.21,4.01],[272.06,397.85,154.21,4.01,4.81,159.95],[397.85,402.62,4.81,159.95,4.81,159.95],[402.62,470.34,4.81,159.95,46.31,142.68],[470.34,471.27,46.31,142.68,46.31,142.68],[471.27,743.03,46.31,142.68,172.74,18.51],[743.03,745.57,172.74,18.51,172.74,18.51],[745.57,907.66,172.74,18.51,29.64,184.37],[907.66,909.4,29.64,184.37,29.64,184.37],[909.4,992.98,29.64,184.37,5.68,30.41],[992.98,993.07,5.68,30.41,5.68,30.41],[993.07,1069.89,5.68,30.41,107.47,128.29],[1069.89,1072.16,107.47,128.29,107.47,128.29],[1072.16,1118.71,107.47,128.29,136.94,188.23],[1118.71,1121.9,136.94,188.23,136.94,188.23],[1121.9,1245.41,136.94,188.23,10.8,61.2],[1245.41,1253.0,10.8,61.2,10.8,61.2],[1253.0,1326.74,10.8,61.2,151.54,80.37],[1326.74,1332.93,151.54,80.37,151.54,80.37],[1332.93,1426.83,151.54,80.37,97.46,146.61],[1426.83,1432.82,97.46,146.61,97.46,146.61],[1432.82,1449.42,97.46,146.61,123.79,128.95],[1449.42,1457.58,123.79,128.95,123.79,128.95],[1457.58,1569.28,123.79,128.95,27.89,147.41],[1569.28,1570.72,27.89,147.41,27.89,147.41],[1570.72,1668.79,27.89,147.41,189.34,160.11],[1668.79,1669.49,189.34,160.11,189.34,160.11],[1669.49,1699.79,189.34,160.11,130.04,156.85],[1699.79,1704.25,130.04,156.85,130.04,156.85],[1704.25,1837.75,130.04,156.85,187.54,24.18],[1837.75,1839.85,187.54,24.18,187.54,24.18],[1839.85,2103.08,187.54,24.18,64.21,186.0],[2103.08,2108.84,64.21,186.0,64.21,186.0],[2108.84,2267.91,64.21,186.0,27.53,83.85],[2267.91,2273.89,27.53,83.85,27.53,83.85],[2273.89,2384.88,27.53,83.85,76.22,186.13],[2384.88,2390.72,76.22,186.13,76.22,186.13],[2390.72,2517.53,76.22,186.13,165.31,100.56],[2517.53,2525.98,165.31,100.56,165.31,100.56],[2525.98,2637.38,165.31,100.56,95.14,172.17],[2637.38,2642.78,95.14,172.17,95.14,172.17],[2642.78,2735.58,95.14,172.17,2.81,68.75],[2735.58,2739.76,2.81,68.75,2.81,68.75],[2739.76,2856.2,2.81,68.75,86.85,140.73],[2856.2,2862.65,86.85,140.73,86.85,140.73],[2862.65,2947.53,86.85,140.73,156.58,122.41],[2947.53,2953.33,156.58,122.41,156.58,122.41],[2953.33,2972.85,156.58,122.41,136.55,135.3],[2972.85,2979.57,136.55,135.3,136.55,135.3],[2979.57,3010.02,136.55,135.3,178.74,156.12],[3010.02,3013.57,178.74,156.12,178.74,156.12],[3013.57,3106.17,178.74,156.12,73.09,166.94],[3106.17,3116.16,73.09,166.94,73.09,166.94],[3116.16,3136.08,73.09,166.94,111.4,157.74],[3136.08,3145.09,111.4,157.74,111.4,157.74],[3145.09,3166.93,111.4,157.74,82.05,190.05],[3166.93,3176.4,82.05,190.05,82.05,190.05],[3176.4,3347.52,82.05,190.05,7.15,81.7],[3347.52,3353.8,7.15,81.7,7.15,81.7],[3353.8,3424.55,7.15,81.7,136.35,70.44],[3424.55,3430.23,136.35,70.44,136.35,70.44],[3430.23,3479.66,136.35,70.44,59.09,127.72],[3479.66,3488.57,59.09,127.72,59.09,127.72],[3488.57,3584.85,59.09,127.72,182.4,119.97],[3584.85,3593.75,182.4,119.97,182.4,119.97],[3593.75,3691.96,182.4,119.97,103.37,65.97],[3691.96,3699.29,103.37,65.97,103.37,65.97]]};
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
