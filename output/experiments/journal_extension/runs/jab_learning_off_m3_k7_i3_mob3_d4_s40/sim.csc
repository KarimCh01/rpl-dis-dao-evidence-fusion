<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>jab_learning_off_m3_k7_i3_mob3_d4_s40</title>
    <randomseed>40</randomseed>
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
          <pos x="47.42" y="194.65" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="140.16" y="91.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="53.91" y="13.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.52" y="114.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="134.74" y="171.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="42.64" y="34.89" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="199.14" y="116.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
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
          <pos x="52.27" y="112.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="190.52" y="68.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="138.24" y="133.82" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="118.51" y="169.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="107.88" y="174.89" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="18.75" y="170.62" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="129.94" y="151.96" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="188.84" y="93.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
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
          <pos x="87.87" y="187.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="174.08" y="136.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="189.63" y="70.83" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="113.10" y="33.56" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="95.15" y="41.52" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="171.38" y="158.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="189.47" y="132.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.53" y="155.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="73.29" y="70.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="52.44" y="127.59" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="39.84" y="90.59" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="142.02" y="15.67" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="131.32" y="114.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="70.44" y="42.07" />
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
var S = {"2":[[0.0,85.42,47.42,194.65,10.59,68.79],[85.42,85.8,10.59,68.79,10.59,68.79],[85.8,167.2,10.59,68.79,102.23,28.12],[167.2,168.03,102.23,28.12,102.23,28.12],[168.03,272.64,102.23,28.12,29.43,95.18],[272.64,277.37,29.43,95.18,29.43,95.18],[277.37,344.3,29.43,95.18,121.11,55.93],[344.3,348.13,121.11,55.93,121.11,55.93],[348.13,384.29,121.11,55.93,182.77,26.4],[384.29,389.87,182.77,26.4,182.77,26.4],[389.87,464.69,182.77,26.4,69.79,60.06],[464.69,465.8,69.79,60.06,69.79,60.06],[465.8,534.41,69.79,60.06,154.87,37.05],[534.41,539.5,154.87,37.05,154.87,37.05],[539.5,609.89,154.87,37.05,188.69,65.02],[609.89,614.54,188.69,65.02,188.69,65.02],[614.54,642.42,188.69,65.02,199.73,96.91],[642.42,646.42,199.73,96.91,199.73,96.91],[646.42,688.74,199.73,96.91,163.93,91.76],[688.74,693.16,163.93,91.76,163.93,91.76],[693.16,743.02,163.93,91.76,82.5,126.85],[743.02,746.39,82.5,126.85,82.5,126.85],[746.39,991.48,82.5,126.85,71.79,1.5],[991.48,997.39,71.79,1.5,71.79,1.5],[997.39,1090.04,71.79,1.5,72.38,154.24],[1090.04,1092.78,72.38,154.24,72.38,154.24],[1092.78,1226.17,72.38,154.24,137.9,80.71],[1226.17,1229.0,137.9,80.71,137.9,80.71],[1229.0,1320.91,137.9,80.71,62.17,185.5],[1320.91,1323.49,62.17,185.5,62.17,185.5],[1323.49,1531.71,62.17,185.5,169.58,184.84],[1531.71,1538.77,169.58,184.84,169.58,184.84],[1538.77,1631.12,169.58,184.84,187.66,59.2],[1631.12,1637.31,187.66,59.2,187.66,59.2],[1637.31,1727.02,187.66,59.2,193.81,155.87],[1727.02,1736.81,193.81,155.87,193.81,155.87],[1736.81,1911.8,193.81,155.87,87.17,102.85],[1911.8,1918.59,87.17,102.85,87.17,102.85],[1918.59,2066.85,87.17,102.85,105.65,29.99],[2066.85,2071.95,105.65,29.99,105.65,29.99],[2071.95,2157.04,105.65,29.99,174.7,56.72],[2157.04,2164.26,174.7,56.72,174.7,56.72],[2164.26,2267.17,174.7,56.72,166.27,153.28],[2267.17,2270.49,166.27,153.28,166.27,153.28],[2270.49,2303.94,166.27,153.28,128.2,134.38],[2303.94,2304.74,128.2,134.38,128.2,134.38],[2304.74,2361.21,128.2,134.38,136.96,70.85],[2361.21,2368.52,136.96,70.85,136.96,70.85],[2368.52,2433.71,136.96,70.85,27.11,71.81],[2433.71,2435.44,27.11,71.81,27.11,71.81],[2435.44,2514.14,27.11,71.81,54.27,182.31],[2514.14,2517.4,54.27,182.31,54.27,182.31],[2517.4,2578.54,54.27,182.31,72.4,124.17],[2578.54,2588.49,72.4,124.17,72.4,124.17],[2588.49,2659.9,72.4,124.17,131.87,44.22],[2659.9,2666.4,131.87,44.22,131.87,44.22],[2666.4,2752.15,131.87,44.22,80.89,49.47],[2752.15,2758.72,80.89,49.47,80.89,49.47],[2758.72,2860.77,80.89,49.47,157.02,102.48],[2860.77,2867.92,157.02,102.48,157.02,102.48],[2867.92,2918.42,157.02,102.48,92.2,66.59],[2918.42,2918.52,92.2,66.59,92.2,66.59],[2918.52,2945.9,92.2,66.59,103.97,24.15],[2945.9,2950.75,103.97,24.15,103.97,24.15],[2950.75,3022.08,103.97,24.15,81.63,155.76],[3022.08,3023.85,81.63,155.76,81.63,155.76],[3023.85,3089.77,81.63,155.76,169.74,197.82],[3089.77,3099.1,169.74,197.82,169.74,197.82],[3099.1,3193.29,169.74,197.82,181.34,81.22],[3193.29,3193.5,181.34,81.22,181.34,81.22],[3193.5,3283.38,181.34,81.22,122.13,181.06],[3283.38,3283.58,122.13,181.06,122.13,181.06],[3283.58,3403.36,122.13,181.06,193.91,53.51],[3403.36,3410.16,193.91,53.51,193.91,53.51],[3410.16,3468.29,193.91,53.51,151.05,75.56],[3468.29,3469.32,151.05,75.56,151.05,75.56],[3469.32,3713.87,151.05,75.56,0.33,36.32],[3713.87,3721.09,0.33,36.32,0.33,36.32]],"3":[[0.0,8.47,52.27,112.2,52.43,103.13],[8.47,8.69,52.43,103.13,52.43,103.13],[8.69,37.24,52.43,103.13,76.06,141.04],[37.24,37.32,76.06,141.04,76.06,141.04],[37.32,74.3,76.06,141.04,52.38,107.81],[74.3,80.1,52.38,107.81,52.38,107.81],[80.1,163.99,52.38,107.81,183.34,193.36],[163.99,173.68,183.34,193.36,183.34,193.36],[173.68,335.35,183.34,193.36,108.65,51.3],[335.35,344.15,108.65,51.3,108.65,51.3],[344.15,410.68,108.65,51.3,188.03,28.54],[410.68,420.55,188.03,28.54,188.03,28.54],[420.55,476.87,188.03,28.54,134.08,69.11],[476.87,484.94,134.08,69.11,134.08,69.11],[484.94,549.93,134.08,69.11,51.26,46.53],[549.93,553.13,51.26,46.53,51.26,46.53],[553.13,671.62,51.26,46.53,199.57,199.51],[671.62,675.29,199.57,199.51,199.57,199.51],[675.29,785.09,199.57,199.51,27.27,72.65],[785.09,792.59,27.27,72.65,27.27,72.65],[792.59,898.63,27.27,72.65,173.65,87.17],[898.63,899.27,173.65,87.17,173.65,87.17],[899.27,931.93,173.65,87.17,114.52,63.68],[931.93,938.61,114.52,63.68,114.52,63.68],[938.61,1004.97,114.52,63.68,49.9,179.4],[1004.97,1010.39,49.9,179.4,49.9,179.4],[1010.39,1114.14,49.9,179.4,150.73,77.39],[1114.14,1124.05,150.73,77.39,150.73,77.39],[1124.05,1161.42,150.73,77.39,125.07,53.12],[1161.42,1163.87,125.07,53.12,125.07,53.12],[1163.87,1173.94,125.07,53.12,137.93,37.84],[1173.94,1181.45,137.93,37.84,137.93,37.84],[1181.45,1215.48,137.93,37.84,166.54,81.81],[1215.48,1221.88,166.54,81.81,166.54,81.81],[1221.88,1284.77,166.54,81.81,88.43,178.58],[1284.77,1285.84,88.43,178.58,88.43,178.58],[1285.84,1349.16,88.43,178.58,196.43,199.24],[1349.16,1358.29,196.43,199.24,196.43,199.24],[1358.29,1471.3,196.43,199.24,172.32,95.42],[1471.3,1475.09,172.32,95.42,172.32,95.42],[1475.09,1567.14,172.32,95.42,47.51,105.24],[1567.14,1568.8,47.51,105.24,47.51,105.24],[1568.8,1613.72,47.51,105.24,97.88,168.49],[1613.72,1623.7,97.88,168.49,97.88,168.49],[1623.7,1716.72,97.88,168.49,92.17,22.2],[1716.72,1724.58,92.17,22.2,92.17,22.2],[1724.58,1785.46,92.17,22.2,158.29,78.43],[1785.46,1788.24,158.29,78.43,158.29,78.43],[1788.24,1865.3,158.29,78.43,76.52,1.41],[1865.3,1870.06,76.52,1.41,76.52,1.41],[1870.06,2217.24,76.52,1.41,199.47,134.67],[2217.24,2220.61,199.47,134.67,199.47,134.67],[2220.61,2297.25,199.47,134.67,165.18,27.9],[2297.25,2306.11,165.18,27.9,165.18,27.9],[2306.11,2385.22,165.18,27.9,54.54,24.47],[2385.22,2393.73,54.54,24.47,54.54,24.47],[2393.73,2596.5,54.54,24.47,172.95,41.53],[2596.5,2597.6,172.95,41.53,172.95,41.53],[2597.6,2699.08,172.95,41.53,132.11,0.5],[2699.08,2699.79,132.11,0.5,132.11,0.5],[2699.79,2807.3,132.11,0.5,78.55,157.32],[2807.3,2816.07,78.55,157.32,78.55,157.32],[2816.07,2911.98,78.55,157.32,18.2,30.03],[2911.98,2915.12,18.2,30.03,18.2,30.03],[2915.12,3038.13,18.2,30.03,37.07,109.96],[3038.13,3046.35,37.07,109.96,37.07,109.96],[3046.35,3161.06,37.07,109.96,157.49,90.05],[3161.06,3168.25,157.49,90.05,157.49,90.05],[3168.25,3185.76,157.49,90.05,128.73,99.53],[3185.76,3189.7,128.73,99.53,128.73,99.53],[3189.7,3249.62,128.73,99.53,156.22,14.94],[3249.62,3253.13,156.22,14.94,156.22,14.94],[3253.13,3386.39,156.22,14.94,52.8,131.41],[3386.39,3390.0,52.8,131.41,52.8,131.41],[3390.0,3499.43,52.8,131.41,194.02,56.59],[3499.43,3499.68,194.02,56.59,194.02,56.59],[3499.68,3607.99,194.02,56.59,65.24,193.92],[3607.99,3608.58,65.24,193.92,65.24,193.92]],"7":[[0.0,151.73,190.52,68.19,46.51,176.17],[151.73,154.12,46.51,176.17,46.51,176.17],[154.12,280.94,46.51,176.17,119.87,37.66],[280.94,285.43,119.87,37.66,119.87,37.66],[285.43,375.95,119.87,37.66,175.78,122.61],[375.95,384.73,175.78,122.61,175.78,122.61],[384.73,459.41,175.78,122.61,147.8,196.15],[459.41,467.16,147.8,196.15,147.8,196.15],[467.16,540.12,147.8,196.15,191.63,91.1],[540.12,548.03,191.63,91.1,191.63,91.1],[548.03,665.43,191.63,91.1,11.16,104.19],[665.43,675.41,11.16,104.19,11.16,104.19],[675.41,701.72,11.16,104.19,1.04,73.26],[701.72,703.0,1.04,73.26,1.04,73.26],[703.0,801.45,1.04,73.26,128.02,134.21],[801.45,807.68,128.02,134.21,128.02,134.21],[807.68,834.66,128.02,134.21,90.62,132.72],[834.66,836.18,90.62,132.72,90.62,132.72],[836.18,1009.24,90.62,132.72,46.27,25.83],[1009.24,1017.0,46.27,25.83,46.27,25.83],[1017.0,1208.01,46.27,25.83,21.19,147.75],[1208.01,1208.48,21.19,147.75,21.19,147.75],[1208.48,1279.66,21.19,147.75,42.15,72.25],[1279.66,1282.72,42.15,72.25,42.15,72.25],[1282.72,1469.68,42.15,72.25,175.59,14.88],[1469.68,1472.07,175.59,14.88,175.59,14.88],[1472.07,1588.13,175.59,14.88,76.61,176.45],[1588.13,1592.81,76.61,176.45,76.61,176.45],[1592.81,1831.76,76.61,176.45,41.31,46.65],[1831.76,1833.5,41.31,46.65,41.31,46.65],[1833.5,1855.2,41.31,46.65,61.17,16.51],[1855.2,1861.83,61.17,16.51,61.17,16.51],[1861.83,1897.73,61.17,16.51,107.46,67.17],[1897.73,1903.23,107.46,67.17,107.46,67.17],[1903.23,1934.59,107.46,67.17,119.09,42.52],[1934.59,1943.14,119.09,42.52,119.09,42.52],[1943.14,1978.72,119.09,42.52,93.74,91.2],[1978.72,1982.42,93.74,91.2,93.74,91.2],[1982.42,2009.9,93.74,91.2,138.9,85.18],[2009.9,2012.8,138.9,85.18,138.9,85.18],[2012.8,2092.21,138.9,85.18,96.37,114.52],[2092.21,2096.03,96.37,114.52,96.37,114.52],[2096.03,2128.45,96.37,114.52,66.38,167.83],[2128.45,2131.03,66.38,167.83,66.38,167.83],[2131.03,2197.3,66.38,167.83,82.11,95.66],[2197.3,2206.17,82.11,95.66,82.11,95.66],[2206.17,2234.29,82.11,95.66,91.26,149.43],[2234.29,2243.89,91.26,149.43,91.26,149.43],[2243.89,2394.82,91.26,149.43,50.68,5.7],[2394.82,2395.63,50.68,5.7,50.68,5.7],[2395.63,2519.86,50.68,5.7,96.47,189.65],[2519.86,2524.0,96.47,189.65,96.47,189.65],[2524.0,2641.9,96.47,189.65,41.37,27.69],[2641.9,2642.0,41.37,27.69,41.37,27.69],[2642.0,2737.21,41.37,27.69,160.1,34.56],[2737.21,2738.93,160.1,34.56,160.1,34.56],[2738.93,2898.33,160.1,34.56,193.99,113.81],[2898.33,2904.12,193.99,113.81,193.99,113.81],[2904.12,2940.35,193.99,113.81,138.82,119.11],[2940.35,2945.29,138.82,119.11,138.82,119.11],[2945.29,2979.39,138.82,119.11,163.7,58.94],[2979.39,2983.89,163.7,58.94,163.7,58.94],[2983.89,3059.7,163.7,58.94,30.74,63.21],[3059.7,3062.24,30.74,63.21,30.74,63.21],[3062.24,3072.15,30.74,63.21,20.37,73.73],[3072.15,3076.15,20.37,73.73,20.37,73.73],[3076.15,3143.53,20.37,73.73,31.77,120.81],[3143.53,3151.15,31.77,120.81,31.77,120.81],[3151.15,3155.42,31.77,120.81,34.99,126.53],[3155.42,3163.91,34.99,126.53,34.99,126.53],[3163.91,3201.17,34.99,126.53,2.17,110.84],[3201.17,3202.24,2.17,110.84,2.17,110.84],[3202.24,3288.85,2.17,110.84,84.75,33.02],[3288.85,3296.0,84.75,33.02,84.75,33.02],[3296.0,3346.56,84.75,33.02,14.62,3.74],[3346.56,3353.1,14.62,3.74,14.62,3.74],[3353.1,3525.32,14.62,3.74,123.87,197.57],[3525.32,3531.47,123.87,197.57,123.87,197.57],[3531.47,3793.87,123.87,197.57,119.59,64.2],[3793.87,3797.22,119.59,64.2,119.59,64.2]],"9":[[0.0,83.05,138.24,133.82,137.9,38.41],[83.05,92.89,137.9,38.41,137.9,38.41],[92.89,243.64,137.9,38.41,125.21,135.48],[243.64,245.58,125.21,135.48,125.21,135.48],[245.58,357.54,125.21,135.48,68.62,172.67],[357.54,358.31,68.62,172.67,68.62,172.67],[358.31,622.62,68.62,172.67,97.51,15.01],[622.62,628.58,97.51,15.01,97.51,15.01],[628.58,745.49,97.51,15.01,127.49,129.73],[745.49,751.24,127.49,129.73,127.49,129.73],[751.24,820.87,127.49,129.73,86.12,181.75],[820.87,830.72,86.12,181.75,86.12,181.75],[830.72,945.23,86.12,181.75,98.88,23.05],[945.23,951.3,98.88,23.05,98.88,23.05],[951.3,1028.29,98.88,23.05,110.7,125.14],[1028.29,1035.53,110.7,125.14,110.7,125.14],[1035.53,1074.24,110.7,125.14,136.64,172.26],[1074.24,1080.36,136.64,172.26,136.64,172.26],[1080.36,1172.85,136.64,172.26,9.42,81.76],[1172.85,1173.95,9.42,81.76,9.42,81.76],[1173.95,1194.22,9.42,81.76,14.43,55.25],[1194.22,1204.16,14.43,55.25,14.43,55.25],[1204.16,1314.48,14.43,55.25,135.01,80.0],[1314.48,1314.6,135.01,80.0,135.01,80.0],[1314.6,1356.68,135.01,80.0,77.17,114.19],[1356.68,1356.7,77.17,114.19,77.17,114.19],[1356.7,1444.55,77.17,114.19,140.86,196.15],[1444.55,1451.88,140.86,196.15,140.86,196.15],[1451.88,1522.0,140.86,196.15,67.95,197.78],[1522.0,1531.66,67.95,197.78,67.95,197.78],[1531.66,1649.16,67.95,197.78,95.84,15.04],[1649.16,1651.15,95.84,15.04,95.84,15.04],[1651.15,1817.09,95.84,15.04,52.83,189.54],[1817.09,1822.09,52.83,189.54,52.83,189.54],[1822.09,1916.9,52.83,189.54,96.4,95.27],[1916.9,1924.95,96.4,95.27,96.4,95.27],[1924.95,1943.44,96.4,95.27,71.01,99.52],[1943.44,1949.69,71.01,99.52,71.01,99.52],[1949.69,2137.97,71.01,99.52,137.07,26.39],[2137.97,2145.24,137.07,26.39,137.07,26.39],[2145.24,2201.0,137.07,26.39,156.13,67.21],[2201.0,2208.4,156.13,67.21,156.13,67.21],[2208.4,2326.96,156.13,67.21,14.07,171.29],[2326.96,2333.98,14.07,171.29,14.07,171.29],[2333.98,2373.2,14.07,171.29,63.12,139.86],[2373.2,2378.53,63.12,139.86,63.12,139.86],[2378.53,2469.17,63.12,139.86,5.83,105.13],[2469.17,2472.24,5.83,105.13,5.83,105.13],[2472.24,2511.4,5.83,105.13,66.99,146.05],[2511.4,2517.34,66.99,146.05,66.99,146.05],[2517.34,2553.29,66.99,146.05,37.15,82.58],[2553.29,2555.13,37.15,82.58,37.15,82.58],[2555.13,2592.46,37.15,82.58,19.48,10.51],[2592.46,2599.44,19.48,10.51,19.48,10.51],[2599.44,2708.87,19.48,10.51,119.37,138.09],[2708.87,2709.15,119.37,138.09,119.37,138.09],[2709.15,2763.47,119.37,138.09,172.08,115.77],[2763.47,2767.97,172.08,115.77,172.08,115.77],[2767.97,2843.79,172.08,115.77,64.12,39.85],[2843.79,2848.22,64.12,39.85,64.12,39.85],[2848.22,2958.88,64.12,39.85,139.13,129.4],[2958.88,2961.32,139.13,129.4,139.13,129.4],[2961.32,2999.23,139.13,129.4,66.55,123.96],[2999.23,2999.68,66.55,123.96,66.55,123.96],[2999.68,3051.34,66.55,123.96,97.73,143.09],[3051.34,3059.97,97.73,143.09,97.73,143.09],[3059.97,3113.48,97.73,143.09,126.1,84.03],[3113.48,3120.31,126.1,84.03,126.1,84.03],[3120.31,3223.21,126.1,84.03,55.23,66.27],[3223.21,3226.67,55.23,66.27,55.23,66.27],[3226.67,3288.23,55.23,66.27,35.38,34.49],[3288.23,3294.44,35.38,34.49,35.38,34.49],[3294.44,3384.97,35.38,34.49,61.73,198.1],[3384.97,3388.54,61.73,198.1,61.73,198.1],[3388.54,3672.95,61.73,198.1,173.98,19.97],[3672.95,3673.6,173.98,19.97,173.98,19.97]],"12":[[0.0,81.98,118.51,169.84,4.88,108.94],[81.98,87.64,4.88,108.94,4.88,108.94],[87.64,101.26,4.88,108.94,21.3,117.03],[101.26,109.42,21.3,117.03,21.3,117.03],[109.42,208.3,21.3,117.03,7.38,33.64],[208.3,216.43,7.38,33.64,7.38,33.64],[216.43,315.09,7.38,33.64,187.37,88.93],[315.09,317.23,187.37,88.93,187.37,88.93],[317.23,355.7,187.37,88.93,172.79,30.53],[355.7,358.87,172.79,30.53,172.79,30.53],[358.87,391.43,172.79,30.53,149.92,80.11],[391.43,398.31,149.92,80.11,149.92,80.11],[398.31,438.58,149.92,80.11,158.03,22.93],[438.58,448.29,158.03,22.93,158.03,22.93],[448.29,498.7,158.03,22.93,142.6,81.95],[498.7,501.15,142.6,81.95,142.6,81.95],[501.15,508.2,142.6,81.95,139.24,77.84],[508.2,513.52,139.24,77.84,139.24,77.84],[513.52,660.65,139.24,77.84,169.04,163.01],[660.65,661.67,169.04,163.01,169.04,163.01],[661.67,739.3,169.04,163.01,63.73,54.22],[739.3,746.68,63.73,54.22,63.73,54.22],[746.68,844.29,63.73,54.22,152.03,139.26],[844.29,852.59,152.03,139.26,152.03,139.26],[852.59,951.21,152.03,139.26,34.96,186.26],[951.21,959.55,34.96,186.26,34.96,186.26],[959.55,1039.86,34.96,186.26,22.26,99.13],[1039.86,1041.09,22.26,99.13,22.26,99.13],[1041.09,1072.42,22.26,99.13,80.22,83.1],[1072.42,1073.4,80.22,83.1,80.22,83.1],[1073.4,1130.47,80.22,83.1,145.21,35.85],[1130.47,1130.6,145.21,35.85,145.21,35.85],[1130.6,1168.72,145.21,35.85,73.01,14.65],[1168.72,1172.61,73.01,14.65,73.01,14.65],[1172.61,1238.28,73.01,14.65,1.25,122.17],[1238.28,1242.26,1.25,122.17,1.25,122.17],[1242.26,1292.99,1.25,122.17,46.37,147.98],[1292.99,1293.72,46.37,147.98,46.37,147.98],[1293.72,1322.52,46.37,147.98,36.76,95.4],[1322.52,1329.77,36.76,95.4,36.76,95.4],[1329.77,1379.85,36.76,95.4,89.02,41.76],[1379.85,1387.56,89.02,41.76,89.02,41.76],[1387.56,1621.35,89.02,41.76,28.59,194.72],[1621.35,1626.2,28.59,194.72,28.59,194.72],[1626.2,1744.73,28.59,194.72,102.15,51.78],[1744.73,1745.16,102.15,51.78,102.15,51.78],[1745.16,1780.78,102.15,51.78,132.38,94.28],[1780.78,1785.86,132.38,94.28,132.38,94.28],[1785.86,1801.46,132.38,94.28,123.47,67.04],[1801.46,1803.35,123.47,67.04,123.47,67.04],[1803.35,1857.55,123.47,67.04,180.3,45.01],[1857.55,1861.55,180.3,45.01,180.3,45.01],[1861.55,2002.78,180.3,45.01,108.88,187.54],[2002.78,2012.61,108.88,187.54,108.88,187.54],[2012.61,2137.43,108.88,187.54,77.43,31.96],[2137.43,2142.42,77.43,31.96,77.43,31.96],[2142.42,2224.51,77.43,31.96,32.32,142.53],[2224.51,2233.41,32.32,142.53,32.32,142.53],[2233.41,2288.21,32.32,142.53,132.55,137.22],[2288.21,2293.84,132.55,137.22,132.55,137.22],[2293.84,2336.07,132.55,137.22,165.26,175.84],[2336.07,2344.11,165.26,175.84,165.26,175.84],[2344.11,2395.61,165.26,175.84,70.18,161.5],[2395.61,2399.77,70.18,161.5,70.18,161.5],[2399.77,2473.18,70.18,161.5,29.89,85.88],[2473.18,2473.7,29.89,85.88,29.89,85.88],[2473.7,2564.11,29.89,85.88,130.57,121.17],[2564.11,2573.78,130.57,121.17,130.57,121.17],[2573.78,2677.57,130.57,121.17,43.19,22.77],[2677.57,2680.6,43.19,22.77,43.19,22.77],[2680.6,2772.1,43.19,22.77,69.71,198.02],[2772.1,2781.44,69.71,198.02,69.71,198.02],[2781.44,3131.6,69.71,198.02,3.35,11.38],[3131.6,3134.82,3.35,11.38,3.35,11.38],[3134.82,3262.45,3.35,11.38,115.92,104.74],[3262.45,3268.26,115.92,104.74,115.92,104.74],[3268.26,3326.64,115.92,104.74,154.74,194.15],[3326.64,3331.37,154.74,194.15,154.74,194.15],[3331.37,3419.37,154.74,194.15,130.39,90.59],[3419.37,3429.02,130.39,90.59,130.39,90.59],[3429.02,3483.32,130.39,90.59,172.1,178.73],[3483.32,3490.97,172.1,178.73,172.1,178.73],[3490.97,3608.02,172.1,178.73,175.73,21.65],[3608.02,3609.76,175.73,21.65,175.73,21.65]],"16":[[0.0,51.84,107.88,174.89,188.1,169.24],[51.84,61.6,188.1,169.24,188.1,169.24],[61.6,63.87,188.1,169.24,185.74,171.97],[63.87,68.93,185.74,171.97,185.74,171.97],[68.93,211.15,185.74,171.97,42.96,126.92],[211.15,216.1,42.96,126.92,42.96,126.92],[216.1,366.32,42.96,126.92,189.39,52.02],[366.32,366.49,189.39,52.02,189.39,52.02],[366.49,443.87,189.39,52.02,198.94,151.64],[443.87,444.27,198.94,151.64,198.94,151.64],[444.27,563.95,198.94,151.64,54.14,31.57],[563.95,565.61,54.14,31.57,54.14,31.57],[565.61,637.44,54.14,31.57,179.43,47.88],[637.44,647.17,179.43,47.88,179.43,47.88],[647.17,718.36,179.43,47.88,126.73,33.76],[718.36,720.31,126.73,33.76,126.73,33.76],[720.31,887.03,126.73,33.76,74.81,147.55],[887.03,892.59,74.81,147.55,74.81,147.55],[892.59,909.59,74.81,147.55,94.34,147.19],[909.59,914.49,94.34,147.19,94.34,147.19],[914.49,935.11,94.34,147.19,116.35,171.63],[935.11,939.53,116.35,171.63,116.35,171.63],[939.53,982.45,116.35,171.63,179.08,118.74],[982.45,992.04,179.08,118.74,179.08,118.74],[992.04,1104.51,179.08,118.74,129.11,12.69],[1104.51,1112.46,129.11,12.69,129.11,12.69],[1112.46,1175.34,129.11,12.69,149.74,60.22],[1175.34,1176.66,149.74,60.22,149.74,60.22],[1176.66,1253.11,149.74,60.22,98.37,108.18],[1253.11,1260.9,98.37,108.18,98.37,108.18],[1260.9,1315.82,98.37,108.18,14.54,100.28],[1315.82,1319.76,14.54,100.28,14.54,100.28],[1319.76,1432.35,14.54,100.28,140.69,155.7],[1432.35,1434.04,140.69,155.7,140.69,155.7],[1434.04,1536.36,140.69,155.7,62.75,79.23],[1536.36,1545.61,62.75,79.23,62.75,79.23],[1545.61,1633.41,62.75,79.23,40.32,171.66],[1633.41,1642.85,40.32,171.66,40.32,171.66],[1642.85,1741.23,40.32,171.66,185.65,42.66],[1741.23,1742.46,185.65,42.66,185.65,42.66],[1742.46,1779.95,185.65,42.66,196.91,115.66],[1779.95,1781.6,196.91,115.66,196.91,115.66],[1781.6,1805.79,196.91,115.66,165.15,119.12],[1805.79,1810.78,165.15,119.12,165.15,119.12],[1810.78,1939.5,165.15,119.12,4.32,145.01],[1939.5,1948.75,4.32,145.01,4.32,145.01],[1948.75,2049.03,4.32,145.01,94.78,141.35],[2049.03,2053.76,94.78,141.35,94.78,141.35],[2053.76,2155.11,94.78,141.35,106.42,1.92],[2155.11,2158.83,106.42,1.92,106.42,1.92],[2158.83,2184.81,106.42,1.92,94.38,20.06],[2184.81,2193.6,94.38,20.06,94.38,20.06],[2193.6,2350.83,94.38,20.06,177.65,121.24],[2350.83,2356.93,177.65,121.24,177.65,121.24],[2356.93,2381.28,177.65,121.24,164.42,163.1],[2381.28,2388.72,164.42,163.1,164.42,163.1],[2388.72,2417.21,164.42,163.1,145.48,127.72],[2417.21,2420.3,145.48,127.72,145.48,127.72],[2420.3,2570.63,145.48,127.72,20.11,21.24],[2570.63,2574.51,20.11,21.24,20.11,21.24],[2574.51,2679.8,20.11,21.24,166.43,158.17],[2679.8,2681.24,166.43,158.17,166.43,158.17],[2681.24,2794.64,166.43,158.17,55.27,153.6],[2794.64,2799.0,55.27,153.6,55.27,153.6],[2799.0,2849.15,55.27,153.6,3.71,161.29],[2849.15,2856.61,3.71,161.29,3.71,161.29],[2856.61,2898.3,3.71,161.29,60.44,173.13],[2898.3,2901.22,60.44,173.13,60.44,173.13],[2901.22,2909.52,60.44,173.13,52.77,160.96],[2909.52,2917.29,52.77,160.96,52.77,160.96],[2917.29,3096.67,52.77,160.96,148.69,198.5],[3096.67,3101.54,148.69,198.5,148.69,198.5],[3101.54,3290.92,148.69,198.5,50.54,170.5],[3290.92,3292.73,50.54,170.5,50.54,170.5],[3292.73,3369.32,50.54,170.5,84.02,89.43],[3369.32,3377.14,84.02,89.43,84.02,89.43],[3377.14,3391.23,84.02,89.43,70.23,109.01],[3391.23,3397.17,70.23,109.01,70.23,109.01],[3397.17,3516.83,70.23,109.01,162.77,26.37],[3516.83,3522.92,162.77,26.37,162.77,26.37],[3522.92,3599.1,162.77,26.37,59.69,99.29],[3599.1,3599.55,59.69,99.29,59.69,99.29],[3599.55,3793.39,59.69,99.29,159.46,21.02],[3793.39,3800.59,159.46,21.02,159.46,21.02]],"18":[[0.0,132.15,18.75,170.62,79.16,24.5],[132.15,136.7,79.16,24.5,79.16,24.5],[136.7,156.7,79.16,24.5,58.66,42.44],[156.7,158.15,58.66,42.44,58.66,42.44],[158.15,173.44,58.66,42.44,58.48,58.32],[173.44,176.4,58.48,58.32,58.48,58.32],[176.4,283.54,58.48,58.32,17.89,16.77],[283.54,291.95,17.89,16.77,17.89,16.77],[291.95,358.5,17.89,16.77,78.77,122.52],[358.5,361.96,78.77,122.52,78.77,122.52],[361.96,382.27,78.77,122.52,82.24,144.21],[382.27,392.21,82.24,144.21,82.24,144.21],[392.21,471.06,82.24,144.21,121.25,44.48],[471.06,476.13,121.25,44.48,121.25,44.48],[476.13,605.34,121.25,44.48,161.78,121.37],[605.34,614.96,161.78,121.37,161.78,121.37],[614.96,638.24,161.78,121.37,131.05,98.19],[638.24,642.89,131.05,98.19,131.05,98.19],[642.89,834.09,131.05,98.19,185.61,193.4],[834.09,842.14,185.61,193.4,185.61,193.4],[842.14,1022.65,185.61,193.4,48.86,55.14],[1022.65,1027.18,48.86,55.14,48.86,55.14],[1027.18,1091.17,48.86,55.14,88.99,146.87],[1091.17,1092.51,88.99,146.87,88.99,146.87],[1092.51,1138.7,88.99,146.87,68.28,83.62],[1138.7,1143.18,68.28,83.62,68.28,83.62],[1143.18,1248.87,68.28,83.62,26.07,16.59],[1248.87,1252.04,26.07,16.59,26.07,16.59],[1252.04,1265.85,26.07,16.59,38.23,14.14],[1265.85,1275.29,38.23,14.14,38.23,14.14],[1275.29,1346.17,38.23,14.14,10.24,117.46],[1346.17,1351.45,10.24,117.46,10.24,117.46],[1351.45,1476.8,10.24,117.46,22.29,3.95],[1476.8,1479.51,22.29,3.95,22.29,3.95],[1479.51,1677.67,22.29,3.95,113.62,189.45],[1677.67,1684.73,113.62,189.45,113.62,189.45],[1684.73,1773.04,113.62,189.45,169.64,33.29],[1773.04,1773.64,169.64,33.29,169.64,33.29],[1773.64,2168.87,169.64,33.29,2.67,191.68],[2168.87,2175.24,2.67,191.68,2.67,191.68],[2175.24,2212.81,2.67,191.68,49.99,163.54],[2212.81,2213.87,49.99,163.54,49.99,163.54],[2213.87,2242.23,49.99,163.54,84.53,184.67],[2242.23,2244.91,84.53,184.67,84.53,184.67],[2244.91,2297.39,84.53,184.67,146.07,138.62],[2297.39,2306.39,146.07,138.62,146.07,138.62],[2306.39,2377.67,146.07,138.62,154.72,16.67],[2377.67,2380.76,154.72,16.67,154.72,16.67],[2380.76,2556.13,154.72,16.67,34.69,170.32],[2556.13,2557.95,34.69,170.32,34.69,170.32],[2557.95,2780.12,34.69,170.32,147.99,99.88],[2780.12,2782.13,147.99,99.88,147.99,99.88],[2782.13,3078.94,147.99,99.88,9.69,44.47],[3078.94,3079.15,9.69,44.47,9.69,44.47],[3079.15,3113.78,9.69,44.47,4.84,21.68],[3113.78,3118.96,4.84,21.68,4.84,21.68],[3118.96,3178.76,4.84,21.68,40.79,7.54],[3178.76,3181.5,40.79,7.54,40.79,7.54],[3181.5,3250.04,40.79,7.54,129.83,12.59],[3250.04,3251.84,129.83,12.59,129.83,12.59],[3251.84,3294.33,129.83,12.59,47.73,11.46],[3294.33,3295.06,47.73,11.46,47.73,11.46],[3295.06,3396.75,47.73,11.46,144.81,14.97],[3396.75,3405.56,144.81,14.97,144.81,14.97],[3405.56,3632.82,144.81,14.97,65.32,161.68],[3632.82,3641.83,65.32,161.68,65.32,161.68]],"20":[[0.0,97.8,129.94,151.96,133.1,60.15],[97.8,102.5,133.1,60.15,133.1,60.15],[102.5,146.59,133.1,60.15,96.54,126.99],[146.59,151.44,96.54,126.99,96.54,126.99],[151.44,319.2,96.54,126.99,80.93,24.16],[319.2,319.69,80.93,24.16,80.93,24.16],[319.69,506.71,80.93,24.16,18.27,114.72],[506.71,508.87,18.27,114.72,18.27,114.72],[508.87,580.2,18.27,114.72,65.57,121.18],[580.2,587.81,65.57,121.18,65.57,121.18],[587.81,757.04,65.57,121.18,105.16,37.12],[757.04,758.67,105.16,37.12,105.16,37.12],[758.67,868.48,105.16,37.12,180.18,107.77],[868.48,868.85,180.18,107.77,180.18,107.77],[868.85,902.84,180.18,107.77,173.96,77.87],[902.84,911.02,173.96,77.87,173.96,77.87],[911.02,999.13,173.96,77.87,59.57,135.19],[999.13,999.75,59.57,135.19,59.57,135.19],[999.75,1020.24,59.57,135.19,34.27,136.86],[1020.24,1023.97,34.27,136.86,34.27,136.86],[1023.97,1128.08,34.27,136.86,119.32,108.29],[1128.08,1134.16,119.32,108.29,119.32,108.29],[1134.16,1194.35,119.32,108.29,61.05,73.98],[1194.35,1195.43,61.05,73.98,61.05,73.98],[1195.43,1337.2,61.05,73.98,177.33,110.64],[1337.2,1343.66,177.33,110.64,177.33,110.64],[1343.66,1459.31,177.33,110.64,13.87,92.29],[1459.31,1464.23,13.87,92.29,13.87,92.29],[1464.23,1572.53,13.87,92.29,176.71,24.96],[1572.53,1576.13,176.71,24.96,176.71,24.96],[1576.13,1654.03,176.71,24.96,84.48,44.88],[1654.03,1658.47,84.48,44.88,84.48,44.88],[1658.47,1665.2,84.48,44.88,78.17,50.93],[1665.2,1668.73,78.17,50.93,78.17,50.93],[1668.73,1747.53,78.17,50.93,82.37,192.21],[1747.53,1756.28,82.37,192.21,82.37,192.21],[1756.28,1863.19,82.37,192.21,196.31,112.12],[1863.19,1872.18,196.31,112.12,196.31,112.12],[1872.18,1936.81,196.31,112.12,160.45,83.69],[1936.81,1938.06,160.45,83.69,160.45,83.69],[1938.06,1994.14,160.45,83.69,194.69,21.47],[1994.14,1999.0,194.69,21.47,194.69,21.47],[1999.0,2108.44,194.69,21.47,120.55,91.07],[2108.44,2111.32,120.55,91.07,120.55,91.07],[2111.32,2119.58,120.55,91.07,119.02,78.5],[2119.58,2121.04,119.02,78.5,119.02,78.5],[2121.04,2219.64,119.02,78.5,36.01,68.4],[2219.64,2227.03,36.01,68.4,36.01,68.4],[2227.03,2257.54,36.01,68.4,94.62,69.3],[2257.54,2260.09,94.62,69.3,94.62,69.3],[2260.09,2423.0,94.62,69.3,28.43,139.49],[2423.0,2428.57,28.43,139.49,28.43,139.49],[2428.57,2537.78,28.43,139.49,169.78,51.41],[2537.78,2547.61,169.78,51.41,169.78,51.41],[2547.61,2631.65,169.78,51.41,94.27,115.29],[2631.65,2632.03,94.27,115.29,94.27,115.29],[2632.03,2685.35,94.27,115.29,33.32,98.98],[2685.35,2693.87,33.32,98.98,33.32,98.98],[2693.87,2758.46,33.32,98.98,151.39,133.5],[2758.46,2767.89,151.39,133.5,151.39,133.5],[2767.89,2818.54,151.39,133.5,198.8,164.8],[2818.54,2822.84,198.8,164.8,198.8,164.8],[2822.84,3048.72,198.8,164.8,42.57,192.52],[3048.72,3056.11,42.57,192.52,42.57,192.52],[3056.11,3302.99,42.57,192.52,185.72,64.87],[3302.99,3306.68,185.72,64.87,185.72,64.87],[3306.68,3587.85,185.72,64.87,34.58,33.51],[3587.85,3588.14,34.58,33.51,34.58,33.51],[3588.14,3671.52,34.58,33.51,3.63,193.03],[3671.52,3674.35,3.63,193.03,3.63,193.03]],"29":[[0.0,152.06,188.84,93.2,2.09,60.73],[152.06,159.22,2.09,60.73,2.09,60.73],[159.22,340.04,2.09,60.73,173.62,101.36],[340.04,349.75,173.62,101.36,173.62,101.36],[349.75,426.35,173.62,101.36,113.4,6.45],[426.35,431.66,113.4,6.45,113.4,6.45],[431.66,671.99,113.4,6.45,66.85,144.02],[671.99,672.9,66.85,144.02,66.85,144.02],[672.9,790.67,66.85,144.02,192.83,24.47],[790.67,793.57,192.83,24.47,192.83,24.47],[793.57,828.11,192.83,24.47,141.34,56.75],[828.11,836.01,141.34,56.75,141.34,56.75],[836.01,931.66,141.34,56.75,197.52,158.37],[931.66,933.82,197.52,158.37,197.52,158.37],[933.82,1168.97,197.52,158.37,13.84,105.68],[1168.97,1172.35,13.84,105.68,13.84,105.68],[1172.35,1196.02,13.84,105.68,40.84,94.71],[1196.02,1198.3,40.84,94.71,40.84,94.71],[1198.3,1261.25,40.84,94.71,159.56,93.82],[1261.25,1262.4,159.56,93.82,159.56,93.82],[1262.4,1380.47,159.56,93.82,49.18,4.23],[1380.47,1385.27,49.18,4.23,49.18,4.23],[1385.27,1482.46,49.18,4.23,126.83,44.85],[1482.46,1488.89,126.83,44.85,126.83,44.85],[1488.89,1597.78,126.83,44.85,33.65,7.96],[1597.78,1598.11,33.65,7.96,33.65,7.96],[1598.11,1800.44,33.65,7.96,64.14,177.6],[1800.44,1802.82,64.14,177.6,64.14,177.6],[1802.82,1825.02,64.14,177.6,52.06,138.05],[1825.02,1831.88,52.06,138.05,52.06,138.05],[1831.88,1954.65,52.06,138.05,62.64,61.04],[1954.65,1957.51,62.64,61.04,62.64,61.04],[1957.51,1989.66,62.64,61.04,29.68,79.47],[1989.66,1990.32,29.68,79.47,29.68,79.47],[1990.32,2073.72,29.68,79.47,54.61,179.89],[2073.72,2076.9,54.61,179.89,54.61,179.89],[2076.9,2086.45,54.61,179.89,63.9,189.12],[2086.45,2092.24,63.9,189.12,63.9,189.12],[2092.24,2140.14,63.9,189.12,40.17,108.97],[2140.14,2141.25,40.17,108.97,40.17,108.97],[2141.25,2202.7,40.17,108.97,94.4,109.32],[2202.7,2210.67,94.4,109.32,94.4,109.32],[2210.67,2284.7,94.4,109.32,14.48,199.61],[2284.7,2293.78,14.48,199.61,14.48,199.61],[2293.78,2361.68,14.48,199.61,34.18,87.47],[2361.68,2364.87,34.18,87.47,34.18,87.47],[2364.87,2396.34,34.18,87.47,28.5,139.04],[2396.34,2396.45,28.5,139.04,28.5,139.04],[2396.45,2482.01,28.5,139.04,146.05,17.31],[2482.01,2482.39,146.05,17.31,146.05,17.31],[2482.39,2513.63,146.05,17.31,134.25,70.77],[2513.63,2516.94,134.25,70.77,134.25,70.77],[2516.94,2549.8,134.25,70.77,86.78,35.17],[2549.8,2559.63,86.78,35.17,86.78,35.17],[2559.63,2614.77,86.78,35.17,93.66,120.87],[2614.77,2617.97,93.66,120.87,93.66,120.87],[2617.97,2748.8,93.66,120.87,155.31,31.05],[2748.8,2749.11,155.31,31.05,155.31,31.05],[2749.11,2848.75,155.31,31.05,89.84,53.3],[2848.75,2852.41,89.84,53.3,89.84,53.3],[2852.41,2888.07,89.84,53.3,44.79,80.99],[2888.07,2892.73,44.79,80.99,44.79,80.99],[2892.73,3117.81,44.79,80.99,179.11,175.52],[3117.81,3126.36,179.11,175.52,179.11,175.52],[3126.36,3144.26,179.11,175.52,145.25,169.42],[3144.26,3148.93,145.25,169.42,145.25,169.42],[3148.93,3186.7,145.25,169.42,71.51,163.7],[3186.7,3191.81,71.51,163.7,71.51,163.7],[3191.81,3432.39,71.51,163.7,194.54,118.47],[3432.39,3436.14,194.54,118.47,194.54,118.47],[3436.14,3513.39,194.54,118.47,150.1,116.63],[3513.39,3518.09,150.1,116.63,150.1,116.63],[3518.09,3629.54,150.1,116.63,33.03,108.48],[3629.54,3634.37,33.03,108.48,33.03,108.48]]};
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
