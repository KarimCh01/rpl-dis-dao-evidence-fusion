<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i3_mob3_d3_s22_dao2</title>
    <randomseed>22</randomseed>
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
          <pos x="187.79" y="104.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="149.35" y="90.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="106.20" y="98.53" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="129.32" y="120.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="44.78" y="122.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="79.49" y="96.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="140.87" y="135.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="118.29" y="171.56" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="52.84" y="53.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="192.51" y="7.58" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="105.16" y="96.76" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="155.08" y="81.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.68" y="91.54" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="150.38" y="63.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="42.15" y="147.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="113.02" y="10.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
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
          <pos x="174.60" y="48.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="87.57" y="54.99" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="39.52" y="185.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="164.29" y="103.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="166.18" y="66.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="149.16" y="95.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="132.97" y="189.70" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
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
          <pos x="7.14" y="177.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="21.00" y="152.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="197.76" y="143.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="64.54" y="89.77" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="59.67" y="72.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="152.72" y="6.25" />
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
var S = {"3":[[0.0,46.44,174.6,48.17,107.44,44.29],[46.44,54.33,107.44,44.29,107.44,44.29],[54.33,185.64,107.44,44.29,173.13,148.23],[185.64,191.25,173.13,148.23,173.13,148.23],[191.25,369.05,173.13,148.23,10.02,120.03],[369.05,372.02,10.02,120.03,10.02,120.03],[372.02,548.9,10.02,120.03,137.62,129.39],[548.9,553.52,137.62,129.39,137.62,129.39],[553.52,582.84,137.62,129.39,160.09,169.87],[582.84,587.72,160.09,169.87,160.09,169.87],[587.72,707.56,160.09,169.87,139.12,77.7],[707.56,714.44,139.12,77.7,139.12,77.7],[714.44,789.41,139.12,77.7,134.32,174.04],[789.41,792.59,134.32,174.04,134.32,174.04],[792.59,898.03,134.32,174.04,80.99,12.44],[898.03,900.59,80.99,12.44,80.99,12.44],[900.59,958.68,80.99,12.44,112.05,78.51],[958.68,966.86,112.05,78.51,112.05,78.51],[966.86,1073.92,112.05,78.51,154.51,175.25],[1073.92,1083.36,154.51,175.25,154.51,175.25],[1083.36,1175.64,154.51,175.25,120.73,0.16],[1175.64,1176.55,120.73,0.16,120.73,0.16],[1176.55,1287.55,120.73,0.16,141.28,66.77],[1287.55,1289.15,141.28,66.77,141.28,66.77],[1289.15,1383.49,141.28,66.77,76.73,114.81],[1383.49,1388.73,76.73,114.81,76.73,114.81],[1388.73,1531.2,76.73,114.81,183.7,18.05],[1531.2,1540.94,183.7,18.05,183.7,18.05],[1540.94,1597.97,183.7,18.05,97.16,8.25],[1597.97,1600.31,97.16,8.25,97.16,8.25],[1600.31,1693.37,97.16,8.25,156.68,172.65],[1693.37,1697.7,156.68,172.65,156.68,172.65],[1697.7,1763.33,156.68,172.65,37.03,152.9],[1763.33,1768.36,37.03,152.9,37.03,152.9],[1768.36,1856.88,37.03,152.9,23.33,102.45],[1856.88,1860.45,23.33,102.45,23.33,102.45],[1860.45,2001.79,23.33,102.45,128.79,57.77],[2001.79,2009.82,128.79,57.77,128.79,57.77],[2009.82,2046.49,128.79,57.77,128.15,129.39],[2046.49,2049.64,128.15,129.39,128.15,129.39],[2049.64,2101.85,128.15,129.39,53.08,115.34],[2101.85,2111.61,53.08,115.34,53.08,115.34],[2111.61,2145.28,53.08,115.34,57.85,165.18],[2145.28,2150.4,57.85,165.18,57.85,165.18],[2150.4,2280.25,57.85,165.18,19.59,55.0],[2280.25,2282.54,19.59,55.0,19.59,55.0],[2282.54,2589.26,19.59,55.0,194.07,63.76],[2589.26,2596.77,194.07,63.76,194.07,63.76],[2596.77,2723.06,194.07,63.76,1.16,34.61],[2723.06,2730.71,1.16,34.61,1.16,34.61],[2730.71,2759.16,1.16,34.61,21.73,45.24],[2759.16,2761.04,21.73,45.24,21.73,45.24],[2761.04,2770.95,21.73,45.24,23.73,63.87],[2770.95,2780.76,23.73,63.87,23.73,63.87],[2780.76,2856.82,23.73,63.87,82.29,196.97],[2856.82,2862.35,82.29,196.97,82.29,196.97],[2862.35,2906.05,82.29,196.97,39.7,199.09],[2906.05,2915.56,39.7,199.09,39.7,199.09],[2915.56,3312.76,39.7,199.09,163.82,29.28],[3312.76,3315.02,163.82,29.28,163.82,29.28],[3315.02,3371.98,163.82,29.28,105.68,65.32],[3371.98,3378.48,105.68,65.32,105.68,65.32],[3378.48,3618.62,105.68,65.32,193.57,181.63],[3618.62,3620.34,193.57,181.63,193.57,181.63]],"5":[[0.0,100.02,7.14,177.11,138.97,78.1],[100.02,106.51,138.97,78.1,138.97,78.1],[106.51,166.11,138.97,78.1,73.02,136.98],[166.11,168.16,73.02,136.98,73.02,136.98],[168.16,247.52,73.02,136.98,146.37,150.69],[247.52,251.05,146.37,150.69,146.37,150.69],[251.05,440.62,146.37,150.69,34.17,140.77],[440.62,445.26,34.17,140.77,34.17,140.77],[445.26,528.75,34.17,140.77,99.76,137.48],[528.75,529.11,99.76,137.48,99.76,137.48],[529.11,600.54,99.76,137.48,20.58,183.58],[600.54,607.61,20.58,183.58,20.58,183.58],[607.61,642.14,20.58,183.58,25.5,147.96],[642.14,645.95,25.5,147.96,25.5,147.96],[645.95,697.41,25.5,147.96,82.15,162.86],[697.41,705.14,82.15,162.86,82.15,162.86],[705.14,810.82,82.15,162.86,87.6,42.8],[810.82,815.98,87.6,42.8,87.6,42.8],[815.98,960.08,87.6,42.8,101.61,179.7],[960.08,968.28,101.61,179.7,101.61,179.7],[968.28,1067.02,101.61,179.7,98.29,9.26],[1067.02,1069.51,98.29,9.26,98.29,9.26],[1069.51,1176.11,98.29,9.26,150.26,144.8],[1176.11,1177.03,150.26,144.8,150.26,144.8],[1177.03,1214.94,150.26,144.8,110.76,191.62],[1214.94,1222.01,110.76,191.62,110.76,191.62],[1222.01,1282.84,110.76,191.62,62.6,102.84],[1282.84,1289.61,62.6,102.84,62.6,102.84],[1289.61,1393.65,62.6,102.84,147.21,36.16],[1393.65,1395.63,147.21,36.16,147.21,36.16],[1395.63,1562.42,147.21,36.16,126.86,152.52],[1562.42,1564.86,126.86,152.52,126.86,152.52],[1564.86,1790.55,126.86,152.52,23.02,26.55],[1790.55,1792.34,23.02,26.55,23.02,26.55],[1792.34,1864.37,23.02,26.55,110.97,127.9],[1864.37,1865.46,110.97,127.9,110.97,127.9],[1865.46,1987.5,110.97,127.9,51.29,197.86],[1987.5,1992.56,51.29,197.86,51.29,197.86],[1992.56,2061.59,51.29,197.86,18.17,68.21],[2061.59,2064.02,18.17,68.21,18.17,68.21],[2064.02,2151.72,18.17,68.21,116.7,181.03],[2151.72,2152.65,116.7,181.03,116.7,181.03],[2152.65,2256.37,116.7,181.03,42.37,186.29],[2256.37,2259.1,42.37,186.29,42.37,186.29],[2259.1,2296.62,42.37,186.29,96.79,174.47],[2296.62,2304.02,96.79,174.47,96.79,174.47],[2304.02,2488.38,96.79,174.47,62.16,19.55],[2488.38,2495.43,62.16,19.55,62.16,19.55],[2495.43,2664.56,62.16,19.55,164.11,81.14],[2664.56,2666.55,164.11,81.14,164.11,81.14],[2666.55,2709.38,164.11,81.14,98.72,31.88],[2709.38,2718.73,98.72,31.88,98.72,31.88],[2718.73,2947.43,98.72,31.88,28.39,179.59],[2947.43,2950.19,28.39,179.59,28.39,179.59],[2950.19,3176.93,28.39,179.59,191.16,126.65],[3176.93,3181.5,191.16,126.65,191.16,126.65],[3181.5,3344.93,191.16,126.65,146.71,2.41],[3344.93,3350.21,146.71,2.41,146.71,2.41],[3350.21,3422.93,146.71,2.41,129.92,135.64],[3422.93,3426.21,129.92,135.64,129.92,135.64],[3426.21,3510.88,129.92,135.64,5.07,61.5],[3510.88,3518.76,5.07,61.5,5.07,61.5],[3518.76,3683.27,5.07,61.5,184.55,8.84],[3683.27,3690.27,184.55,8.84,184.55,8.84]],"8":[[0.0,169.93,21.0,152.26,183.75,44.51],[169.93,171.35,183.75,44.51,183.75,44.51],[171.35,202.56,183.75,44.51,194.17,15.37],[202.56,205.93,194.17,15.37,194.17,15.37],[205.93,281.02,194.17,15.37,158.29,161.12],[281.02,285.7,158.29,161.12,158.29,161.12],[285.7,334.66,158.29,161.12,85.99,150.71],[334.66,343.48,85.99,150.71,85.99,150.71],[343.48,377.72,85.99,150.71,55.37,117.65],[377.72,385.07,55.37,117.65,55.37,117.65],[385.07,554.15,55.37,117.65,144.54,97.61],[554.15,555.58,144.54,97.61,144.54,97.61],[555.58,668.03,144.54,97.61,36.17,31.76],[668.03,673.09,36.17,31.76,36.17,31.76],[673.09,718.46,36.17,31.76,44.38,118.73],[718.46,727.51,44.38,118.73,44.38,118.73],[727.51,765.08,44.38,118.73,103.66,161.53],[765.08,768.24,103.66,161.53,103.66,161.53],[768.24,795.88,103.66,161.53,68.79,149.68],[795.88,801.96,68.79,149.68,68.79,149.68],[801.96,839.85,68.79,149.68,14.49,158.62],[839.85,840.79,14.49,158.62,14.49,158.62],[840.79,946.96,14.49,158.62,97.26,178.02],[946.96,951.8,97.26,178.02,97.26,178.02],[951.8,1027.04,97.26,178.02,71.66,81.12],[1027.04,1032.71,71.66,81.12,71.66,81.12],[1032.71,1108.18,71.66,81.12,2.8,21.55],[1108.18,1113.62,2.8,21.55,2.8,21.55],[1113.62,1339.59,2.8,21.55,108.96,173.13],[1339.59,1348.91,108.96,173.13,108.96,173.13],[1348.91,1428.12,108.96,173.13,30.52,97.1],[1428.12,1429.4,30.52,97.1,30.52,97.1],[1429.4,1529.96,30.52,97.1,134.92,158.58],[1529.96,1536.25,134.92,158.58,134.92,158.58],[1536.25,1604.49,134.92,158.58,51.78,96.63],[1604.49,1611.56,51.78,96.63,51.78,96.63],[1611.56,1867.74,51.78,96.63,176.87,155.31],[1867.74,1873.14,176.87,155.31,176.87,155.31],[1873.14,2097.2,176.87,155.31,137.52,15.68],[2097.2,2098.09,137.52,15.68,137.52,15.68],[2098.09,2201.91,137.52,15.68,63.74,123.36],[2201.91,2207.06,63.74,123.36,63.74,123.36],[2207.06,2228.51,63.74,123.36,33.85,112.47],[2228.51,2232.08,33.85,112.47,33.85,112.47],[2232.08,2332.14,33.85,112.47,56.28,179.73],[2332.14,2332.37,56.28,179.73,56.28,179.73],[2332.37,2416.89,56.28,179.73,25.77,26.13],[2416.89,2420.21,25.77,26.13,25.77,26.13],[2420.21,2447.64,25.77,26.13,2.66,67.11],[2447.64,2451.64,2.66,67.11,2.66,67.11],[2451.64,2576.83,2.66,67.11,190.09,172.63],[2576.83,2585.78,190.09,172.63,190.09,172.63],[2585.78,2623.48,190.09,172.63,158.71,157.57],[2623.48,2633.35,158.71,157.57,158.71,157.57],[2633.35,2668.63,158.71,157.57,154.77,102.59],[2668.63,2672.84,154.77,102.59,154.77,102.59],[2672.84,2752.48,154.77,102.59,120.74,37.49],[2752.48,2761.2,120.74,37.49,120.74,37.49],[2761.2,2961.74,120.74,37.49,14.01,85.57],[2961.74,2970.59,14.01,85.57,14.01,85.57],[2970.59,3007.26,14.01,85.57,18.71,151.82],[3007.26,3010.41,18.71,151.82,18.71,151.82],[3010.41,3042.1,18.71,151.82,46.94,104.38],[3042.1,3051.99,46.94,104.38,46.94,104.38],[3051.99,3157.94,46.94,104.38,145.83,134.55],[3157.94,3166.5,145.83,134.55,145.83,134.55],[3166.5,3321.07,145.83,134.55,2.73,39.3],[3321.07,3329.42,2.73,39.3,2.73,39.3],[3329.42,3386.84,2.73,39.3,56.08,4.22],[3386.84,3394.52,56.08,4.22,56.08,4.22],[3394.52,3450.05,56.08,4.22,127.86,60.64],[3450.05,3452.4,127.86,60.64,127.86,60.64],[3452.4,3525.98,127.86,60.64,152.82,150.7],[3525.98,3529.54,152.82,150.7,152.82,150.7],[3529.54,3593.42,152.82,150.7,68.94,59.25],[3593.42,3599.51,68.94,59.25,68.94,59.25],[3599.51,3680.29,68.94,59.25,190.17,19.16],[3680.29,3686.54,190.17,19.16,190.17,19.16]],"14":[[0.0,97.99,87.57,54.99,137.04,40.34],[97.99,107.52,137.04,40.34,137.04,40.34],[107.52,200.27,137.04,40.34,129.67,112.04],[200.27,202.67,129.67,112.04,129.67,112.04],[202.67,277.34,129.67,112.04,184.58,65.58],[277.34,277.55,184.58,65.58,184.58,65.58],[277.55,475.99,184.58,65.58,26.93,61.96],[475.99,485.44,26.93,61.96,26.93,61.96],[485.44,506.61,26.93,61.96,56.32,60.59],[506.61,510.21,56.32,60.59,56.32,60.59],[510.21,529.59,56.32,60.59,85.67,69.8],[529.59,538.17,85.67,69.8,85.67,69.8],[538.17,615.05,85.67,69.8,174.67,171.64],[615.05,624.38,174.67,171.64,174.67,171.64],[624.38,815.22,174.67,171.64,7.61,59.41],[815.22,816.88,7.61,59.41,7.61,59.41],[816.88,919.0,7.61,59.41,169.42,33.77],[919.0,926.25,169.42,33.77,169.42,33.77],[926.25,1016.59,169.42,33.77,114.82,191.69],[1016.59,1026.52,114.82,191.69,114.82,191.69],[1026.52,1227.38,114.82,191.69,167.77,64.28],[1227.38,1227.79,167.77,64.28,167.77,64.28],[1227.79,1291.12,167.77,64.28,44.25,69.49],[1291.12,1300.24,44.25,69.49,44.25,69.49],[1300.24,1411.42,44.25,69.49,177.51,145.08],[1411.42,1416.11,177.51,145.08,177.51,145.08],[1416.11,1529.37,177.51,145.08,70.58,54.81],[1529.37,1530.21,70.58,54.81,70.58,54.81],[1530.21,1570.21,70.58,54.81,117.73,100.76],[1570.21,1576.13,117.73,100.76,117.73,100.76],[1576.13,1608.12,117.73,100.76,77.54,94.24],[1608.12,1616.37,77.54,94.24,77.54,94.24],[1616.37,1636.06,77.54,94.24,106.06,88.43],[1636.06,1641.73,106.06,88.43,106.06,88.43],[1641.73,1645.2,106.06,88.43,100.48,86.66],[1645.2,1649.43,100.48,86.66,100.48,86.66],[1649.43,1725.92,100.48,86.66,36.02,56.22],[1725.92,1728.74,36.02,56.22,36.02,56.22],[1728.74,1749.28,36.02,56.22,61.81,39.06],[1749.28,1758.15,61.81,39.06,61.81,39.06],[1758.15,1882.41,61.81,39.06,156.79,143.82],[1882.41,1882.68,156.79,143.82,156.79,143.82],[1882.68,2072.21,156.79,143.82,128.78,4.35],[2072.21,2074.94,128.78,4.35,128.78,4.35],[2074.94,2090.55,128.78,4.35,133.3,32.97],[2090.55,2095.31,133.3,32.97,133.3,32.97],[2095.31,2188.0,133.3,32.97,194.56,140.88],[2188.0,2195.8,194.56,140.88,194.56,140.88],[2195.8,2354.48,194.56,140.88,87.25,26.68],[2354.48,2362.89,87.25,26.68,87.25,26.68],[2362.89,2501.29,87.25,26.68,131.52,185.98],[2501.29,2503.41,131.52,185.98,131.52,185.98],[2503.41,2744.3,131.52,185.98,125.34,25.74],[2744.3,2750.83,125.34,25.74,125.34,25.74],[2750.83,2798.15,125.34,25.74,42.69,0.12],[2798.15,2801.35,42.69,0.12,42.69,0.12],[2801.35,2814.1,42.69,0.12,52.79,7.52],[2814.1,2822.97,52.79,7.52,52.79,7.52],[2822.97,3018.48,52.79,7.52,130.82,162.61],[3018.48,3023.39,130.82,162.61,130.82,162.61],[3023.39,3134.11,130.82,162.61,14.35,118.58],[3134.11,3142.43,14.35,118.58,14.35,118.58],[3142.43,3259.37,14.35,118.58,119.48,17.89],[3259.37,3267.97,119.48,17.89,119.48,17.89],[3267.97,3430.33,119.48,17.89,3.21,8.07],[3430.33,3439.07,3.21,8.07,3.21,8.07],[3439.07,3443.8,3.21,8.07,6.32,0.64],[3443.8,3450.88,6.32,0.64,6.32,0.64],[3450.88,3587.45,6.32,0.64,65.79,42.03],[3587.45,3593.69,65.79,42.03,65.79,42.03],[3593.69,3642.4,65.79,42.03,69.0,1.52],[3642.4,3652.3,69.0,1.52,69.0,1.52]],"16":[[0.0,142.72,39.52,185.29,75.99,64.1],[142.72,149.03,75.99,64.1,75.99,64.1],[149.03,174.23,75.99,64.1,61.07,19.49],[174.23,180.03,61.07,19.49,61.07,19.49],[180.03,348.08,61.07,19.49,199.78,92.76],[348.08,357.87,199.78,92.76,199.78,92.76],[357.87,376.7,199.78,92.76,179.87,67.4],[376.7,379.8,179.87,67.4,179.87,67.4],[379.8,459.86,179.87,67.4,173.58,196.84],[459.86,461.12,173.58,196.84,173.58,196.84],[461.12,504.32,173.58,196.84,177.71,120.24],[504.32,508.13,177.71,120.24,177.71,120.24],[508.13,573.42,177.71,120.24,145.65,56.73],[573.42,576.08,145.65,56.73,145.65,56.73],[576.08,726.64,145.65,56.73,20.72,86.13],[726.64,734.33,20.72,86.13,20.72,86.13],[734.33,792.83,20.72,86.13,62.79,37.58],[792.83,802.7,62.79,37.58,62.79,37.58],[802.7,907.85,62.79,37.58,91.22,132.31],[907.85,913.89,91.22,132.31,91.22,132.31],[913.89,961.51,91.22,132.31,36.32,55.2],[961.51,971.41,36.32,55.2,36.32,55.2],[971.41,990.42,36.32,55.2,67.3,41.22],[990.42,993.42,67.3,41.22,67.3,41.22],[993.42,1157.37,67.3,41.22,110.46,144.03],[1157.37,1158.85,110.46,144.03,110.46,144.03],[1158.85,1193.14,110.46,144.03,141.61,100.44],[1193.14,1198.92,141.61,100.44,141.61,100.44],[1198.92,1396.23,141.61,100.44,20.96,20.59],[1396.23,1402.06,20.96,20.59,20.96,20.59],[1402.06,1535.91,20.96,20.59,78.49,180.51],[1535.91,1544.07,78.49,180.51,78.49,180.51],[1544.07,1644.33,78.49,180.51,154.23,19.39],[1644.33,1649.98,154.23,19.39,154.23,19.39],[1649.98,1747.4,154.23,19.39,135.58,150.56],[1747.4,1753.94,135.58,150.56,135.58,150.56],[1753.94,1846.06,135.58,150.56,58.82,23.66],[1846.06,1852.42,58.82,23.66,58.82,23.66],[1852.42,1905.58,58.82,23.66,119.58,90.22],[1905.58,1906.98,119.58,90.22,119.58,90.22],[1906.98,1945.91,119.58,90.22,85.52,123.06],[1945.91,1952.82,85.52,123.06,85.52,123.06],[1952.82,2005.51,85.52,123.06,52.96,143.22],[2005.51,2013.99,52.96,143.22,52.96,143.22],[2013.99,2109.13,52.96,143.22,10.22,165.94],[2109.13,2116.48,10.22,165.94,10.22,165.94],[2116.48,2146.78,10.22,165.94,56.02,159.36],[2146.78,2147.69,56.02,159.36,56.02,159.36],[2147.69,2321.81,56.02,159.36,43.02,18.02],[2321.81,2329.85,43.02,18.02,43.02,18.02],[2329.85,2480.34,43.02,18.02,13.78,181.57],[2480.34,2489.56,13.78,181.57,13.78,181.57],[2489.56,2747.25,13.78,181.57,8.89,44.74],[2747.25,2755.34,8.89,44.74,8.89,44.74],[2755.34,3002.66,8.89,44.74,199.77,164.63],[3002.66,3011.65,199.77,164.63,199.77,164.63],[3011.65,3119.45,199.77,164.63,68.99,126.75],[3119.45,3129.11,68.99,126.75,68.99,126.75],[3129.11,3194.54,68.99,126.75,173.72,147.95],[3194.54,3203.22,173.72,147.95,173.72,147.95],[3203.22,3321.86,173.72,147.95,106.77,0.45],[3321.86,3329.81,106.77,0.45,106.77,0.45],[3329.81,3387.25,106.77,0.45,111.13,74.6],[3387.25,3395.12,111.13,74.6,111.13,74.6],[3395.12,3418.07,111.13,74.6,108.2,108.55],[3418.07,3422.99,108.2,108.55,108.2,108.55],[3422.99,3531.9,108.2,108.55,23.49,47.42],[3531.9,3541.8,23.49,47.42,23.49,47.42],[3541.8,3587.04,23.49,47.42,61.9,26.23],[3587.04,3591.2,61.9,26.23,61.9,26.23],[3591.2,3621.99,61.9,26.23,89.83,12.4],[3621.99,3625.69,89.83,12.4,89.83,12.4]],"17":[[0.0,66.58,197.76,143.48,177.8,18.0],[66.58,73.12,177.8,18.0,177.8,18.0],[73.12,230.34,177.8,18.0,77.93,116.27],[230.34,235.47,77.93,116.27,77.93,116.27],[235.47,290.79,77.93,116.27,40.48,49.02],[290.79,295.13,40.48,49.02,40.48,49.02],[295.13,479.15,40.48,49.02,161.74,178.84],[479.15,481.64,161.74,178.84,161.74,178.84],[481.64,539.95,161.74,178.84,114.29,96.42],[539.95,547.81,114.29,96.42,114.29,96.42],[547.81,652.18,114.29,96.42,175.66,181.08],[652.18,654.58,175.66,181.08,175.66,181.08],[654.58,694.34,175.66,181.08,134.04,116.62],[694.34,703.23,134.04,116.62,134.04,116.62],[703.23,789.41,134.04,116.62,31.41,88.95],[789.41,793.18,31.41,88.95,31.41,88.95],[793.18,839.93,31.41,88.95,42.29,173.11],[839.93,843.14,42.29,173.11,42.29,173.11],[843.14,905.06,42.29,173.11,151.91,140.97],[905.06,911.7,151.91,140.97,151.91,140.97],[911.7,1068.13,151.91,140.97,46.45,196.76],[1068.13,1071.5,46.45,196.76,46.45,196.76],[1071.5,1195.38,46.45,196.76,99.12,102.38],[1195.38,1199.15,99.12,102.38,99.12,102.38],[1199.15,1262.27,99.12,102.38,156.76,66.68],[1262.27,1266.24,156.76,66.68,156.76,66.68],[1266.24,1344.1,156.76,66.68,117.77,187.14],[1344.1,1350.81,117.77,187.14,117.77,187.14],[1350.81,1513.38,117.77,187.14,0.54,65.54],[1513.38,1513.88,0.54,65.54,0.54,65.54],[1513.88,1594.69,0.54,65.54,13.2,166.14],[1594.69,1601.0,13.2,166.14,13.2,166.14],[1601.0,1692.04,13.2,166.14,33.89,51.91],[1692.04,1692.27,33.89,51.91,33.89,51.91],[1692.27,1759.94,33.89,51.91,35.28,128.62],[1759.94,1762.28,35.28,128.62,35.28,128.62],[1762.28,1797.35,35.28,128.62,87.4,171.68],[1797.35,1804.33,87.4,171.68,87.4,171.68],[1804.33,1890.17,87.4,171.68,106.45,51.03],[1890.17,1898.43,106.45,51.03,106.45,51.03],[1898.43,1972.64,106.45,51.03,160.79,106.24],[1972.64,1979.67,160.79,106.24,160.79,106.24],[1979.67,1993.62,160.79,106.24,173.88,126.18],[1993.62,2003.1,173.88,126.18,173.88,126.18],[2003.1,2060.08,173.88,126.18,84.13,87.0],[2060.08,2062.91,84.13,87.0,84.13,87.0],[2062.91,2127.85,84.13,87.0,165.88,145.97],[2127.85,2134.26,165.88,145.97,165.88,145.97],[2134.26,2155.33,165.88,145.97,191.76,130.12],[2155.33,2158.27,191.76,130.12,191.76,130.12],[2158.27,2369.09,191.76,130.12,14.81,1.59],[2369.09,2377.76,14.81,1.59,14.81,1.59],[2377.76,2500.6,14.81,1.59,118.23,70.85],[2500.6,2503.31,118.23,70.85,118.23,70.85],[2503.31,2584.02,118.23,70.85,116.36,172.84],[2584.02,2588.06,116.36,172.84,116.36,172.84],[2588.06,2738.36,116.36,172.84,123.03,87.81],[2738.36,2745.39,123.03,87.81,123.03,87.81],[2745.39,2773.52,123.03,87.81,142.62,134.74],[2773.52,2773.92,142.62,134.74,142.62,134.74],[2773.92,2849.48,142.62,134.74,10.95,184.8],[2849.48,2854.15,10.95,184.8,10.95,184.8],[2854.15,2983.48,10.95,184.8,168.75,10.06],[2983.48,2990.19,168.75,10.06,168.75,10.06],[2990.19,3110.25,168.75,10.06,14.21,98.16],[3110.25,3111.93,14.21,98.16,14.21,98.16],[3111.93,3146.83,14.21,98.16,8.69,128.54],[3146.83,3148.44,8.69,128.54,8.69,128.54],[3148.44,3319.72,8.69,128.54,184.65,11.58],[3319.72,3326.31,184.65,11.58,184.65,11.58],[3326.31,3346.11,184.65,11.58,147.42,19.42],[3346.11,3352.33,147.42,19.42,147.42,19.42],[3352.33,3376.02,147.42,19.42,187.36,41.02],[3376.02,3379.02,187.36,41.02,187.36,41.02],[3379.02,3441.89,187.36,41.02,131.68,19.94],[3441.89,3445.69,131.68,19.94,131.68,19.94],[3445.69,3499.31,131.68,19.94,51.68,77.81],[3499.31,3506.27,51.68,77.81,51.68,77.81],[3506.27,3581.62,51.68,77.81,136.01,132.31],[3581.62,3585.67,136.01,132.31,136.01,132.31],[3585.67,3621.31,136.01,132.31,174.69,173.2],[3621.31,3629.66,174.69,173.2,174.69,173.2]],"18":[[0.0,30.66,64.54,89.77,42.44,44.7],[30.66,38.37,42.44,44.7,42.44,44.7],[38.37,70.01,42.44,44.7,37.8,107.61],[70.01,76.81,37.8,107.61,37.8,107.61],[76.81,174.34,37.8,107.61,77.09,169.92],[174.34,176.9,77.09,169.92,77.09,169.92],[176.9,313.18,77.09,169.92,37.53,32.18],[313.18,313.58,37.53,32.18,37.53,32.18],[313.58,366.91,37.53,32.18,129.53,30.91],[366.91,369.16,129.53,30.91,129.53,30.91],[369.16,463.63,129.53,30.91,12.96,69.95],[463.63,466.95,12.96,69.95,12.96,69.95],[466.95,679.86,12.96,69.95,172.58,195.41],[679.86,689.86,172.58,195.41,172.58,195.41],[689.86,955.75,172.58,195.41,36.46,51.21],[955.75,957.61,36.46,51.21,36.46,51.21],[957.61,1045.39,36.46,51.21,103.12,180.08],[1045.39,1048.88,103.12,180.08,103.12,180.08],[1048.88,1136.88,103.12,180.08,154.22,46.16],[1136.88,1144.32,154.22,46.16,154.22,46.16],[1144.32,1242.11,154.22,46.16,142.13,94.9],[1242.11,1246.88,142.13,94.9,142.13,94.9],[1246.88,1336.91,142.13,94.9,64.65,52.84],[1336.91,1344.92,64.65,52.84,64.65,52.84],[1344.92,1378.64,64.65,52.84,50.32,83.66],[1378.64,1388.3,50.32,83.66,50.32,83.66],[1388.3,1455.25,50.32,83.66,73.96,195.97],[1455.25,1465.14,73.96,195.97,73.96,195.97],[1465.14,1623.3,73.96,195.97,61.65,6.02],[1623.3,1626.47,61.65,6.02,61.65,6.02],[1626.47,1721.19,61.65,6.02,15.12,136.76],[1721.19,1723.96,15.12,136.76,15.12,136.76],[1723.96,1743.42,15.12,136.76,2.69,142.42],[1743.42,1752.14,2.69,142.42,2.69,142.42],[1752.14,2020.43,2.69,142.42,186.66,117.74],[2020.43,2020.73,186.66,117.74,186.66,117.74],[2020.73,2089.85,186.66,117.74,88.13,68.49],[2089.85,2091.78,88.13,68.49,88.13,68.49],[2091.78,2193.48,88.13,68.49,93.64,180.45],[2193.48,2196.52,93.64,180.45,93.64,180.45],[2196.52,2238.46,93.64,180.45,13.16,177.85],[2238.46,2245.45,13.16,177.85,13.16,177.85],[2245.45,2462.36,13.16,177.85,179.97,144.45],[2462.36,2470.81,179.97,144.45,179.97,144.45],[2470.81,2545.81,179.97,144.45,82.89,51.9],[2545.81,2554.97,82.89,51.9,82.89,51.9],[2554.97,2603.49,82.89,51.9,92.34,84.71],[2603.49,2606.08,92.34,84.71,92.34,84.71],[2606.08,2643.11,92.34,84.71,71.26,135.26],[2643.11,2652.03,71.26,135.26,71.26,135.26],[2652.03,2707.14,71.26,135.26,87.24,30.04],[2707.14,2715.59,87.24,30.04,87.24,30.04],[2715.59,2788.09,87.24,30.04,27.15,143.73],[2788.09,2794.59,27.15,143.73,27.15,143.73],[2794.59,2870.5,27.15,143.73,99.76,123.57],[2870.5,2875.6,99.76,123.57,99.76,123.57],[2875.6,2919.97,99.76,123.57,125.96,186.94],[2919.97,2928.86,125.96,186.94,125.96,186.94],[2928.86,3061.79,125.96,186.94,47.67,9.29],[3061.79,3066.55,47.67,9.29,47.67,9.29],[3066.55,3111.37,47.67,9.29,70.2,82.09],[3111.37,3119.64,70.2,82.09,70.2,82.09],[3119.64,3243.55,70.2,82.09,125.49,12.41],[3243.55,3245.52,125.49,12.41,125.49,12.41],[3245.52,3579.68,125.49,12.41,37.93,198.6],[3579.68,3584.0,37.93,198.6,37.93,198.6],[3584.0,3713.41,37.93,198.6,181.14,117.49],[3713.41,3719.89,181.14,117.49,181.14,117.49]],"27":[[0.0,46.38,59.67,72.08,102.66,133.5],[46.38,53.31,102.66,133.5,102.66,133.5],[53.31,105.24,102.66,133.5,25.28,102.6],[105.24,113.02,25.28,102.6,25.28,102.6],[113.02,411.48,25.28,102.6,162.53,198.91],[411.48,414.63,162.53,198.91,162.53,198.91],[414.63,562.61,162.53,198.91,46.89,40.34],[562.61,563.51,46.89,40.34,46.89,40.34],[563.51,628.35,46.89,40.34,77.18,67.28],[628.35,634.82,77.18,67.28,77.18,67.28],[634.82,670.46,77.18,67.28,40.27,42.44],[670.46,676.02,40.27,42.44,40.27,42.44],[676.02,755.94,40.27,42.44,36.61,147.13],[755.94,762.98,36.61,147.13,36.61,147.13],[762.98,977.56,36.61,147.13,6.44,33.51],[977.56,982.7,6.44,33.51,6.44,33.51],[982.7,1025.05,6.44,33.51,82.73,68.47],[1025.05,1032.91,82.73,68.47,82.73,68.47],[1032.91,1115.67,82.73,68.47,86.05,164.81],[1115.67,1123.86,86.05,164.81,86.05,164.81],[1123.86,1189.14,86.05,164.81,115.94,83.85],[1189.14,1190.55,115.94,83.85,115.94,83.85],[1190.55,1231.89,115.94,83.85,168.8,118.61],[1231.89,1241.29,168.8,118.61,168.8,118.61],[1241.29,1315.36,168.8,118.61,166.17,13.19],[1315.36,1317.32,166.17,13.19,166.17,13.19],[1317.32,1423.11,166.17,13.19,143.34,166.64],[1423.11,1432.91,143.34,166.64,143.34,166.64],[1432.91,1490.77,143.34,166.64,29.45,184.88],[1490.77,1496.41,29.45,184.88,29.45,184.88],[1496.41,1638.07,29.45,184.88,165.93,74.7],[1638.07,1644.88,165.93,74.7,165.93,74.7],[1644.88,1690.2,165.93,74.7,156.41,2.35],[1690.2,1691.53,156.41,2.35,156.41,2.35],[1691.53,1760.55,156.41,2.35,108.51,54.8],[1760.55,1766.06,108.51,54.8,108.51,54.8],[1766.06,1802.52,108.51,54.8,143.61,111.95],[1802.52,1804.35,143.61,111.95,143.61,111.95],[1804.35,1879.07,143.61,111.95,42.65,131.13],[1879.07,1884.55,42.65,131.13,42.65,131.13],[1884.55,1908.96,42.65,131.13,57.07,150.34],[1908.96,1917.19,57.07,150.34,57.07,150.34],[1917.19,1969.23,57.07,150.34,87.34,103.76],[1969.23,1975.37,87.34,103.76,87.34,103.76],[1975.37,2045.26,87.34,103.76,57.69,38.46],[2045.26,2045.71,57.69,38.46,57.69,38.46],[2045.71,2095.14,57.69,38.46,3.66,115.13],[2095.14,2095.21,3.66,115.13,3.66,115.13],[2095.21,2147.83,3.66,115.13,10.46,44.39],[2147.83,2152.41,10.46,44.39,10.46,44.39],[2152.41,2176.52,10.46,44.39,47.1,50.95],[2176.52,2186.13,47.1,50.95,47.1,50.95],[2186.13,2296.37,47.1,50.95,148.49,90.0],[2296.37,2304.58,148.49,90.0,148.49,90.0],[2304.58,2429.26,148.49,90.0,62.12,4.19],[2429.26,2429.92,62.12,4.19,62.12,4.19],[2429.92,2517.84,62.12,4.19,154.92,119.72],[2517.84,2520.18,154.92,119.72,154.92,119.72],[2520.18,2548.83,154.92,119.72,154.28,83.46],[2548.83,2553.68,154.28,83.46,154.28,83.46],[2553.68,2613.13,154.28,83.46,158.89,8.51],[2613.13,2620.62,158.89,8.51,158.89,8.51],[2620.62,2656.43,158.89,8.51,177.93,57.45],[2656.43,2661.16,177.93,57.45,177.93,57.45],[2661.16,2721.46,177.93,57.45,120.15,0.08],[2721.46,2730.3,120.15,0.08,120.15,0.08],[2730.3,2865.72,120.15,0.08,15.21,39.98],[2865.72,2866.77,15.21,39.98,15.21,39.98],[2866.77,2944.94,15.21,39.98,87.41,118.23],[2944.94,2951.42,87.41,118.23,87.41,118.23],[2951.42,2995.17,87.41,118.23,53.88,149.17],[2995.17,3003.53,53.88,149.17,53.88,149.17],[3003.53,3019.9,53.88,149.17,43.67,172.11],[3019.9,3028.29,43.67,172.11,43.67,172.11],[3028.29,3179.7,43.67,172.11,165.52,1.78],[3179.7,3181.89,165.52,1.78,165.52,1.78],[3181.89,3199.44,165.52,1.78,146.42,30.56],[3199.44,3207.01,146.42,30.56,146.42,30.56],[3207.01,3409.36,146.42,30.56,4.88,153.1],[3409.36,3409.85,4.88,153.1,4.88,153.1],[3409.85,3536.03,4.88,153.1,177.8,36.19],[3536.03,3538.0,177.8,36.19,177.8,36.19],[3538.0,3670.76,177.8,36.19,34.36,74.37],[3670.76,3672.15,34.36,74.37,34.36,74.37]],"28":[[0.0,203.82,152.72,6.25,82.54,171.54],[203.82,208.62,82.54,171.54,82.54,171.54],[208.62,342.3,82.54,171.54,86.94,20.55],[342.3,346.76,86.94,20.55,86.94,20.55],[346.76,370.8,86.94,20.55,127.2,42.95],[370.8,378.32,127.2,42.95,127.2,42.95],[378.32,464.57,127.2,42.95,16.04,138.28],[464.57,468.06,16.04,138.28,16.04,138.28],[468.06,541.75,16.04,138.28,95.23,69.74],[541.75,542.89,95.23,69.74,95.23,69.74],[542.89,625.17,95.23,69.74,193.48,67.9],[625.17,625.89,193.48,67.9,193.48,67.9],[625.89,668.59,193.48,67.9,156.29,108.35],[668.59,677.38,156.29,108.35,156.29,108.35],[677.38,728.68,156.29,108.35,92.39,54.07],[728.68,733.58,92.39,54.07,92.39,54.07],[733.58,874.16,92.39,54.07,143.35,127.1],[874.16,879.17,143.35,127.1,143.35,127.1],[879.17,941.17,143.35,127.1,181.24,59.06],[941.17,948.77,181.24,59.06,181.24,59.06],[948.77,1034.47,181.24,59.06,22.9,78.59],[1034.47,1043.68,22.9,78.59,22.9,78.59],[1043.68,1106.5,22.9,78.59,129.29,100.63],[1106.5,1108.84,129.29,100.63,129.29,100.63],[1108.84,1145.86,129.29,100.63,115.08,41.4],[1145.86,1155.8,115.08,41.4,115.08,41.4],[1155.8,1339.29,115.08,41.4,183.55,164.25],[1339.29,1340.9,183.55,164.25,183.55,164.25],[1340.9,1431.18,183.55,164.25,15.31,189.93],[1431.18,1438.66,15.31,189.93,15.31,189.93],[1438.66,1657.83,15.31,189.93,197.78,156.42],[1657.83,1662.36,197.78,156.42,197.78,156.42],[1662.36,1957.69,197.78,156.42,50.37,80.94],[1957.69,1960.66,50.37,80.94,50.37,80.94],[1960.66,2141.88,50.37,80.94,175.49,126.19],[2141.88,2150.16,175.49,126.19,175.49,126.19],[2150.16,2175.38,175.49,126.19,152.4,88.64],[2175.38,2177.8,152.4,88.64,152.4,88.64],[2177.8,2245.75,152.4,88.64,62.02,86.57],[2245.75,2255.29,62.02,86.57,62.02,86.57],[2255.29,2370.69,62.02,86.57,120.04,117.02],[2370.69,2378.96,120.04,117.02,120.04,117.02],[2378.96,2425.3,120.04,117.02,28.46,121.76],[2425.3,2426.47,28.46,121.76,28.46,121.76],[2426.47,2501.68,28.46,121.76,130.01,26.75],[2501.68,2507.08,130.01,26.75,130.01,26.75],[2507.08,2510.23,130.01,26.75,131.92,30.83],[2510.23,2516.28,131.92,30.83,131.92,30.83],[2516.28,2557.57,131.92,30.83,102.58,85.13],[2557.57,2560.24,102.58,85.13,102.58,85.13],[2560.24,2584.67,102.58,85.13,123.91,49.05],[2584.67,2586.44,123.91,49.05,123.91,49.05],[2586.44,2654.92,123.91,49.05,143.15,157.76],[2654.92,2657.42,143.15,157.76,143.15,157.76],[2657.42,2729.71,143.15,157.76,41.22,141.44],[2729.71,2731.05,41.22,141.44,41.22,141.44],[2731.05,2773.62,41.22,141.44,7.16,92.73],[2773.62,2779.85,7.16,92.73,7.16,92.73],[2779.85,3055.41,7.16,92.73,169.41,198.87],[3055.41,3058.82,169.41,198.87,169.41,198.87],[3058.82,3171.54,169.41,198.87,68.82,59.06],[3171.54,3175.62,68.82,59.06,68.82,59.06],[3175.62,3202.43,68.82,59.06,74.64,27.66],[3202.43,3205.93,74.64,27.66,74.64,27.66],[3205.93,3252.36,74.64,27.66,158.33,25.3],[3252.36,3259.88,158.33,25.3,158.33,25.3],[3259.88,3344.89,158.33,25.3,95.42,153.19],[3344.89,3345.96,95.42,153.19,95.42,153.19],[3345.96,3424.6,95.42,153.19,165.81,12.63],[3424.6,3430.5,165.81,12.63,165.81,12.63],[3430.5,3677.1,165.81,12.63,28.39,7.2],[3677.1,3682.67,28.39,7.2,28.39,7.2]]};
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
