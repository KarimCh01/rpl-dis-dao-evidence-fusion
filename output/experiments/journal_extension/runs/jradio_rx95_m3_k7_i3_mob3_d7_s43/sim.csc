<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>jradio_rx95_m3_k7_i3_mob3_d7_s43</title>
    <randomseed>43</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>0.95</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_root_d7</identifier>
      <description>v_root_d7</description>
      <source>/home/user/project/build/variants/v_root_d7/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d7.cooja</commands>
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
      <identifier>v_cli_d7_m1</identifier>
      <description>v_cli_d7_m1</description>
      <source>/home/user/project/build/variants/v_cli_d7_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d7_m1.cooja</commands>
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
          <pos x="142.49" y="45.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="172.95" y="117.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="171.57" y="174.58" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="117.29" y="163.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="10.44" y="166.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="7.92" y="156.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="129.45" y="119.78" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
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
          <pos x="93.42" y="106.68" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="67.97" y="56.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="41.92" y="148.86" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="98.32" y="74.70" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="16.38" y="63.59" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="157.74" y="93.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="198.48" y="104.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d7_m0</identifier>
      <description>v_cli_d7_m0</description>
      <source>/home/user/project/build/variants/v_cli_d7_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d7_m0.cooja</commands>
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
          <pos x="25.51" y="107.53" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="100.24" y="116.72" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.44" y="42.95" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="177.31" y="40.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="108.59" y="173.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="146.42" y="196.89" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="70.92" y="136.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="198.36" y="98.82" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="152.44" y="119.77" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="88.91" y="89.71" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="100.59" y="191.90" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="98.44" y="177.56" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="65.95" y="23.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="106.54" y="0.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="62.94" y="155.87" />
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
var S = {"2":[[0.0,33.54,142.49,45.63,91.75,45.59],[33.54,40.92,91.75,45.59,91.75,45.59],[40.92,90.26,91.75,45.59,167.0,90.62],[90.26,92.86,167.0,90.62,167.0,90.62],[92.86,230.24,167.0,90.62,5.65,175.52],[230.24,236.66,5.65,175.52,5.65,175.52],[236.66,426.57,5.65,175.52,190.0,68.14],[426.57,428.94,190.0,68.14,190.0,68.14],[428.94,509.1,190.0,68.14,195.71,134.36],[509.1,513.07,195.71,134.36,195.71,134.36],[513.07,563.08,195.71,134.36,96.23,140.03],[563.08,571.41,96.23,140.03,96.23,140.03],[571.41,590.59,96.23,140.03,111.88,122.15],[590.59,593.82,111.88,122.15,111.88,122.15],[593.82,648.06,111.88,122.15,181.99,50.51],[648.06,652.86,181.99,50.51,181.99,50.51],[652.86,800.98,181.99,50.51,32.44,87.8],[800.98,801.66,32.44,87.8,32.44,87.8],[801.66,867.64,32.44,87.8,137.32,122.05],[867.64,877.2,137.32,122.05,137.32,122.05],[877.2,915.34,137.32,122.05,69.75,134.47],[915.34,918.61,69.75,134.47,69.75,134.47],[918.61,999.55,69.75,134.47,5.71,77.82],[999.55,1000.66,5.71,77.82,5.71,77.82],[1000.66,1097.37,5.71,77.82,20.34,182.04],[1097.37,1103.65,20.34,182.04,20.34,182.04],[1103.65,1223.56,20.34,182.04,91.45,91.35],[1223.56,1226.38,91.45,91.35,91.45,91.35],[1226.38,1265.72,91.45,91.35,45.14,111.07],[1265.72,1270.48,45.14,111.07,45.14,111.07],[1270.48,1335.37,45.14,111.07,59.15,16.45],[1335.37,1338.27,59.15,16.45,59.15,16.45],[1338.27,1387.01,59.15,16.45,40.99,106.09],[1387.01,1392.68,40.99,106.09,40.99,106.09],[1392.68,1484.31,40.99,106.09,2.88,190.43],[1484.31,1486.95,2.88,190.43,2.88,190.43],[1486.95,1737.81,2.88,190.43,195.22,139.55],[1737.81,1746.37,195.22,139.55,195.22,139.55],[1746.37,1839.71,195.22,139.55,138.59,34.73],[1839.71,1840.36,138.59,34.73,138.59,34.73],[1840.36,1929.56,138.59,34.73,64.91,147.99],[1929.56,1930.35,64.91,147.99,64.91,147.99],[1930.35,2026.32,64.91,147.99,179.8,80.93],[2026.32,2033.27,179.8,80.93,179.8,80.93],[2033.27,2275.42,179.8,80.93,1.32,31.91],[2275.42,2277.17,1.32,31.91,1.32,31.91],[2277.17,2339.69,1.32,31.91,91.95,28.64],[2339.69,2343.98,91.95,28.64,91.95,28.64],[2343.98,2425.75,91.95,28.64,89.74,147.76],[2425.75,2425.94,89.74,147.76,89.74,147.76],[2425.94,2560.87,89.74,147.76,190.7,185.98],[2560.87,2567.81,190.7,185.98,190.7,185.98],[2567.81,2800.67,190.7,185.98,120.09,70.26],[2800.67,2801.45,120.09,70.26,120.09,70.26],[2801.45,2849.88,120.09,70.26,163.4,118.35],[2849.88,2855.48,163.4,118.35,163.4,118.35],[2855.48,2990.12,163.4,118.35,10.73,106.47],[2990.12,2993.31,10.73,106.47,10.73,106.47],[2993.31,3078.3,10.73,106.47,138.51,99.55],[3078.3,3078.5,138.51,99.55,138.51,99.55],[3078.5,3167.89,138.51,99.55,193.35,67.97],[3167.89,3176.82,193.35,67.97,193.35,67.97],[3176.82,3260.28,193.35,67.97,137.22,137.44],[3260.28,3261.65,137.22,137.44,137.22,137.44],[3261.65,3401.05,137.22,137.44,38.0,135.15],[3401.05,3407.55,38.0,135.15,38.0,135.15],[3407.55,3589.52,38.0,135.15,125.08,3.69],[3589.52,3596.69,125.08,3.69,125.08,3.69],[3596.69,3674.85,125.08,3.69,164.43,60.74],[3674.85,3680.72,164.43,60.74,164.43,60.74]],"3":[[0.0,175.84,172.95,117.11,10.05,96.95],[175.84,185.55,10.05,96.95,10.05,96.95],[185.55,238.07,10.05,96.95,88.9,51.57],[238.07,242.92,88.9,51.57,88.9,51.57],[242.92,276.41,88.9,51.57,70.43,100.02],[276.41,284.44,70.43,100.02,70.43,100.02],[284.44,304.95,70.43,100.02,51.52,73.26],[304.95,313.27,51.52,73.26,51.52,73.26],[313.27,436.09,51.52,73.26,191.31,58.95],[436.09,437.58,191.31,58.95,191.31,58.95],[437.58,493.42,191.31,58.95,180.44,126.42],[493.42,494.39,180.44,126.42,180.44,126.42],[494.39,547.4,180.44,126.42,132.44,175.19],[547.4,551.62,132.44,175.19,132.44,175.19],[551.62,677.56,132.44,175.19,178.58,75.01],[677.56,683.08,178.58,75.01,178.58,75.01],[683.08,785.64,178.58,75.01,2.25,89.84],[785.64,790.58,2.25,89.84,2.25,89.84],[790.58,1053.19,2.25,89.84,174.23,16.3],[1053.19,1057.22,174.23,16.3,174.23,16.3],[1057.22,1126.21,174.23,16.3,70.8,54.57],[1126.21,1135.34,70.8,54.57,70.8,54.57],[1135.34,1191.45,70.8,54.57,45.39,143.15],[1191.45,1191.88,45.39,143.15,45.39,143.15],[1191.88,1218.4,45.39,143.15,68.1,158.97],[1218.4,1224.1,68.1,158.97,68.1,158.97],[1224.1,1279.97,68.1,158.97,139.03,147.82],[1279.97,1282.72,139.03,147.82,139.03,147.82],[1282.72,1378.87,139.03,147.82,194.53,0.83],[1378.87,1380.15,194.53,0.83,194.53,0.83],[1380.15,1471.13,194.53,0.83,193.07,153.94],[1471.13,1475.16,193.07,153.94,193.07,153.94],[1475.16,1572.05,193.07,153.94,48.07,124.75],[1572.05,1573.52,48.07,124.75,48.07,124.75],[1573.52,1593.73,48.07,124.75,33.17,92.05],[1593.73,1597.82,33.17,92.05,33.17,92.05],[1597.82,1733.31,33.17,92.05,172.76,157.63],[1733.31,1733.44,172.76,157.63,172.76,157.63],[1733.44,1829.66,172.76,157.63,66.65,31.93],[1829.66,1831.87,66.65,31.93,66.65,31.93],[1831.87,1875.66,66.65,31.93,50.3,112.35],[1875.66,1877.91,50.3,112.35,50.3,112.35],[1877.91,1898.79,50.3,112.35,48.55,84.73],[1898.79,1905.4,48.55,84.73,48.55,84.73],[1905.4,2017.43,48.55,84.73,65.04,171.81],[2017.43,2024.84,65.04,171.81,65.04,171.81],[2024.84,2070.41,65.04,171.81,94.58,88.48],[2070.41,2075.72,94.58,88.48,94.58,88.48],[2075.72,2193.58,94.58,88.48,7.98,158.21],[2193.58,2197.81,7.98,158.21,7.98,158.21],[2197.81,2454.28,7.98,158.21,168.15,23.02],[2454.28,2458.66,168.15,23.02,168.15,23.02],[2458.66,2489.4,168.15,23.02,126.62,63.4],[2489.4,2491.09,126.62,63.4,126.62,63.4],[2491.09,2563.69,126.62,63.4,32.54,148.49],[2563.69,2572.82,32.54,148.49,32.54,148.49],[2572.82,2779.5,32.54,148.49,193.62,40.48],[2779.5,2781.54,193.62,40.48,193.62,40.48],[2781.54,2972.89,193.62,40.48,59.85,140.13],[2972.89,2980.65,59.85,140.13,59.85,140.13],[2980.65,3061.12,59.85,140.13,155.76,86.89],[3061.12,3068.24,155.76,86.89,155.76,86.89],[3068.24,3090.67,155.76,86.89,118.74,101.12],[3090.67,3099.43,118.74,101.12,118.74,101.12],[3099.43,3154.95,118.74,101.12,125.05,161.74],[3154.95,3159.58,125.05,161.74,125.05,161.74],[3159.58,3369.59,125.05,161.74,61.58,42.05],[3369.59,3378.45,61.58,42.05,61.58,42.05],[3378.45,3460.73,61.58,42.05,110.92,196.88],[3460.73,3463.84,110.92,196.88,110.92,196.88],[3463.84,3606.06,110.92,196.88,70.35,48.29],[3606.06,3608.6,70.35,48.29,70.35,48.29]],"7":[[0.0,51.12,171.57,174.58,139.63,143.09],[51.12,60.59,139.63,143.09,139.63,143.09],[60.59,145.48,139.63,143.09,49.47,180.13],[145.48,146.48,49.47,180.13,49.47,180.13],[146.48,214.25,49.47,180.13,98.35,118.36],[214.25,215.08,98.35,118.36,98.35,118.36],[215.08,300.14,98.35,118.36,104.25,45.47],[300.14,300.47,104.25,45.47,104.25,45.47],[300.47,317.7,104.25,45.47,73.07,34.09],[317.7,322.64,73.07,34.09,73.07,34.09],[322.64,339.35,73.07,34.09,72.67,62.63],[339.35,348.81,72.67,62.63,72.67,62.63],[348.81,481.91,72.67,62.63,15.27,177.5],[481.91,483.39,15.27,177.5,15.27,177.5],[483.39,581.74,15.27,177.5,157.89,163.64],[581.74,589.13,157.89,163.64,157.89,163.64],[589.13,958.85,157.89,163.64,32.48,4.51],[958.85,965.46,32.48,4.51,32.48,4.51],[965.46,1104.95,32.48,4.51,180.37,75.32],[1104.95,1105.78,180.37,75.32,180.37,75.32],[1105.78,1317.18,180.37,75.32,8.59,97.78],[1317.18,1319.6,8.59,97.78,8.59,97.78],[1319.6,1503.24,8.59,97.78,160.18,119.95],[1503.24,1508.12,160.18,119.95,160.18,119.95],[1508.12,1730.73,160.18,119.95,58.22,33.25],[1730.73,1738.52,58.22,33.25,58.22,33.25],[1738.52,1818.83,58.22,33.25,178.23,53.11],[1818.83,1827.97,178.23,53.11,178.23,53.11],[1827.97,1947.59,178.23,53.11,15.85,4.68],[1947.59,1948.8,15.85,4.68,15.85,4.68],[1948.8,2045.59,15.85,4.68,38.65,161.94],[2045.59,2049.54,38.65,161.94,38.65,161.94],[2049.54,2140.25,38.65,161.94,85.05,27.16],[2140.25,2142.48,85.05,27.16,85.05,27.16],[2142.48,2252.78,85.05,27.16,42.27,152.59],[2252.78,2257.1,42.27,152.59,42.27,152.59],[2257.1,2473.9,42.27,152.59,77.3,44.93],[2473.9,2474.46,77.3,44.93,77.3,44.93],[2474.46,2501.97,77.3,44.93,120.9,72.34],[2501.97,2503.31,120.9,72.34,120.9,72.34],[2503.31,2555.25,120.9,72.34,174.61,125.09],[2555.25,2561.68,174.61,125.09,174.61,125.09],[2561.68,2649.93,174.61,125.09,65.96,123.24],[2649.93,2651.38,65.96,123.24,65.96,123.24],[2651.38,2684.72,65.96,123.24,83.84,74.97],[2684.72,2688.88,83.84,74.97,83.84,74.97],[2688.88,2735.84,83.84,74.97,116.68,47.02],[2735.84,2742.73,116.68,47.02,116.68,47.02],[2742.73,2816.77,116.68,47.02,136.31,181.77],[2816.77,2826.54,136.31,181.77,136.31,181.77],[2826.54,2908.03,136.31,181.77,165.82,29.53],[2908.03,2915.59,165.82,29.53,165.82,29.53],[2915.59,3062.57,165.82,29.53,71.84,182.84],[3062.57,3068.43,71.84,182.84,71.84,182.84],[3068.43,3193.79,71.84,182.84,4.76,86.51],[3193.79,3196.67,4.76,86.51,4.76,86.51],[3196.67,3284.72,4.76,86.51,125.78,135.89],[3284.72,3288.99,125.78,135.89,125.78,135.89],[3288.99,3341.35,125.78,135.89,195.09,91.91],[3341.35,3345.97,195.09,91.91,195.09,91.91],[3345.97,3440.93,195.09,91.91,86.65,104.17],[3440.93,3442.42,86.65,104.17,86.65,104.17],[3442.42,3464.19,86.65,104.17,110.81,76.14],[3464.19,3469.89,110.81,76.14,110.81,76.14],[3469.89,3535.32,110.81,76.14,14.24,115.46],[3535.32,3539.64,14.24,115.46,14.24,115.46],[3539.64,3582.97,14.24,115.46,63.64,66.92],[3582.97,3589.35,63.64,66.92,63.64,66.92],[3589.35,3608.59,63.64,66.92,99.24,57.68],[3608.59,3609.6,99.24,57.68,99.24,57.68]],"10":[[0.0,80.86,117.29,163.23,99.31,50.21],[80.86,81.68,99.31,50.21,99.31,50.21],[81.68,132.77,99.31,50.21,37.01,101.76],[132.77,142.13,37.01,101.76,37.01,101.76],[142.13,181.98,37.01,101.76,3.13,144.02],[181.98,189.28,3.13,144.02,3.13,144.02],[189.28,321.31,3.13,144.02,172.66,83.74],[321.31,328.97,172.66,83.74,172.66,83.74],[328.97,379.15,172.66,83.74,87.18,114.33],[379.15,384.43,87.18,114.33,87.18,114.33],[384.43,437.51,87.18,114.33,50.44,55.87],[437.51,443.28,50.44,55.87,50.44,55.87],[443.28,526.91,50.44,55.87,103.83,9.79],[526.91,527.69,103.83,9.79,103.83,9.79],[527.69,553.99,103.83,9.79,110.88,36.13],[553.99,556.21,110.88,36.13,110.88,36.13],[556.21,616.28,110.88,36.13,195.09,106.88],[616.28,625.83,195.09,106.88,195.09,106.88],[625.83,658.19,195.09,106.88,144.02,79.07],[658.19,658.49,144.02,79.07,144.02,79.07],[658.49,863.14,144.02,79.07,189.82,187.68],[863.14,866.42,189.82,187.68,189.82,187.68],[866.42,1014.07,189.82,187.68,22.11,2.82],[1014.07,1017.18,22.11,2.82,22.11,2.82],[1017.18,1068.35,22.11,2.82,104.66,40.33],[1068.35,1072.87,104.66,40.33,104.66,40.33],[1072.87,1173.91,104.66,40.33,118.74,136.01],[1173.91,1176.47,118.74,136.01,118.74,136.01],[1176.47,1252.26,118.74,136.01,169.59,73.46],[1252.26,1254.44,169.59,73.46,169.59,73.46],[1254.44,1296.54,169.59,73.46,186.3,90.75],[1296.54,1297.38,186.3,90.75,186.3,90.75],[1297.38,1331.73,186.3,90.75,158.99,119.17],[1331.73,1336.6,158.99,119.17,158.99,119.17],[1336.6,1404.63,158.99,119.17,166.91,43.34],[1404.63,1410.66,166.91,43.34,166.91,43.34],[1410.66,1576.75,166.91,43.34,119.99,165.6],[1576.75,1586.16,119.99,165.6,119.99,165.6],[1586.16,1703.67,119.99,165.6,17.06,159.49],[1703.67,1708.52,17.06,159.49,17.06,159.49],[1708.52,1842.7,17.06,159.49,66.66,25.78],[1842.7,1848.69,66.66,25.78,66.66,25.78],[1848.69,1909.8,66.66,25.78,164.47,33.47],[1909.8,1909.86,164.47,33.47,164.47,33.47],[1909.86,1966.64,164.47,33.47,140.7,131.41],[1966.64,1967.34,140.7,131.41,140.7,131.41],[1967.34,2012.02,140.7,131.41,164.45,101.45],[2012.02,2019.22,164.45,101.45,164.45,101.45],[2019.22,2065.81,164.45,101.45,136.82,59.02],[2065.81,2071.32,136.82,59.02,136.82,59.02],[2071.32,2251.73,136.82,59.02,196.18,137.01],[2251.73,2258.32,196.18,137.01,196.18,137.01],[2258.32,2360.83,196.18,137.01,166.04,88.04],[2360.83,2365.58,166.04,88.04,166.04,88.04],[2365.58,2419.05,166.04,88.04,123.01,141.91],[2419.05,2422.55,123.01,141.91,123.01,141.91],[2422.55,2523.74,123.01,141.91,34.01,29.82],[2523.74,2524.66,34.01,29.82,34.01,29.82],[2524.66,2597.88,34.01,29.82,10.59,92.66],[2597.88,2604.73,10.59,92.66,10.59,92.66],[2604.73,2693.73,10.59,92.66,175.08,143.78],[2693.73,2700.6,175.08,143.78,175.08,143.78],[2700.6,2759.5,175.08,143.78,107.42,133.62],[2759.5,2765.89,107.42,133.62,107.42,133.62],[2765.89,2850.02,107.42,133.62,39.1,160.37],[2850.02,2851.93,39.1,160.37,39.1,160.37],[2851.93,2930.72,39.1,160.37,113.63,55.85],[2930.72,2937.2,113.63,55.85,113.63,55.85],[2937.2,2992.97,113.63,55.85,92.84,137.94],[2992.97,2996.02,92.84,137.94,92.84,137.94],[2996.02,3158.61,92.84,137.94,17.62,38.0],[3158.61,3160.33,17.62,38.0,17.62,38.0],[3160.33,3203.96,17.62,38.0,40.22,119.42],[3203.96,3209.8,40.22,119.42,40.22,119.42],[3209.8,3288.71,40.22,119.42,32.74,50.77],[3288.71,3295.11,32.74,50.77,32.74,50.77],[3295.11,3418.76,32.74,50.77,109.96,73.22],[3418.76,3422.36,109.96,73.22,109.96,73.22],[3422.36,3506.2,109.96,73.22,131.65,162.58],[3506.2,3509.98,131.65,162.58,131.65,162.58],[3509.98,3767.48,131.65,162.58,24.57,84.17],[3767.48,3776.06,24.57,84.17,24.57,84.17]],"12":[[0.0,29.38,41.92,148.86,1.62,144.73],[29.38,33.19,1.62,144.73,1.62,144.73],[33.19,124.92,1.62,144.73,135.94,98.05],[124.92,132.28,135.94,98.05,135.94,98.05],[132.28,141.91,135.94,98.05,141.04,114.39],[141.91,147.83,141.04,114.39,141.04,114.39],[147.83,206.06,141.04,114.39,55.72,129.13],[206.06,208.52,55.72,129.13,55.72,129.13],[208.52,360.24,55.72,129.13,68.99,19.9],[360.24,365.2,68.99,19.9,68.99,19.9],[365.2,443.85,68.99,19.9,145.04,142.0],[443.85,445.94,145.04,142.0,145.04,142.0],[445.94,494.27,145.04,142.0,192.69,99.4],[494.27,498.98,192.69,99.4,192.69,99.4],[498.98,582.79,192.69,99.4,80.62,176.57],[582.79,589.78,80.62,176.57,80.62,176.57],[589.78,617.78,80.62,176.57,104.29,147.9],[617.78,627.4,104.29,147.9,104.29,147.9],[627.4,696.62,104.29,147.9,0.86,69.3],[696.62,704.32,0.86,69.3,0.86,69.3],[704.32,767.37,0.86,69.3,93.96,18.96],[767.37,775.67,93.96,18.96,93.96,18.96],[775.67,807.24,93.96,18.96,41.24,1.15],[807.24,807.57,41.24,1.15,41.24,1.15],[807.57,1003.59,41.24,1.15,122.56,194.37],[1003.59,1013.57,122.56,194.37,122.56,194.37],[1013.57,1052.1,122.56,194.37,181.26,152.78],[1052.1,1061.19,181.26,152.78,181.26,152.78],[1061.19,1078.88,181.26,152.78,180.05,187.51],[1078.88,1083.27,180.05,187.51,180.05,187.51],[1083.27,1343.99,180.05,187.51,43.09,112.41],[1343.99,1344.36,43.09,112.41,43.09,112.41],[1344.36,1455.94,43.09,112.41,164.88,170.9],[1455.94,1464.62,164.88,170.9,164.88,170.9],[1464.62,1565.62,164.88,170.9,18.69,65.76],[1565.62,1567.2,18.69,65.76,18.69,65.76],[1567.2,1748.35,18.69,65.76,154.4,27.47],[1748.35,1753.8,154.4,27.47,154.4,27.47],[1753.8,1805.46,154.4,27.47,104.34,31.04],[1805.46,1810.8,104.34,31.04,104.34,31.04],[1810.8,1851.33,104.34,31.04,63.22,94.54],[1851.33,1859.93,63.22,94.54,63.22,94.54],[1859.93,1909.54,63.22,94.54,63.24,25.23],[1909.54,1918.9,63.24,25.23,63.24,25.23],[1918.9,2005.71,63.24,25.23,57.87,149.37],[2005.71,2013.24,57.87,149.37,57.87,149.37],[2013.24,2085.03,57.87,149.37,23.8,75.89],[2085.03,2086.52,23.8,75.89,23.8,75.89],[2086.52,2237.1,23.8,75.89,79.67,23.47],[2237.1,2243.51,79.67,23.47,79.67,23.47],[2243.51,2350.78,79.67,23.47,61.65,111.65],[2350.78,2353.27,61.65,111.65,61.65,111.65],[2353.27,2437.83,61.65,111.65,140.24,185.15],[2437.83,2443.47,140.24,185.15,140.24,185.15],[2443.47,2616.11,140.24,185.15,30.81,84.94],[2616.11,2623.41,30.81,84.94,30.81,84.94],[2623.41,2703.48,30.81,84.94,59.08,185.41],[2703.48,2704.33,59.08,185.41,59.08,185.41],[2704.33,2827.1,59.08,185.41,116.0,43.48],[2827.1,2835.5,116.0,43.48,116.0,43.48],[2835.5,2956.99,116.0,43.48,24.8,14.32],[2956.99,2966.8,24.8,14.32,24.8,14.32],[2966.8,3108.71,24.8,14.32,93.43,190.34],[3108.71,3113.03,93.43,190.34,93.43,190.34],[3113.03,3174.39,93.43,190.34,190.82,179.15],[3174.39,3182.22,190.82,179.15,190.82,179.15],[3182.22,3263.09,190.82,179.15,87.17,123.33],[3263.09,3266.53,87.17,123.33,87.17,123.33],[3266.53,3331.93,87.17,123.33,139.99,100.49],[3331.93,3333.32,139.99,100.49,139.99,100.49],[3333.32,3352.66,139.99,100.49,151.66,119.79],[3352.66,3360.2,151.66,119.79,151.66,119.79],[3360.2,3419.93,151.66,119.79,118.52,100.2],[3419.93,3427.44,118.52,100.2,118.52,100.2],[3427.44,3498.01,118.52,100.2,120.27,7.63],[3498.01,3502.87,120.27,7.63,120.27,7.63],[3502.87,3557.86,120.27,7.63,49.06,4.62],[3557.86,3559.34,49.06,4.62,49.06,4.62],[3559.34,3606.41,49.06,4.62,43.89,34.53],[3606.41,3612.66,43.89,34.53,43.89,34.53]],"19":[[0.0,67.98,10.44,166.29,135.6,195.35],[67.98,75.76,135.6,195.35,135.6,195.35],[75.76,165.8,135.6,195.35,79.83,142.46],[165.8,169.81,79.83,142.46,79.83,142.46],[169.81,186.86,79.83,142.46,87.43,173.31],[186.86,191.37,87.43,173.31,87.43,173.31],[191.37,334.98,87.43,173.31,190.82,144.01],[334.98,342.44,190.82,144.01,190.82,144.01],[342.44,387.92,190.82,144.01,128.8,170.75],[387.92,397.23,128.8,170.75,128.8,170.75],[397.23,457.9,128.8,170.75,154.77,67.8],[457.9,466.02,154.77,67.8,154.77,67.8],[466.02,625.17,154.77,67.8,61.15,142.88],[625.17,632.43,61.15,142.88,61.15,142.88],[632.43,840.74,61.15,142.88,82.23,27.99],[840.74,842.85,82.23,27.99,82.23,27.99],[842.85,848.67,82.23,27.99,77.01,30.89],[848.67,849.75,77.01,30.89,77.01,30.89],[849.75,926.54,77.01,30.89,196.15,121.54],[926.54,929.75,196.15,121.54,196.15,121.54],[929.75,965.16,196.15,121.54,161.79,108.95],[965.16,975.04,161.79,108.95,161.79,108.95],[975.04,1013.28,161.79,108.95,106.75,133.55],[1013.28,1018.08,106.75,133.55,106.75,133.55],[1018.08,1079.15,106.75,133.55,158.04,113.9],[1079.15,1085.01,158.04,113.9,158.04,113.9],[1085.01,1188.16,158.04,113.9,8.34,61.07],[1188.16,1191.37,8.34,61.07,8.34,61.07],[1191.37,1384.9,8.34,61.07,75.05,153.53],[1384.9,1389.59,75.05,153.53,75.05,153.53],[1389.59,1414.67,75.05,153.53,68.0,125.96],[1414.67,1416.92,68.0,125.96,68.0,125.96],[1416.92,1466.3,68.0,125.96,118.3,73.4],[1466.3,1473.67,118.3,73.4,118.3,73.4],[1473.67,1525.06,118.3,73.4,164.59,52.68],[1525.06,1525.41,164.59,52.68,164.59,52.68],[1525.41,1609.54,164.59,52.68,28.8,142.86],[1609.54,1609.84,28.8,142.86,28.8,142.86],[1609.84,1731.31,28.8,142.86,43.1,58.99],[1731.31,1740.56,43.1,58.99,43.1,58.99],[1740.56,1814.93,43.1,58.99,142.81,103.32],[1814.93,1818.96,142.81,103.32,142.81,103.32],[1818.96,1868.97,142.81,103.32,70.93,100.17],[1868.97,1877.14,70.93,100.17,70.93,100.17],[1877.14,1918.49,70.93,100.17,83.39,129.8],[1918.49,1923.06,83.39,129.8,83.39,129.8],[1923.06,1958.64,83.39,129.8,126.72,97.91],[1958.64,1961.94,126.72,97.91,126.72,97.91],[1961.94,2004.22,126.72,97.91,178.93,31.64],[2004.22,2011.1,178.93,31.64,178.93,31.64],[2011.1,2162.83,178.93,31.64,58.53,121.89],[2162.83,2168.54,58.53,121.89,58.53,121.89],[2168.54,2254.83,58.53,121.89,137.51,30.04],[2254.83,2262.56,137.51,30.04,137.51,30.04],[2262.56,2328.9,137.51,30.04,34.93,87.92],[2328.9,2338.57,34.93,87.92,34.93,87.92],[2338.57,2577.11,34.93,87.92,176.35,126.43],[2577.11,2578.22,176.35,126.43,176.35,126.43],[2578.22,2747.76,176.35,126.43,59.61,79.33],[2747.76,2752.29,59.61,79.33,59.61,79.33],[2752.29,2835.14,59.61,79.33,164.36,113.98],[2835.14,2836.26,164.36,113.98,164.36,113.98],[2836.26,2931.95,164.36,113.98,131.45,36.9],[2931.95,2936.83,131.45,36.9,131.45,36.9],[2936.83,2988.02,131.45,36.9,72.14,12.49],[2988.02,2994.26,72.14,12.49,72.14,12.49],[2994.26,3007.06,72.14,12.49,70.49,30.24],[3007.06,3013.04,70.49,30.24,70.49,30.24],[3013.04,3048.38,70.49,30.24,57.45,77.43],[3048.38,3050.0,57.45,77.43,57.45,77.43],[3050.0,3140.8,57.45,77.43,13.38,30.33],[3140.8,3144.61,13.38,30.33,13.38,30.33],[3144.61,3291.33,13.38,30.33,11.54,160.52],[3291.33,3291.43,11.54,160.52,11.54,160.52],[3291.43,3479.02,11.54,160.52,199.78,124.1],[3479.02,3487.64,199.78,124.1,199.78,124.1],[3487.64,3620.72,199.78,124.1,31.15,53.59],[3620.72,3621.47,31.15,53.59,31.15,53.59]],"20":[[0.0,104.46,157.74,93.01,82.83,77.43],[104.46,105.53,82.83,77.43,82.83,77.43],[105.53,286.38,82.83,77.43,99.43,186.56],[286.38,292.0,99.43,186.56,99.43,186.56],[292.0,333.43,99.43,186.56,117.68,114.42],[333.43,334.21,117.68,114.42,117.68,114.42],[334.21,462.05,117.68,114.42,26.13,174.44],[462.05,463.89,26.13,174.44,26.13,174.44],[463.89,586.01,26.13,174.44,182.06,125.4],[586.01,593.03,182.06,125.4,182.06,125.4],[593.03,796.81,182.06,125.4,50.25,108.83],[796.81,805.2,50.25,108.83,50.25,108.83],[805.2,923.28,50.25,108.83,155.91,185.6],[923.28,929.76,155.91,185.6,155.91,185.6],[929.76,1030.81,155.91,185.6,131.25,95.33],[1030.81,1032.57,131.25,95.33,131.25,95.33],[1032.57,1153.32,131.25,95.33,6.25,79.39],[1153.32,1162.82,6.25,79.39,6.25,79.39],[1162.82,1258.92,6.25,79.39,145.1,84.91],[1258.92,1262.05,145.1,84.91,145.1,84.91],[1262.05,1345.83,145.1,84.91,83.56,2.9],[1345.83,1347.53,83.56,2.9,83.56,2.9],[1347.53,1387.37,83.56,2.9,126.95,35.54],[1387.37,1393.19,126.95,35.54,126.95,35.54],[1393.19,1532.48,126.95,35.54,35.21,137.28],[1532.48,1537.43,35.21,137.28,35.21,137.28],[1537.43,1557.65,35.21,137.28,69.43,154.4],[1557.65,1563.22,69.43,154.4,69.43,154.4],[1563.22,1627.63,69.43,154.4,170.99,167.89],[1627.63,1635.11,170.99,167.89,170.99,167.89],[1635.11,1667.94,170.99,167.89,195.13,147.75],[1667.94,1668.39,195.13,147.75,195.13,147.75],[1668.39,1697.96,195.13,147.75,173.83,133.74],[1697.96,1700.32,173.83,133.74,173.83,133.74],[1700.32,1817.4,173.83,133.74,71.33,29.39],[1817.4,1820.79,71.33,29.39,71.33,29.39],[1820.79,1869.04,71.33,29.39,56.12,108.71],[1869.04,1871.25,56.12,108.71,56.12,108.71],[1871.25,1941.75,56.12,108.71,100.83,111.48],[1941.75,1947.76,100.83,111.48,100.83,111.48],[1947.76,2009.38,100.83,111.48,134.18,32.33],[2009.38,2016.82,134.18,32.33,134.18,32.33],[2016.82,2085.92,134.18,32.33,143.54,109.43],[2085.92,2087.7,143.54,109.43,143.54,109.43],[2087.7,2174.02,143.54,109.43,78.5,166.22],[2174.02,2178.73,78.5,166.22,78.5,166.22],[2178.73,2311.68,78.5,166.22,10.83,19.79],[2311.68,2313.75,10.83,19.79,10.83,19.79],[2313.75,2420.08,10.83,19.79,198.17,86.3],[2420.08,2422.37,198.17,86.3,198.17,86.3],[2422.37,2529.85,198.17,86.3,47.8,65.6],[2529.85,2538.51,47.8,65.6,47.8,65.6],[2538.51,2616.33,47.8,65.6,182.13,113.19],[2616.33,2622.34,182.13,113.19,182.13,113.19],[2622.34,2682.23,182.13,113.19,97.46,110.22],[2682.23,2687.35,97.46,110.22,97.46,110.22],[2687.35,2723.46,97.46,110.22,111.44,156.28],[2723.46,2725.07,111.44,156.28,111.44,156.28],[2725.07,2771.7,111.44,156.28,36.25,167.89],[2771.7,2774.32,36.25,167.89,36.25,167.89],[2774.32,2851.76,36.25,167.89,113.57,71.03],[2851.76,2856.97,113.57,71.03,113.57,71.03],[2856.97,2888.88,113.57,71.03,66.58,39.76],[2888.88,2897.61,66.58,39.76,66.58,39.76],[2897.61,2943.63,66.58,39.76,83.31,127.76],[2943.63,2948.33,83.31,127.76,83.31,127.76],[2948.33,3047.61,83.31,127.76,93.43,75.17],[3047.61,3054.43,93.43,75.17,93.43,75.17],[3054.43,3114.84,93.43,75.17,152.06,142.84],[3114.84,3119.83,152.06,142.84,152.06,142.84],[3119.83,3143.87,152.06,142.84,125.2,154.03],[3143.87,3150.55,125.2,154.03,125.2,154.03],[3150.55,3269.7,125.2,154.03,161.15,36.53],[3269.7,3271.24,161.15,36.53,161.15,36.53],[3271.24,3284.7,161.15,36.53,185.68,32.08],[3284.7,3286.02,185.68,32.08,185.68,32.08],[3286.02,3595.72,185.68,32.08,34.14,158.33],[3595.72,3596.7,34.14,158.33,34.14,158.33],[3596.7,3640.97,34.14,158.33,11.3,136.92],[3640.97,3647.74,11.3,136.92,11.3,136.92]],"26":[[0.0,15.3,7.92,156.22,25.12,138.41],[15.3,23.83,25.12,138.41,25.12,138.41],[23.83,51.53,25.12,138.41,49.98,131.0],[51.53,61.02,49.98,131.0,49.98,131.0],[61.02,119.97,49.98,131.0,110.64,193.06],[119.97,127.85,110.64,193.06,110.64,193.06],[127.85,195.93,110.64,193.06,103.95,101.21],[195.93,201.33,103.95,101.21,103.95,101.21],[201.33,215.06,103.95,101.21,111.44,117.61],[215.06,224.23,111.44,117.61,111.44,117.61],[224.23,240.93,111.44,117.61,115.87,89.63],[240.93,245.24,115.87,89.63,115.87,89.63],[245.24,288.08,115.87,89.63,70.66,35.22],[288.08,297.8,70.66,35.22,70.66,35.22],[297.8,397.89,70.66,35.22,55.19,115.78],[397.89,406.96,55.19,115.78,55.19,115.78],[406.96,458.01,55.19,115.78,49.44,29.0],[458.01,458.38,49.44,29.0,49.44,29.0],[458.38,536.31,49.44,29.0,109.29,92.98],[536.31,545.54,109.29,92.98,109.29,92.98],[545.54,601.54,109.29,92.98,170.1,165.62],[601.54,607.11,170.1,165.62,170.1,165.62],[607.11,754.3,170.1,165.62,116.74,69.18],[754.3,754.98,116.74,69.18,116.74,69.18],[754.98,793.89,116.74,69.18,136.53,74.45],[793.89,802.46,136.53,74.45,136.53,74.45],[802.46,881.93,136.53,74.45,20.19,142.67],[881.93,882.25,20.19,142.67,20.19,142.67],[882.25,931.9,20.19,142.67,68.1,181.9],[931.9,933.66,68.1,181.9,68.1,181.9],[933.66,975.54,68.1,181.9,31.51,111.88],[975.54,983.16,31.51,111.88,31.51,111.88],[983.16,1063.15,31.51,111.88,2.95,174.67],[1063.15,1063.82,2.95,174.67,2.95,174.67],[1063.82,1109.87,2.95,174.67,42.91,96.89],[1109.87,1119.64,42.91,96.89,42.91,96.89],[1119.64,1154.45,42.91,96.89,12.7,116.76],[1154.45,1161.65,12.7,116.76,12.7,116.76],[1161.65,1180.62,12.7,116.76,27.03,142.8],[1180.62,1186.07,27.03,142.8,27.03,142.8],[1186.07,1324.9,27.03,142.8,137.68,53.36],[1324.9,1329.06,137.68,53.36,137.68,53.36],[1329.06,1404.2,137.68,53.36,38.38,161.09],[1404.2,1410.76,38.38,161.09,38.38,161.09],[1410.76,1581.51,38.38,161.09,108.25,11.08],[1581.51,1589.06,108.25,11.08,108.25,11.08],[1589.06,1634.21,108.25,11.08,176.3,20.68],[1634.21,1636.88,176.3,20.68,176.3,20.68],[1636.88,1720.75,176.3,20.68,18.47,72.14],[1720.75,1725.78,18.47,72.14,18.47,72.14],[1725.78,1740.48,18.47,72.14,42.69,60.26],[1740.48,1749.88,42.69,60.26,42.69,60.26],[1749.88,1850.97,42.69,60.26,126.57,142.1],[1850.97,1853.06,126.57,142.1,126.57,142.1],[1853.06,1900.63,126.57,142.1,77.48,158.49],[1900.63,1903.83,77.48,158.49,77.48,158.49],[1903.83,1980.0,77.48,158.49,24.97,55.13],[1980.0,1981.18,24.97,55.13,24.97,55.13],[1981.18,2118.57,24.97,55.13,147.84,147.93],[2118.57,2121.01,147.84,147.93,147.84,147.93],[2121.01,2194.3,147.84,147.93,132.95,101.39],[2194.3,2194.46,132.95,101.39,132.95,101.39],[2194.46,2240.09,132.95,101.39,101.56,166.64],[2240.09,2246.16,101.56,166.64,101.56,166.64],[2246.16,2343.05,101.56,166.64,193.19,90.1],[2343.05,2344.41,193.19,90.1,193.19,90.1],[2344.41,2594.19,193.19,90.1,36.22,111.14],[2594.19,2602.46,36.22,111.14,36.22,111.14],[2602.46,2663.34,36.22,111.14,137.34,168.36],[2663.34,2668.76,137.34,168.36,137.34,168.36],[2668.76,2810.38,137.34,168.36,102.03,74.81],[2810.38,2813.54,102.03,74.81,102.03,74.81],[2813.54,2882.74,102.03,74.81,34.31,53.96],[2882.74,2889.62,34.31,53.96,34.31,53.96],[2889.62,3017.97,34.31,53.96,133.36,127.62],[3017.97,3026.09,133.36,127.62,133.36,127.62],[3026.09,3048.26,133.36,127.62,103.41,118.95],[3048.26,3048.8,103.41,118.95,103.41,118.95],[3048.8,3155.81,103.41,118.95,38.33,136.47],[3155.81,3162.03,38.33,136.47,38.33,136.47],[3162.03,3312.88,38.33,136.47,159.58,3.31],[3312.88,3314.91,159.58,3.31,159.58,3.31],[3314.91,3412.88,159.58,3.31,34.72,72.02],[3412.88,3413.15,34.72,72.02,34.72,72.02],[3413.15,3421.26,34.72,72.02,28.62,77.78],[3421.26,3427.55,28.62,77.78,28.62,77.78],[3427.55,3468.6,28.62,77.78,60.17,49.6],[3468.6,3469.61,60.17,49.6,60.17,49.6],[3469.61,3525.27,60.17,49.6,1.55,143.76],[3525.27,3534.27,1.55,143.76,1.55,143.76],[3534.27,3585.32,1.55,143.76,19.32,81.11],[3585.32,3593.66,19.32,81.11,19.32,81.11],[3593.66,3710.96,19.32,81.11,115.06,87.33],[3710.96,3715.34,115.06,87.33,115.06,87.33]],"29":[[0.0,186.46,129.45,119.78,113.63,6.74],[186.46,192.02,113.63,6.74,113.63,6.74],[192.02,230.55,113.63,6.74,154.41,36.19],[230.55,232.2,154.41,36.19,154.41,36.19],[232.2,467.33,154.41,36.19,167.07,181.38],[467.33,476.13,167.07,181.38,167.07,181.38],[476.13,644.45,167.07,181.38,36.28,109.75],[644.45,650.73,36.28,109.75,36.28,109.75],[650.73,847.89,36.28,109.75,137.29,169.3],[847.89,848.66,137.29,169.3,137.29,169.3],[848.66,919.28,137.29,169.3,141.61,48.01],[919.28,926.52,141.61,48.01,141.61,48.01],[926.52,960.77,141.61,48.01,182.96,74.6],[960.77,968.05,182.96,74.6,182.96,74.6],[968.05,1028.22,182.96,74.6,159.45,29.06],[1028.22,1034.61,159.45,29.06,159.45,29.06],[1034.61,1096.16,159.45,29.06,65.37,54.62],[1096.16,1096.49,65.37,54.62,65.37,54.62],[1096.49,1179.0,65.37,54.62,193.09,122.39],[1179.0,1182.36,193.09,122.39,193.09,122.39],[1182.36,1211.87,193.09,122.39,139.82,136.37],[1211.87,1213.7,139.82,136.37,139.82,136.37],[1213.7,1349.57,139.82,136.37,58.91,86.42],[1349.57,1353.2,58.91,86.42,58.91,86.42],[1353.2,1425.34,58.91,86.42,169.31,24.19],[1425.34,1429.5,169.31,24.19,169.31,24.19],[1429.5,1454.93,169.31,24.19,136.83,40.33],[1454.93,1459.34,136.83,40.33,136.83,40.33],[1459.34,1486.99,136.83,40.33,155.9,60.49],[1486.99,1493.72,155.9,60.49,155.9,60.49],[1493.72,1576.18,155.9,60.49,20.05,117.25],[1576.18,1580.14,20.05,117.25,20.05,117.25],[1580.14,1599.21,20.05,117.25,31.94,130.33],[1599.21,1605.04,31.94,130.33,31.94,130.33],[1605.04,1803.65,31.94,130.33,163.0,131.02],[1803.65,1805.92,163.0,131.02,163.0,131.02],[1805.92,1844.17,163.0,131.02,99.49,162.67],[1844.17,1849.47,99.49,162.67,99.49,162.67],[1849.47,1875.82,99.49,162.67,87.35,174.8],[1875.82,1877.39,87.35,174.8,87.35,174.8],[1877.39,1960.36,87.35,174.8,162.15,55.38],[1960.36,1962.81,162.15,55.38,162.15,55.38],[1962.81,2104.15,162.15,55.38,2.17,56.91],[2104.15,2105.85,2.17,56.91,2.17,56.91],[2105.85,2312.26,2.17,56.91,171.53,51.59],[2312.26,2318.11,171.53,51.59,171.53,51.59],[2318.11,2445.34,171.53,51.59,90.33,90.48],[2445.34,2453.43,90.33,90.48,90.33,90.48],[2453.43,2472.89,90.33,90.48,93.9,125.94],[2472.89,2482.69,93.9,125.94,93.9,125.94],[2482.69,2521.07,93.9,125.94,116.35,94.38],[2521.07,2523.98,116.35,94.38,116.35,94.38],[2523.98,2593.45,116.35,94.38,14.88,129.24],[2593.45,2598.97,14.88,129.24,14.88,129.24],[2598.97,2709.5,14.88,129.24,144.56,176.56],[2709.5,2714.92,144.56,176.56,144.56,176.56],[2714.92,2764.08,144.56,176.56,94.86,136.5],[2764.08,2769.64,94.86,136.5,94.86,136.5],[2769.64,2793.98,94.86,136.5,138.47,149.24],[2793.98,2797.4,138.47,149.24,138.47,149.24],[2797.4,2877.74,138.47,149.24,121.62,45.72],[2877.74,2887.68,121.62,45.72,121.62,45.72],[2887.68,2942.5,121.62,45.72,189.8,95.3],[2942.5,2948.81,189.8,95.3,189.8,95.3],[2948.81,3059.92,189.8,95.3,18.12,28.53],[3059.92,3063.73,18.12,28.53,18.12,28.53],[3063.73,3309.24,18.12,28.53,166.28,19.58],[3309.24,3318.1,166.28,19.58,166.28,19.58],[3318.1,3389.71,166.28,19.58,122.92,60.87],[3389.71,3391.24,122.92,60.87,122.92,60.87],[3391.24,3484.73,122.92,60.87,42.25,178.0],[3484.73,3485.86,42.25,178.0,42.25,178.0],[3485.86,3561.76,42.25,178.0,125.46,163.63],[3561.76,3566.21,125.46,163.63,125.46,163.63],[3566.21,3682.91,125.46,163.63,112.02,75.67],[3682.91,3686.59,112.02,75.67,112.02,75.67]]};
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
