<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>grid_n500_mob30_s2_t15</title>
    <randomseed>2</randomseed>
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
      <identifier>v_scale_fix_paced_ack_root</identifier>
      <description>v_scale_fix_paced_ack_root</description>
      <source>/home/user/project/build/variants/v_scale_fix_paced_ack_root/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_scale_fix_paced_ack_root.cooja</commands>
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
          <pos x="408.25" y="408.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>1</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_scale_fix_paced_ack_cli0</identifier>
      <description>v_scale_fix_paced_ack_cli0</description>
      <source>/home/user/project/build/variants/v_scale_fix_paced_ack_cli0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_scale_fix_paced_ack_cli0.cooja</commands>
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
          <pos x="578.14" y="68.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.36" y="646.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.40" y="102.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.49" y="782.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.22" y="374.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.44" y="68.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.43" y="136.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.05" y="476.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.39" y="306.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.20" y="816.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.14" y="102.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.23" y="476.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.17" y="68.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.33" y="442.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>32</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.10" y="34.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>33</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.09" y="748.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>34</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.19" y="340.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>35</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.22" y="782.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>38</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.43" y="170.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>39</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.02" y="408.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>40</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.16" y="408.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>41</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.05" y="680.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>42</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.46" y="646.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>43</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.20" y="544.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>48</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.36" y="204.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>50</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.15" y="170.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>52</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.23" y="476.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>54</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.30" y="102.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>55</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.45" y="612.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>56</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.14" y="748.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>57</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.18" y="374.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>58</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.49" y="204.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>59</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.10" y="374.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>60</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.18" y="340.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>61</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.39" y="340.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>64</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.27" y="476.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>66</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.45" y="748.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>67</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.07" y="204.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>68</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.29" y="612.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>70</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.27" y="374.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>71</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.23" y="136.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>72</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.03" y="408.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>74</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.24" y="476.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>77</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.20" y="544.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>79</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.14" y="442.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>80</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.16" y="204.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>81</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.44" y="374.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>82</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.02" y="272.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>84</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.26" y="680.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>86</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.24" y="442.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>88</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.02" y="476.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>89</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.22" y="272.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>90</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.09" y="680.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>91</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.03" y="612.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>92</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.47" y="204.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>93</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.24" y="782.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>94</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.25" y="306.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>95</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.17" y="578.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>96</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.29" y="306.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>97</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.32" y="238.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>98</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.06" y="340.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>99</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.28" y="646.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>100</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.15" y="170.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>104</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.41" y="408.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>106</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.02" y="340.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>107</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.11" y="714.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>108</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.29" y="136.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>109</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.01" y="544.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>110</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.01" y="544.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>111</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.40" y="204.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>112</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.37" y="714.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>113</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.36" y="272.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>114</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.29" y="170.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>115</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.35" y="714.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>116</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.08" y="578.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>118</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.18" y="578.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>119</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.18" y="544.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>120</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.01" y="204.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>121</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.31" y="238.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>123</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.46" y="204.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>125</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.07" y="476.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>126</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.36" y="170.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>127</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.26" y="306.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>128</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.23" y="510.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>129</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.10" y="102.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>130</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.37" y="646.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>132</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.27" y="646.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>133</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.16" y="68.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>134</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.17" y="136.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>135</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.35" y="578.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>136</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.46" y="170.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>137</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.30" y="408.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>140</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.45" y="442.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>141</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.13" y="612.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>142</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.46" y="68.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>143</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.18" y="578.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>144</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.02" y="646.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>145</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.26" y="238.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>146</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.10" y="408.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>147</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.28" y="578.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>148</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.18" y="340.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>149</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.18" y="544.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>151</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.05" y="782.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>154</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.37" y="714.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>159</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.19" y="510.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>160</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.31" y="340.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>161</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.38" y="34.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>163</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.48" y="136.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>164</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.47" y="714.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>167</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.18" y="272.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>170</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.01" y="136.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>172</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.27" y="714.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>173</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.19" y="374.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>174</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.21" y="476.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>176</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.41" y="238.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>177</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.11" y="272.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>178</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.20" y="578.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>179</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.02" y="170.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>180</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.20" y="680.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>181</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.06" y="646.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>183</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.27" y="136.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>184</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.34" y="102.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>185</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.21" y="306.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>186</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.43" y="408.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>187</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.20" y="408.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>188</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.06" y="238.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>189</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.02" y="34.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>190</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.25" y="510.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>191</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.40" y="578.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>192</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.36" y="442.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>195</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.39" y="578.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>197</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.36" y="408.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>198</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.05" y="374.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>199</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.44" y="612.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>200</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.09" y="476.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>202</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.02" y="476.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>205</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.32" y="68.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>206</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.49" y="544.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>207</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.19" y="612.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>208</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.34" y="442.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>209</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.44" y="748.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>210</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.27" y="544.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>211</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.22" y="68.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>213</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.47" y="408.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>214</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.10" y="204.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>215</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.08" y="612.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>216</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.12" y="510.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>217</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.11" y="612.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>218</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.05" y="510.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>220</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.10" y="374.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>221</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.03" y="136.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>223</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.09" y="442.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>225</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.46" y="204.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>228</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.05" y="34.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>230</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.25" y="612.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>231</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.44" y="476.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>232</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.26" y="612.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>233</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.27" y="306.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>234</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.45" y="442.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>236</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.01" y="374.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>238</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.24" y="578.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>240</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.23" y="544.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>241</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.29" y="782.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>242</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.45" y="680.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>244</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.20" y="306.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>245</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.14" y="476.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>246</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.44" y="476.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>247</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.02" y="646.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>248</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.21" y="272.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>249</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.16" y="340.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>250</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.45" y="714.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>252</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.09" y="510.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>253</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.40" y="306.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>254</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.07" y="544.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>255</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.39" y="340.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>257</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.01" y="68.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>258</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.23" y="476.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>259</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.08" y="782.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>260</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.01" y="238.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>261</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.05" y="612.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>264</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.19" y="680.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>266</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.06" y="34.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>268</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.47" y="748.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>269</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.10" y="272.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>271</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.45" y="408.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>272</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.31" y="102.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>274</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.23" y="646.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>276</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.14" y="272.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>278</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.39" y="0.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>279</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.43" y="102.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>280</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.49" y="442.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>281</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.02" y="102.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>282</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.24" y="714.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>283</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.47" y="306.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>284</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.04" y="476.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>285</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.16" y="476.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>286</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.04" y="374.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>287</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.04" y="204.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>288</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.12" y="170.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>290</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.49" y="714.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>291</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.17" y="646.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>293</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.25" y="408.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>294</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.02" y="102.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>295</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.07" y="476.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>297</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.02" y="272.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>298</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.26" y="306.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>299</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.36" y="136.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>300</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.30" y="0.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>301</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.07" y="102.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>302</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.39" y="442.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>304</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.32" y="510.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>307</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.19" y="408.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>308</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.30" y="714.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>309</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.05" y="816.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>310</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.22" y="340.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>313</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.32" y="136.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>314</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.26" y="612.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>315</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.27" y="544.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>316</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.39" y="782.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>317</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.00" y="34.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>318</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.44" y="204.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>319</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.26" y="782.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>320</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.46" y="102.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>321</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.43" y="238.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>324</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.05" y="238.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>325</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.40" y="136.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>326</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.12" y="374.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>327</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.20" y="408.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>329</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.41" y="680.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>330</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.11" y="306.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>331</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.49" y="136.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>332</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.19" y="476.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>333</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.29" y="646.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>334</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.28" y="204.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>335</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.30" y="748.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>336</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.05" y="272.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>338</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.21" y="782.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>339</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.05" y="476.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>340</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.46" y="170.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>341</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.04" y="0.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>342</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.40" y="374.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>344</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.22" y="442.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>345</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.42" y="0.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>346</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.40" y="136.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>347</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.09" y="748.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>348</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.17" y="714.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>349</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.41" y="306.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>351</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.08" y="306.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>352</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.47" y="340.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>353</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.39" y="510.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>355</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.41" y="170.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>356</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.14" y="374.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>357</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.48" y="170.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>360</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.03" y="68.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>361</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.35" y="238.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>362</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.09" y="170.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>363</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.05" y="578.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>364</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.35" y="646.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>365</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.45" y="442.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>366</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.41" y="170.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>367</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.17" y="544.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>368</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.49" y="748.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>369</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.11" y="238.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>370</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.22" y="578.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>371</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.31" y="340.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>372</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.46" y="680.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>375</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.37" y="34.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>376</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.37" y="442.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>378</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.48" y="714.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>379</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.28" y="272.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>382</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.37" y="646.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>384</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.08" y="442.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>385</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.24" y="442.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>387</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.10" y="306.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>388</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.18" y="102.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>389</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.20" y="680.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>390</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.23" y="340.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>391</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.03" y="748.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>393</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.31" y="204.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>394</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.36" y="0.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>397</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.46" y="442.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>400</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.16" y="136.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>401</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.49" y="578.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>404</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.07" y="0.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>406</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.31" y="272.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>408</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.03" y="238.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>409</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.20" y="374.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>410</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.38" y="102.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>411</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.21" y="544.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>413</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.41" y="102.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>414</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.39" y="374.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>416</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.23" y="510.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>418</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.20" y="680.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>420</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.33" y="816.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>421</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.34" y="136.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>423</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.13" y="680.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>425</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.29" y="272.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>427</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.40" y="204.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>428</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.19" y="510.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>430</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.33" y="680.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>432</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.24" y="510.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>433</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.34" y="0.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>435</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.11" y="578.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>436</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.25" y="374.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>438</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.35" y="340.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>440</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.41" y="68.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>441</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.09" y="476.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>443</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.16" y="544.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>444</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.32" y="374.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>445</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.01" y="68.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>446</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.10" y="646.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>447</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.01" y="272.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>449</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.20" y="510.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>450</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.26" y="476.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>451</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.02" y="578.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>452</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.32" y="408.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>453</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.02" y="578.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>455</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.26" y="612.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>456</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.09" y="68.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>457</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.25" y="272.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>459</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.28" y="646.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>461</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.33" y="238.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>462</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.29" y="782.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>463</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.11" y="34.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>464</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.03" y="612.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>465</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.19" y="238.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>466</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.11" y="204.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>467</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.14" y="442.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>468</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.19" y="204.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>469</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.06" y="510.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>470</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.02" y="68.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>471</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.42" y="544.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>472</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.30" y="102.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>473</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.32" y="340.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>474</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.43" y="238.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>476</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.08" y="102.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>478</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.36" y="612.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>479</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.11" y="340.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>480</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.24" y="442.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>481</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.46" y="272.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>482</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.10" y="510.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>484</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.29" y="544.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>486</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.49" y="578.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>487</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.03" y="34.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>489</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.49" y="204.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>490</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.42" y="204.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>493</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.42" y="238.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>495</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.14" y="68.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>499</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.46" y="612.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>500</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_scale_fix_paced_ack_cli1</identifier>
      <description>v_scale_fix_paced_ack_cli1</description>
      <source>/home/user/project/build/variants/v_scale_fix_paced_ack_cli1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_scale_fix_paced_ack_cli1.cooja</commands>
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
          <pos x="204.03" y="306.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.27" y="340.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.21" y="340.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.14" y="170.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.26" y="340.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.30" y="544.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.19" y="510.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.38" y="510.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.19" y="272.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.13" y="238.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.00" y="238.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.16" y="272.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.03" y="646.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.10" y="510.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.41" y="374.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.38" y="272.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.37" y="306.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>31</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.40" y="612.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>36</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.10" y="306.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>37</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.32" y="204.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>44</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.44" y="476.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>45</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.10" y="714.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>46</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.38" y="306.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>47</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.22" y="748.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>49</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.38" y="340.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>51</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.48" y="408.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>53</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.37" y="680.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>62</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.27" y="680.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>63</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.10" y="238.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>65</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.29" y="714.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>69</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.46" y="306.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>73</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.07" y="748.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>75</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.31" y="306.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>76</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.14" y="748.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>78</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.34" y="34.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>83</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.16" y="272.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>85</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.40" y="306.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>87</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.22" y="680.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>101</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.27" y="170.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>102</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.20" y="680.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>103</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.04" y="238.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>105</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.44" y="782.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>117</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.06" y="340.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>122</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.32" y="680.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>124</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.21" y="340.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>131</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.17" y="510.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>138</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.32" y="510.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>139</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.42" y="408.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>150</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.07" y="544.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>152</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.36" y="816.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>153</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.26" y="136.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>155</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.32" y="306.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>156</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.06" y="34.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>157</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.35" y="578.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>158</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.44" y="68.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>162</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.42" y="408.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>165</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.04" y="306.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>166</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.31" y="476.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>168</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.37" y="204.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>169</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.08" y="646.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>171</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.26" y="476.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>175</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.29" y="544.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>182</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.30" y="782.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>193</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.28" y="442.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>194</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.01" y="340.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>196</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.37" y="646.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>201</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.09" y="408.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>203</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.11" y="510.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>204</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.26" y="646.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>212</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.28" y="170.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>219</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.49" y="272.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>222</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.40" y="748.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>224</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.47" y="442.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>226</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.48" y="374.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>227</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.27" y="442.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>229</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.05" y="816.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>235</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.11" y="612.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>237</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.44" y="510.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>239</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.37" y="612.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>243</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.34" y="170.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>251</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.06" y="170.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>256</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.23" y="748.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>262</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.48" y="34.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>263</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.28" y="782.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>265</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.40" y="578.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>267</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.48" y="816.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>270</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.06" y="578.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>273</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.09" y="510.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>275</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.47" y="646.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>277</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.03" y="748.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>289</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.40" y="544.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>292</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.12" y="306.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>296</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.45" y="0.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>303</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.38" y="442.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>305</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.16" y="238.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>306</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.06" y="102.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>311</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.06" y="136.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>312</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.41" y="612.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>322</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.44" y="340.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>323</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.15" y="136.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>328</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.50" y="408.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>337</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.38" y="34.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>343</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.40" y="646.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>350</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.31" y="204.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>354</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.02" y="544.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>358</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.16" y="408.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>359</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.16" y="170.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>373</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.40" y="714.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>374</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.48" y="612.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>377</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.39" y="374.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>380</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.48" y="816.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>381</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.28" y="170.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>383</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.46" y="510.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>386</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.46" y="442.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>392</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.02" y="238.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>395</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.17" y="374.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>396</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.08" y="442.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>398</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.10" y="544.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>399</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.29" y="680.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>402</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.22" y="238.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>403</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.41" y="510.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>405</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.24" y="510.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>407</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.07" y="272.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>412</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.41" y="204.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>415</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.33" y="612.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>417</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.43" y="578.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>419</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.07" y="578.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>422</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.46" y="714.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>424</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.36" y="544.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>426</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.38" y="442.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>429</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.27" y="238.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>431</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.09" y="408.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>434</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.17" y="714.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>437</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.09" y="476.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>439</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.11" y="408.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>442</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.46" y="374.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>448</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.25" y="374.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>454</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.37" y="374.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>458</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.19" y="612.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>460</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.34" y="680.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>475</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.09" y="578.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>477</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.14" y="272.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>483</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.21" y="408.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>485</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.09" y="374.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>488</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.10" y="136.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>491</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.11" y="170.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>492</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.39" y="544.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>494</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.18" y="340.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>496</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.07" y="272.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>497</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.16" y="306.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>498</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(900000, log.testOK());
var S = {"3":[[0.0,289.65,204.03,306.43,509.71,237.4],[289.65,292.88,509.71,237.4,509.71,237.4],[292.88,1051.89,509.71,237.4,192.09,460.26],[1051.89,1058.68,192.09,460.26,192.09,460.26]],"5":[[0.0,805.67,0.27,340.32,599.95,125.1],[805.67,806.11,599.95,125.1,599.95,125.1],[806.11,1250.3,599.95,125.1,72.77,711.92],[1250.3,1250.69,72.77,711.92,72.77,711.92]],"6":[[0.0,343.16,816.21,340.06,803.64,569.14],[343.16,347.12,803.64,569.14,803.64,569.14],[347.12,490.74,803.64,569.14,773.03,680.82],[490.74,491.6,773.03,680.82,773.03,680.82],[491.6,1232.25,773.03,680.82,379.04,359.3],[1232.25,1241.91,379.04,359.3,379.04,359.3]],"8":[[0.0,639.31,476.14,170.12,766.64,562.75],[639.31,646.21,766.64,562.75,766.64,562.75],[646.21,1151.3,766.64,562.75,402.81,503.57],[1151.3,1157.25,402.81,503.57,402.81,503.57]],"9":[[0.0,246.04,612.26,340.12,508.86,603.59],[246.04,251.26,508.86,603.59,508.86,603.59],[251.26,439.8,508.86,603.59,262.26,733.38],[439.8,449.69,262.26,733.38,262.26,733.38],[449.69,1131.45,262.26,733.38,495.56,472.58],[1131.45,1132.69,495.56,472.58,495.56,472.58]],"11":[[0.0,467.45,204.3,544.12,701.98,664.28],[467.45,470.71,701.98,664.28,701.98,664.28],[470.71,803.04,701.98,664.28,407.48,477.3],[803.04,810.41,407.48,477.3,407.48,477.3],[810.41,1103.85,407.48,477.3,665.59,282.54],[1103.85,1109.1,665.59,282.54,665.59,282.54]],"13":[[0.0,86.37,714.19,510.1,611.15,634.52],[86.37,88.63,611.15,634.52,611.15,634.52],[88.63,457.89,611.15,634.52,177.45,96.87],[457.89,465.24,177.45,96.87,177.45,96.87],[465.24,1452.18,177.45,96.87,12.37,783.98],[1452.18,1457.44,12.37,783.98,12.37,783.98]],"14":[[0.0,675.6,136.38,510.35,765.35,30.91],[675.6,681.41,765.35,30.91,765.35,30.91],[681.41,1332.39,765.35,30.91,553.86,476.56],[1332.39,1342.03,553.86,476.56,553.86,476.56]],"15":[[0.0,829.58,578.19,272.07,804.12,687.45],[829.58,835.44,804.12,687.45,804.12,687.45],[835.44,989.55,804.12,687.45,543.52,633.27],[989.55,997.57,543.52,633.27,543.52,633.27]],"19":[[0.0,258.59,544.13,238.04,615.02,31.71],[258.59,260.85,615.02,31.71,615.02,31.71],[260.85,730.66,615.02,31.71,337.1,552.25],[730.66,734.8,337.1,552.25,337.1,552.25],[734.8,1129.64,337.1,552.25,43.01,650.24],[1129.64,1136.08,43.01,650.24,43.01,650.24]],"22":[[0.0,1041.37,782.0,238.17,40.25,148.83],[1041.37,1045.1,40.25,148.83,40.25,148.83]],"23":[[0.0,438.78,646.16,272.16,316.93,805.32],[438.78,440.26,316.93,805.32,316.93,805.32],[440.26,1177.96,316.93,805.32,35.94,248.83],[1177.96,1181.8,35.94,248.83,35.94,248.83]],"24":[[0.0,33.34,272.03,646.2,269.8,605.85],[33.34,39.12,269.8,605.85,269.8,605.85],[39.12,721.57,269.8,605.85,221.36,36.22],[721.57,724.82,221.36,36.22,221.36,36.22],[724.82,1143.22,221.36,36.22,124.6,473.2],[1143.22,1149.68,124.6,473.2,124.6,473.2]],"26":[[0.0,423.2,782.1,510.21,425.92,766.74],[423.2,426.81,425.92,766.74,425.92,766.74],[426.81,723.36,425.92,766.74,188.79,264.28],[723.36,732.01,188.79,264.28,188.79,264.28],[732.01,1677.45,188.79,264.28,590.45,648.36],[1677.45,1686.78,590.45,648.36,590.45,648.36]],"28":[[0.0,1006.89,408.41,374.03,66.55,812.71],[1006.89,1015.47,66.55,812.71,66.55,812.71]],"30":[[0.0,1217.72,204.38,272.21,725.87,756.25],[1217.72,1222.56,725.87,756.25,725.87,756.25]],"31":[[0.0,303.52,68.37,306.16,65.24,84.55],[303.52,308.32,65.24,84.55,65.24,84.55],[308.32,1239.01,65.24,84.55,233.82,621.39],[1239.01,1240.65,233.82,621.39,233.82,621.39]],"36":[[0.0,438.72,68.4,612.3,558.3,26.22],[438.72,439.88,558.3,26.22,558.3,26.22],[439.88,1015.55,558.3,26.22,664.88,610.97],[1015.55,1020.19,664.88,610.97,664.88,610.97]],"37":[[0.0,381.89,0.1,306.49,657.56,0.94],[381.89,384.96,657.56,0.94,657.56,0.94],[384.96,1242.04,657.56,0.94,208.32,629.01],[1242.04,1247.52,208.32,629.01,208.32,629.01]],"44":[[0.0,478.05,102.32,204.44,10.37,485.77],[478.05,481.7,10.37,485.77,10.37,485.77],[481.7,1053.12,10.37,485.77,805.33,339.37],[1053.12,1053.91,805.33,339.37,805.33,339.37]],"45":[[0.0,293.87,170.44,476.45,648.5,597.31],[293.87,301.45,648.5,597.31,648.5,597.31],[301.45,612.34,648.5,597.31,781.94,158.12],[612.34,618.42,781.94,158.12,781.94,158.12],[618.42,882.01,781.94,158.12,728.86,404.41],[882.01,883.51,728.86,404.41,728.86,404.41],[883.51,1255.33,728.86,404.41,477.3,186.19],[1255.33,1263.21,477.3,186.19,477.3,186.19]],"46":[[0.0,465.3,476.1,714.16,591.14,188.56],[465.3,467.29,591.14,188.56,591.14,188.56],[467.29,641.89,591.14,188.56,490.76,448.21],[641.89,651.01,490.76,448.21,490.76,448.21],[651.01,1040.78,490.76,448.21,110.52,425.92],[1040.78,1044.72,110.52,425.92,110.52,425.92]],"47":[[0.0,297.27,34.38,306.44,78.59,784.76],[297.27,298.7,78.59,784.76,78.59,784.76],[298.7,330.06,78.59,784.76,95.8,766.27],[330.06,336.14,95.8,766.27,95.8,766.27],[336.14,967.59,95.8,766.27,591.34,809.21],[967.59,973.13,591.34,809.21,591.34,809.21]],"49":[[0.0,758.61,170.22,748.07,718.87,434.85],[758.61,763.45,718.87,434.85,718.87,434.85],[763.45,1203.94,718.87,434.85,800.24,156.65],[1203.94,1213.09,800.24,156.65,800.24,156.65]],"51":[[0.0,223.73,544.38,340.11,720.86,721.6],[223.73,230.57,720.86,721.6,720.86,721.6],[230.57,440.1,720.86,721.6,429.97,423.82],[440.1,449.44,429.97,423.82,429.97,423.82],[449.44,729.49,429.97,423.82,131.83,38.42],[729.49,730.96,131.83,38.42,131.83,38.42],[730.96,1075.19,131.83,38.42,685.71,354.82],[1075.19,1084.69,685.71,354.82,685.71,354.82]],"53":[[0.0,130.65,544.48,408.02,701.0,610.99],[130.65,134.57,701.0,610.99,701.0,610.99],[134.57,584.9,701.0,610.99,175.15,771.74],[584.9,591.55,175.15,771.74,175.15,771.74],[591.55,1097.8,175.15,771.74,244.62,410.86],[1097.8,1107.24,244.62,410.86,244.62,410.86]],"62":[[0.0,296.56,476.37,680.11,471.35,255.12],[296.56,302.32,471.35,255.12,471.35,255.12],[302.32,454.07,471.35,255.12,187.62,334.96],[454.07,461.98,187.62,334.96,187.62,334.96],[461.98,1112.73,187.62,334.96,2.19,659.08],[1112.73,1122.13,2.19,659.08,2.19,659.08]],"63":[[0.0,609.39,714.27,680.36,755.47,36.03],[609.39,614.6,755.47,36.03,755.47,36.03],[614.6,1631.96,755.47,36.03,83.08,122.1],[1631.96,1638.09,83.08,122.1,83.08,122.1]],"65":[[0.0,420.13,476.1,238.04,750.73,316.04],[420.13,424.18,750.73,316.04,750.73,316.04],[424.18,825.33,750.73,316.04,65.82,10.28],[825.33,833.45,65.82,10.28,65.82,10.28],[833.45,1344.36,65.82,10.28,308.75,484.46],[1344.36,1345.71,308.75,484.46,308.75,484.46]],"69":[[0.0,401.35,510.29,714.29,511.6,370.41],[401.35,405.86,511.6,370.41,511.6,370.41],[405.86,1330.65,511.6,370.41,15.3,58.12],[1330.65,1331.82,15.3,58.12,15.3,58.12]],"73":[[0.0,613.34,578.46,306.12,212.27,581.09],[613.34,617.95,212.27,581.09,212.27,581.09],[617.95,1674.14,212.27,581.09,533.02,49.86],[1674.14,1677.88,533.02,49.86,533.02,49.86]],"75":[[0.0,518.81,272.07,748.15,483.32,103.0],[518.81,524.08,483.32,103.0,483.32,103.0],[524.08,793.55,483.32,103.0,453.34,246.18],[793.55,800.02,453.34,246.18,453.34,246.18],[800.02,1194.91,453.34,246.18,45.64,325.27],[1194.91,1201.0,45.64,325.27,45.64,325.27]],"76":[[0.0,284.4,374.31,306.49,26.09,239.41],[284.4,293.1,26.09,239.41,26.09,239.41],[293.1,1390.69,26.09,239.41,668.75,206.89],[1390.69,1399.93,668.75,206.89,668.75,206.89]],"78":[[0.0,744.59,442.14,748.0,661.77,242.05],[744.59,753.26,661.77,242.05,661.77,242.05],[753.26,884.72,661.77,242.05,691.59,156.14],[884.72,887.36,691.59,156.14,691.59,156.14],[887.36,1158.48,691.59,156.14,226.54,38.0],[1158.48,1168.26,226.54,38.0,226.54,38.0]],"83":[[0.0,431.44,374.34,34.34,723.79,333.85],[431.44,436.5,723.79,333.85,723.79,333.85],[436.5,762.26,723.79,333.85,237.95,23.12],[762.26,770.41,237.95,23.12,237.95,23.12],[770.41,966.45,237.95,23.12,135.19,343.71],[966.45,971.28,135.19,343.71,135.19,343.71]],"85":[[0.0,738.13,136.16,272.27,746.42,263.2],[738.13,745.19,746.42,263.2,746.42,263.2],[745.19,1206.55,746.42,263.2,95.46,433.48],[1206.55,1211.01,95.46,433.48,95.46,433.48]],"87":[[0.0,96.74,102.4,306.24,120.06,119.42],[96.74,102.06,120.06,119.42,120.06,119.42],[102.06,721.63,120.06,119.42,446.65,135.01],[721.63,730.61,446.65,135.01,446.65,135.01],[730.61,891.1,446.65,135.01,661.82,347.34],[891.1,900.21,661.82,347.34,661.82,347.34]],"101":[[0.0,335.16,646.22,680.45,247.1,292.2],[335.16,338.65,247.1,292.2,247.1,292.2],[338.65,567.43,247.1,292.2,409.05,346.28],[567.43,574.07,409.05,346.28,409.05,346.28],[574.07,704.2,409.05,346.28,549.11,192.16],[704.2,704.36,549.11,192.16,549.11,192.16],[704.36,903.41,549.11,192.16,718.24,80.79],[903.41,904.93,718.24,80.79,718.24,80.79]],"102":[[0.0,370.47,408.27,170.12,104.76,685.63],[370.47,380.07,104.76,685.63,104.76,685.63],[380.07,1019.29,104.76,685.63,311.4,429.31],[1019.29,1022.09,311.4,429.31,311.4,429.31]],"103":[[0.0,332.64,442.2,680.48,802.78,479.63],[332.64,341.6,802.78,479.63,802.78,479.63],[341.6,647.21,802.78,479.63,759.09,323.43],[647.21,654.34,759.09,323.43,759.09,323.43],[654.34,1032.93,759.09,323.43,812.87,43.87],[1032.93,1038.99,812.87,43.87,812.87,43.87]],"105":[[0.0,314.08,748.04,238.35,252.79,204.77],[314.08,323.57,252.79,204.77,252.79,204.77],[323.57,847.38,252.79,204.77,660.92,588.44],[847.38,852.05,660.92,588.44,660.92,588.44],[852.05,1093.4,660.92,588.44,372.37,704.45],[1093.4,1093.53,372.37,704.45,372.37,704.45]],"117":[[0.0,347.06,442.44,782.11,301.66,225.3],[347.06,351.95,301.66,225.3,301.66,225.3],[351.95,1025.19,301.66,225.3,618.67,96.58],[1025.19,1029.34,618.67,96.58,618.67,96.58]],"122":[[0.0,563.53,68.06,340.08,463.96,196.35],[563.53,563.9,463.96,196.35,463.96,196.35],[563.9,747.41,463.96,196.35,144.85,298.72],[747.41,751.99,144.85,298.72,144.85,298.72],[751.99,1273.86,144.85,298.72,640.35,147.69],[1273.86,1283.34,640.35,147.69,640.35,147.69]],"124":[[0.0,79.09,680.32,680.21,672.37,792.5],[79.09,87.26,672.37,792.5,672.37,792.5],[87.26,369.72,672.37,792.5,283.47,441.05],[369.72,373.38,283.47,441.05,283.47,441.05],[373.38,1207.35,283.47,441.05,760.93,354.66],[1207.35,1210.19,760.93,354.66,760.93,354.66]],"131":[[0.0,796.5,102.21,340.26,652.24,231.75],[796.5,799.57,652.24,231.75,652.24,231.75],[799.57,1102.56,652.24,231.75,249.31,293.87],[1102.56,1103.69,249.31,293.87,249.31,293.87]],"138":[[0.0,266.6,544.17,510.22,277.97,682.17],[266.6,267.52,277.97,682.17,277.97,682.17],[267.52,550.72,277.97,682.17,577.77,304.75],[550.72,556.59,577.77,304.75,577.77,304.75],[556.59,706.11,577.77,304.75,437.27,269.1],[706.11,711.32,437.27,269.1,437.27,269.1],[711.32,854.94,437.27,269.1,362.14,100.28],[854.94,861.95,362.14,100.28,362.14,100.28],[861.95,1351.71,362.14,100.28,12.83,803.25],[1351.71,1353.32,12.83,803.25,12.83,803.25]],"139":[[0.0,212.26,680.32,510.21,314.46,551.21],[212.26,221.71,314.46,551.21,314.46,551.21],[221.71,609.5,314.46,551.21,23.93,683.48],[609.5,611.49,23.93,683.48,23.93,683.48],[611.49,767.1,23.93,683.48,67.96,407.8],[767.1,771.67,67.96,407.8,67.96,407.8],[771.67,1035.69,67.96,407.8,575.1,352.4],[1035.69,1043.61,575.1,352.4,575.1,352.4]],"150":[[0.0,293.55,136.42,408.09,113.01,576.88],[293.55,294.84,113.01,576.88,113.01,576.88],[294.84,492.72,113.01,576.88,274.12,394.46],[492.72,495.81,274.12,394.46,274.12,394.46],[495.81,985.5,274.12,394.46,606.34,169.86],[985.5,995.45,606.34,169.86,606.34,169.86]],"152":[[0.0,378.35,102.07,544.47,744.7,763.21],[378.35,378.88,744.7,763.21,744.7,763.21],[378.88,654.21,744.7,763.21,588.79,442.76],[654.21,655.04,588.79,442.76,588.79,442.76],[655.04,1146.65,588.79,442.76,23.56,97.14],[1146.65,1148.55,23.56,97.14,23.56,97.14]],"153":[[0.0,1001.06,408.36,816.1,455.04,249.89],[1001.06,1009.6,455.04,249.89,455.04,249.89]],"155":[[0.0,252.85,680.26,136.32,285.83,317.48],[252.85,254.89,285.83,317.48,285.83,317.48],[254.89,324.91,285.83,317.48,263.05,448.08],[324.91,331.57,263.05,448.08,263.05,448.08],[331.57,405.1,263.05,448.08,365.58,515.05],[405.1,411.49,365.58,515.05,365.58,515.05],[411.49,461.99,365.58,515.05,454.48,556.76],[461.99,471.03,454.48,556.76,454.48,556.76],[471.03,807.51,454.48,556.76,220.16,191.36],[807.51,808.4,220.16,191.36,220.16,191.36],[808.4,939.42,220.16,191.36,386.06,6.39],[939.42,947.36,386.06,6.39,386.06,6.39]],"156":[[0.0,352.12,340.32,306.15,392.51,771.33],[352.12,354.49,392.51,771.33,392.51,771.33],[354.49,826.44,392.51,771.33,8.12,221.18],[826.44,831.3,8.12,221.18,8.12,221.18],[831.3,1184.31,8.12,221.18,31.35,802.09],[1184.31,1188.98,31.35,802.09,31.35,802.09]],"157":[[0.0,631.26,408.06,34.23,525.78,520.53],[631.26,631.42,525.78,520.53,525.78,520.53],[631.42,848.95,525.78,520.53,95.25,551.83],[848.95,856.67,95.25,551.83,95.25,551.83],[856.67,1228.79,95.25,551.83,361.44,470.36],[1228.79,1231.72,361.44,470.36,361.44,470.36]],"158":[[0.0,189.83,714.35,578.22,627.4,271.86],[189.83,195.68,627.4,271.86,627.4,271.86],[195.68,218.33,627.4,271.86,604.73,299.58],[218.33,221.6,604.73,299.58,604.73,299.58],[221.6,694.22,604.73,299.58,60.34,99.2],[694.22,700.95,60.34,99.2,60.34,99.2],[700.95,1071.95,60.34,99.2,197.59,258.96],[1071.95,1079.22,197.59,258.96,197.59,258.96]],"162":[[0.0,65.14,340.44,68.24,263.03,27.71],[65.14,68.45,263.03,27.71,263.03,27.71],[68.45,160.99,263.03,27.71,323.76,53.89],[160.99,169.45,323.76,53.89,323.76,53.89],[169.45,718.1,323.76,53.89,448.28,508.21],[718.1,722.1,448.28,508.21,448.28,508.21],[722.1,1015.34,448.28,508.21,164.55,678.86],[1015.34,1021.65,164.55,678.86,164.55,678.86]],"165":[[0.0,42.75,272.42,408.11,258.63,386.18],[42.75,46.7,258.63,386.18,258.63,386.18],[46.7,870.84,258.63,386.18,806.85,517.99],[870.84,878.83,806.85,517.99,806.85,517.99],[878.83,1201.38,806.85,517.99,304.65,249.24],[1201.38,1203.39,304.65,249.24,304.65,249.24]],"166":[[0.0,392.32,612.04,306.45,477.31,121.02],[392.32,401.1,477.31,121.02,477.31,121.02],[401.1,797.04,477.31,121.02,183.1,643.64],[797.04,798.45,183.1,643.64,183.1,643.64],[798.45,1126.8,183.1,643.64,549.45,459.19],[1126.8,1132.8,549.45,459.19,549.45,459.19]],"168":[[0.0,175.57,612.31,476.4,522.87,614.35],[175.57,185.1,522.87,614.35,522.87,614.35],[185.1,377.9,522.87,614.35,740.86,413.18],[377.9,379.41,740.86,413.18,740.86,413.18],[379.41,758.5,740.86,413.18,1.0,325.7],[758.5,765.81,1.0,325.7,1.0,325.7],[765.81,1655.41,1.0,325.7,659.91,130.47],[1655.41,1664.34,659.91,130.47,659.91,130.47]],"169":[[0.0,402.28,646.37,204.44,429.0,430.83],[402.28,408.89,429.0,430.83,429.0,430.83],[408.89,545.69,429.0,430.83,198.6,295.61],[545.69,550.77,198.6,295.61,198.6,295.61],[550.77,689.24,198.6,295.61,299.1,70.82],[689.24,693.61,299.1,70.82,299.1,70.82],[693.61,962.86,299.1,70.82,138.8,579.03],[962.86,969.11,138.8,579.03,138.8,579.03]],"171":[[0.0,947.84,510.08,646.09,73.89,199.96],[947.84,954.61,73.89,199.96,73.89,199.96]],"175":[[0.0,241.51,408.26,476.12,678.77,219.7],[241.51,246.84,678.77,219.7,678.77,219.7],[246.84,405.87,678.77,219.7,437.75,62.89],[405.87,411.74,437.75,62.89,437.75,62.89],[411.74,606.45,437.75,62.89,522.36,310.15],[606.45,609.69,522.36,310.15,522.36,310.15],[609.69,1162.62,522.36,310.15,647.31,741.14],[1162.62,1168.89,647.31,741.14,647.31,741.14]],"182":[[0.0,410.96,170.29,544.07,480.36,44.29],[410.96,417.08,480.36,44.29,480.36,44.29],[417.08,897.42,480.36,44.29,23.5,18.97],[897.42,899.96,23.5,18.97,23.5,18.97],[899.96,1577.74,23.5,18.97,33.88,559.91],[1577.74,1582.08,33.88,559.91,33.88,559.91]],"193":[[0.0,503.75,340.3,782.26,530.99,70.69],[503.75,505.12,530.99,70.69,530.99,70.69],[505.12,909.33,530.99,70.69,307.77,681.01],[909.33,914.18,307.77,681.01,307.77,681.01]],"194":[[0.0,261.36,510.28,442.28,707.42,752.56],[261.36,265.7,707.42,752.56,707.42,752.56],[265.7,1819.78,707.42,752.56,31.47,142.85],[1819.78,1823.08,31.47,142.85,31.47,142.85]],"196":[[0.0,1119.3,782.01,340.43,112.62,334.22],[1119.3,1122.5,112.62,334.22,112.62,334.22]],"201":[[0.0,390.26,680.37,646.48,315.03,685.04],[390.26,394.68,315.03,685.04,315.03,685.04],[394.68,740.07,315.03,685.04,539.0,175.45],[740.07,740.69,539.0,175.45,539.0,175.45],[740.69,1067.85,539.0,175.45,31.88,516.48],[1067.85,1075.52,31.88,516.48,31.88,516.48]],"203":[[0.0,144.7,714.09,408.31,669.09,317.81],[144.7,146.05,669.09,317.81,669.09,317.81],[146.05,593.32,669.09,317.81,241.72,489.32],[593.32,598.84,241.72,489.32,241.72,489.32],[598.84,863.6,241.72,489.32,402.72,230.55],[863.6,864.92,402.72,230.55,402.72,230.55],[864.92,1406.27,402.72,230.55,421.12,635.81],[1406.27,1412.68,421.12,635.81,421.12,635.81]],"204":[[0.0,227.35,510.11,510.33,748.62,444.51],[227.35,235.42,748.62,444.51,748.62,444.51],[235.42,286.95,748.62,444.51,717.93,363.94],[286.95,296.19,717.93,363.94,717.93,363.94],[296.19,1210.44,717.93,363.94,13.96,665.89],[1210.44,1214.05,13.96,665.89,13.96,665.89]],"212":[[0.0,75.81,374.26,646.2,403.41,529.07],[75.81,81.69,403.41,529.07,403.41,529.07],[81.69,519.68,403.41,529.07,502.93,5.92],[519.68,522.74,502.93,5.92,502.93,5.92],[522.74,724.89,502.93,5.92,225.2,275.04],[724.89,728.8,225.2,275.04,225.2,275.04],[728.8,1294.95,225.2,275.04,564.67,597.17],[1294.95,1300.5,564.67,597.17,564.67,597.17]],"219":[[0.0,495.37,748.28,170.23,196.64,635.83],[495.37,499.23,196.64,635.83,196.64,635.83],[499.23,838.24,196.64,635.83,77.47,287.76],[838.24,842.54,77.47,287.76,77.47,287.76],[842.54,1114.54,77.47,287.76,500.85,8.86],[1114.54,1123.5,500.85,8.86,500.85,8.86]],"222":[[0.0,247.67,306.49,272.19,172.22,495.81],[247.67,254.07,172.22,495.81,172.22,495.81],[254.07,459.13,172.22,495.81,60.37,168.18],[459.13,465.25,60.37,168.18,60.37,168.18],[465.25,1154.03,60.37,168.18,369.26,701.33],[1154.03,1159.23,369.26,701.33,369.26,701.33]],"224":[[0.0,371.86,408.4,748.03,654.39,358.28],[371.86,381.81,654.39,358.28,654.39,358.28],[381.81,459.76,654.39,358.28,629.06,501.49],[459.76,468.73,629.06,501.49,629.06,501.49],[468.73,1021.16,629.06,501.49,386.34,321.74],[1021.16,1023.21,386.34,321.74,386.34,321.74]],"226":[[0.0,214.43,102.47,442.22,454.76,453.99],[214.43,220.61,454.76,453.99,454.76,453.99],[220.61,516.5,454.76,453.99,575.69,245.3],[516.5,524.57,575.69,245.3,575.69,245.3],[524.57,784.9,575.69,245.3,276.75,388.66],[784.9,787.21,276.75,388.66,276.75,388.66],[787.21,1069.49,276.75,388.66,551.02,332.83],[1069.49,1074.83,551.02,332.83,551.02,332.83]],"227":[[0.0,60.8,272.48,374.5,276.63,434.69],[60.8,70.45,276.63,434.69,276.63,434.69],[70.45,522.38,276.63,434.69,103.06,212.31],[522.38,530.99,103.06,212.31,103.06,212.31],[530.99,680.42,103.06,212.31,109.93,15.1],[680.42,686.99,109.93,15.1,109.93,15.1],[686.99,1095.55,109.93,15.1,24.78,795.93],[1095.55,1104.31,24.78,795.93,24.78,795.93]],"229":[[0.0,224.44,0.27,442.49,63.32,650.96],[224.44,233.14,63.32,650.96,63.32,650.96],[233.14,420.17,63.32,650.96,199.16,619.29],[420.17,429.81,199.16,619.29,199.16,619.29],[429.81,832.37,199.16,619.29,477.64,800.15],[832.37,840.94,477.64,800.15,477.64,800.15],[840.94,1187.23,477.64,800.15,777.4,681.14],[1187.23,1195.5,777.4,681.14,777.4,681.14]],"235":[[0.0,204.35,340.05,816.01,349.71,614.07],[204.35,205.0,349.71,614.07,349.71,614.07],[205.0,377.59,349.71,614.07,419.98,752.09],[377.59,387.09,419.98,752.09,419.98,752.09],[387.09,721.66,419.98,752.09,79.98,304.43],[721.66,726.5,79.98,304.43,79.98,304.43],[726.5,1529.69,79.98,304.43,666.9,531.61],[1529.69,1537.48,666.9,531.61,666.9,531.61]],"237":[[0.0,464.25,272.11,612.22,796.78,806.79],[464.25,473.82,796.78,806.79,796.78,806.79],[473.82,1380.06,796.78,806.79,17.95,145.6],[1380.06,1389.16,17.95,145.6,17.95,145.6]],"239":[[0.0,521.36,476.44,510.22,304.93,734.12],[521.36,524.72,304.93,734.12,304.93,734.12],[524.72,712.13,304.93,734.12,83.76,711.63],[712.13,717.12,83.76,711.63,83.76,711.63],[717.12,935.15,83.76,711.63,204.54,305.42],[935.15,944.65,204.54,305.42,204.54,305.42]],"243":[[0.0,99.93,374.37,612.25,462.34,691.55],[99.93,105.61,462.34,691.55,462.34,691.55],[105.61,249.01,462.34,691.55,311.8,546.8],[249.01,255.16,311.8,546.8,311.8,546.8],[255.16,682.7,311.8,546.8,134.87,56.32],[682.7,685.14,134.87,56.32,134.87,56.32],[685.14,1850.33,134.87,56.32,759.29,354.66],[1850.33,1858.6,759.29,354.66,759.29,354.66]],"251":[[0.0,53.69,272.34,170.27,184.67,219.43],[53.69,61.17,184.67,219.43,184.67,219.43],[61.17,1135.62,184.67,219.43,743.68,613.3],[1135.62,1142.64,743.68,613.3,743.68,613.3]],"256":[[0.0,253.01,646.06,170.14,213.58,247.07],[253.01,261.52,213.58,247.07,213.58,247.07],[261.52,390.16,213.58,247.07,301.3,276.18],[390.16,395.33,301.3,276.18,301.3,276.18],[395.33,649.25,301.3,276.18,95.61,659.09],[649.25,656.52,95.61,659.09,95.61,659.09],[656.52,798.89,95.61,659.09,306.88,504.57],[798.89,803.54,306.88,504.57,306.88,504.57],[803.54,1018.24,306.88,504.57,696.43,576.14],[1018.24,1028.01,696.43,576.14,696.43,576.14]],"262":[[0.0,581.82,340.23,748.31,772.29,784.55],[581.82,589.8,772.29,784.55,772.29,784.55],[589.8,1077.27,772.29,784.55,151.18,267.38],[1077.27,1082.37,151.18,267.38,151.18,267.38]],"263":[[0.0,610.65,442.48,34.35,657.84,451.15],[610.65,614.73,657.84,451.15,657.84,451.15],[614.73,725.46,657.84,451.15,783.08,297.82],[725.46,729.66,783.08,297.82,783.08,297.82],[729.66,1695.15,783.08,297.82,96.32,95.58],[1695.15,1701.27,96.32,95.58,96.32,95.58]],"265":[[0.0,150.55,374.28,782.28,86.71,738.99],[150.55,159.98,86.71,738.99,86.71,738.99],[159.98,218.71,86.71,738.99,140.56,757.07],[218.71,226.36,140.56,757.07,140.56,757.07],[226.36,1029.61,140.56,757.07,308.82,227.18],[1029.61,1037.89,308.82,227.18,308.82,227.18]],"267":[[0.0,297.96,170.4,578.15,717.26,601.14],[297.96,299.05,717.26,601.14,717.26,601.14],[299.05,616.6,717.26,601.14,342.8,546.53],[616.6,626.27,342.8,546.53,342.8,546.53],[626.27,954.66,342.8,546.53,679.41,47.8],[954.66,960.65,679.41,47.8,679.41,47.8]],"270":[[0.0,14.58,306.48,816.36,284.62,809.98],[14.58,16.11,284.62,809.98,284.62,809.98],[16.11,328.47,284.62,809.98,650.07,539.23],[328.47,330.89,650.07,539.23,650.07,539.23],[330.89,555.21,650.07,539.23,596.01,414.42],[555.21,558.73,596.01,414.42,596.01,414.42],[558.73,936.21,596.01,414.42,5.61,441.63],[936.21,941.97,5.61,441.63,5.61,441.63]],"273":[[0.0,215.8,374.06,578.42,325.14,236.69],[215.8,222.54,325.14,236.69,325.14,236.69],[222.54,432.76,325.14,236.69,487.64,181.46],[432.76,438.19,487.64,181.46,487.64,181.46],[438.19,632.01,487.64,181.46,416.21,483.99],[632.01,639.3,416.21,483.99,416.21,483.99],[639.3,1054.0,416.21,483.99,129.35,514.77],[1054.0,1058.91,129.35,514.77,129.35,514.77]],"275":[[0.0,90.36,612.09,510.1,435.25,544.23],[90.36,99.64,435.25,544.23,435.25,544.23],[99.64,579.86,435.25,544.23,127.57,141.76],[579.86,580.16,127.57,141.76,127.57,141.76],[580.16,695.62,127.57,141.76,286.27,177.78],[695.62,697.89,286.27,177.78,286.27,177.78],[697.89,747.04,286.27,177.78,375.94,155.88],[747.04,753.07,375.94,155.88,375.94,155.88],[753.07,1021.82,375.94,155.88,741.95,391.83],[1021.82,1028.55,741.95,391.83,741.95,391.83]],"277":[[0.0,460.16,136.47,646.44,379.55,118.53],[460.16,461.87,379.55,118.53,379.55,118.53],[461.87,709.06,379.55,118.53,736.79,262.51],[709.06,716.84,736.79,262.51,736.79,262.51],[716.84,787.61,736.79,262.51,613.62,295.84],[787.61,787.98,613.62,295.84,613.62,295.84],[787.98,1202.36,613.62,295.84,543.3,525.48],[1202.36,1210.45,543.3,525.48,543.3,525.48]],"289":[[0.0,401.86,612.03,748.09,10.39,478.05],[401.86,409.06,10.39,478.05,10.39,478.05],[409.06,593.54,10.39,478.05,30.8,752.12],[593.54,594.54,30.8,752.12,30.8,752.12],[594.54,1013.05,30.8,752.12,563.74,635.21],[1013.05,1017.91,563.74,635.21,563.74,635.21]],"292":[[0.0,384.36,374.4,544.43,271.83,30.91],[384.36,386.03,271.83,30.91,271.83,30.91],[386.03,971.43,271.83,30.91,551.23,538.93],[971.43,980.32,551.23,538.93,551.23,538.93]],"296":[[0.0,235.08,442.12,306.45,645.49,436.41],[235.08,240.96,645.49,436.41,645.49,436.41],[240.96,555.92,645.49,436.41,177.12,151.56],[555.92,556.72,177.12,151.56,177.12,151.56],[556.72,640.64,177.12,151.56,205.6,215.95],[640.64,641.54,205.6,215.95,205.6,215.95],[641.54,737.06,205.6,215.95,355.6,154.25],[737.06,742.19,355.6,154.25,355.6,154.25],[742.19,976.16,355.6,154.25,470.52,604.8],[976.16,985.79,470.52,604.8,470.52,604.8]],"303":[[0.0,52.73,442.45,0.12,473.55,42.99],[52.73,54.95,473.55,42.99,473.55,42.99],[54.95,863.0,473.55,42.99,21.63,650.39],[863.0,872.23,21.63,650.39,21.63,650.39],[872.23,1905.14,21.63,650.39,550.56,14.38],[1905.14,1906.38,550.56,14.38,550.56,14.38]],"305":[[0.0,503.12,374.38,442.41,414.8,26.47],[503.12,507.62,414.8,26.47,414.8,26.47],[507.62,1117.61,414.8,26.47,412.69,647.96],[1117.61,1119.95,412.69,647.96,412.69,647.96]],"306":[[0.0,479.52,306.16,238.27,771.77,653.99],[479.52,488.06,771.77,653.99,771.77,653.99],[488.06,761.12,771.77,653.99,418.76,319.48],[761.12,761.12,418.76,319.48,418.76,319.48],[761.12,1062.44,418.76,319.48,546.89,681.9],[1062.44,1064.73,546.89,681.9,546.89,681.9]],"311":[[0.0,326.03,408.06,102.3,226.28,585.21],[326.03,327.61,226.28,585.21,226.28,585.21],[327.61,648.64,226.28,585.21,39.15,219.13],[648.64,652.55,39.15,219.13,39.15,219.13],[652.55,738.67,39.15,219.13,151.13,247.97],[738.67,747.41,151.13,247.97,151.13,247.97],[747.41,1362.4,151.13,247.97,651.99,481.52],[1362.4,1368.25,651.99,481.52,651.99,481.52]],"312":[[0.0,162.31,272.06,136.02,500.44,189.26],[162.31,166.77,500.44,189.26,500.44,189.26],[166.77,992.9,500.44,189.26,292.9,626.78],[992.9,1000.62,292.9,626.78,292.9,626.78]],"322":[[0.0,427.33,612.41,612.17,811.12,744.39],[427.33,436.03,811.12,744.39,811.12,744.39],[436.03,666.96,811.12,744.39,702.56,487.49],[666.96,671.07,702.56,487.49,702.56,487.49],[671.07,851.3,702.56,487.49,570.26,566.45],[851.3,852.25,570.26,566.45,570.26,566.45],[852.25,1130.93,570.26,566.45,386.31,70.36],[1130.93,1140.3,386.31,70.36,386.31,70.36]],"323":[[0.0,166.99,170.44,340.48,365.99,553.39],[166.99,170.92,365.99,553.39,365.99,553.39],[170.92,287.01,365.99,553.39,291.69,571.99],[287.01,293.52,291.69,571.99,291.69,571.99],[293.52,410.07,291.69,571.99,219.38,546.44],[410.07,410.14,219.38,546.44,219.38,546.44],[410.14,763.11,219.38,546.44,728.85,167.46],[763.11,763.14,728.85,167.46,728.85,167.46],[763.14,1061.77,728.85,167.46,332.73,463.59],[1061.77,1070.68,332.73,463.59,332.73,463.59]],"328":[[0.0,523.52,170.15,136.42,118.84,785.83],[523.52,525.9,118.84,785.83,118.84,785.83],[525.9,680.03,118.84,785.83,151.88,507.61],[680.03,683.4,151.88,507.61,151.88,507.61],[683.4,1184.6,151.88,507.61,437.85,4.37],[1184.6,1194.35,437.85,4.37,437.85,4.37]],"337":[[0.0,558.22,238.5,408.45,576.93,476.71],[558.22,561.6,576.93,476.71,576.93,476.71],[561.6,835.15,576.93,476.71,152.13,247.71],[835.15,836.19,152.13,247.71,152.13,247.71],[836.19,948.13,152.13,247.71,126.51,346.77],[948.13,951.02,126.51,346.77,126.51,346.77]],"343":[[0.0,247.27,612.38,34.0,641.39,275.03],[247.27,252.11,641.39,275.03,641.39,275.03],[252.11,533.36,641.39,275.03,226.07,223.18],[533.36,540.83,226.07,223.18,226.07,223.18],[540.83,789.41,226.07,223.18,570.23,411.49],[789.41,798.85,570.23,411.49,570.23,411.49],[798.85,1196.03,570.23,411.49,24.85,199.71],[1196.03,1196.73,24.85,199.71,24.85,199.71]],"350":[[0.0,453.7,68.4,646.22,795.68,460.45],[453.7,460.21,795.68,460.45,795.68,460.45],[460.21,906.19,795.68,460.45,388.63,149.37],[906.19,910.53,388.63,149.37,388.63,149.37]],"354":[[0.0,484.07,68.31,204.46,483.1,593.0],[484.07,485.53,483.1,593.0,483.1,593.0],[485.53,1619.14,483.1,593.0,247.12,35.96],[1619.14,1619.51,247.12,35.96,247.12,35.96]],"358":[[0.0,487.88,510.02,544.32,58.19,385.74],[487.88,494.84,58.19,385.74,58.19,385.74],[494.84,1235.99,58.19,385.74,634.15,482.47],[1235.99,1236.64,634.15,482.47,634.15,482.47]],"359":[[0.0,571.25,34.16,408.23,342.95,406.86],[571.25,573.19,342.95,406.86,342.95,406.86],[573.19,700.04,342.95,406.86,189.94,475.06],[700.04,700.18,189.94,475.06,189.94,475.06],[700.18,742.19,189.94,475.06,252.96,519.44],[742.19,746.33,252.96,519.44,252.96,519.44],[746.33,1123.08,252.96,519.44,323.51,182.04],[1123.08,1124.08,323.51,182.04,323.51,182.04]],"373":[[0.0,172.53,612.16,170.19,293.77,154.43],[172.53,176.72,293.77,154.43,293.77,154.43],[176.72,418.92,293.77,154.43,646.42,439.23],[418.92,426.47,646.42,439.23,646.42,439.23],[426.47,933.88,646.42,439.23,157.89,338.89],[933.88,939.84,157.89,338.89,157.89,338.89]],"374":[[0.0,228.77,306.4,714.44,512.79,615.55],[228.77,238.7,512.79,615.55,512.79,615.55],[238.7,451.98,512.79,615.55,287.83,272.82],[451.98,459.52,287.83,272.82,287.83,272.82],[459.52,849.98,287.83,272.82,664.31,59.72],[849.98,853.43,664.31,59.72,664.31,59.72],[853.43,1211.53,664.31,59.72,81.43,187.25],[1211.53,1213.13,81.43,187.25,81.43,187.25]],"377":[[0.0,468.42,714.48,612.35,93.36,198.7],[468.42,472.03,93.36,198.7,93.36,198.7],[472.03,934.07,93.36,198.7,558.8,128.73],[934.07,941.87,558.8,128.73,558.8,128.73]],"380":[[0.0,56.13,680.39,374.17,640.57,303.93],[56.13,63.49,640.57,303.93,640.57,303.93],[63.49,579.66,640.57,303.93,506.23,28.07],[579.66,586.51,506.23,28.07,506.23,28.07],[586.51,835.3,506.23,28.07,181.33,279.36],[835.3,839.11,181.33,279.36,181.33,279.36],[839.11,1026.8,181.33,279.36,100.53,499.36],[1026.8,1027.07,100.53,499.36,100.53,499.36]],"381":[[0.0,174.91,510.48,816.33,650.95,559.62],[174.91,183.64,650.95,559.62,650.95,559.62],[183.64,426.29,650.95,559.62,656.25,775.09],[426.29,431.14,656.25,775.09,656.25,775.09],[431.14,1002.5,656.25,775.09,144.35,205.13],[1002.5,1011.82,144.35,205.13,144.35,205.13]],"383":[[0.0,335.28,442.28,170.49,33.41,11.66],[335.28,336.64,33.41,11.66,33.41,11.66],[336.64,702.15,33.41,11.66,547.32,385.31],[702.15,706.29,547.32,385.31,547.32,385.31],[706.29,725.26,547.32,385.31,547.31,355.68],[725.26,727.06,547.31,355.68,547.31,355.68],[727.06,948.39,547.31,355.68,468.2,570.96],[948.39,952.83,468.2,570.96,468.2,570.96]],"386":[[0.0,1459.29,0.46,510.21,584.5,41.72],[1459.29,1459.3,584.5,41.72,584.5,41.72]],"392":[[0.0,181.05,170.46,442.15,232.96,688.06],[181.05,190.02,232.96,688.06,232.96,688.06],[190.02,524.65,232.96,688.06,153.68,45.29],[524.65,527.56,153.68,45.29,153.68,45.29],[527.56,886.26,153.68,45.29,58.31,751.44],[886.26,891.59,58.31,751.44,58.31,751.44],[891.59,1485.23,58.31,751.44,49.41,68.99],[1485.23,1490.08,49.41,68.99,49.41,68.99]],"395":[[0.0,216.38,714.02,238.04,792.26,60.99],[216.38,218.81,792.26,60.99,792.26,60.99],[218.81,1373.37,792.26,60.99,162.34,607.94],[1373.37,1381.68,162.34,607.94,162.34,607.94]],"396":[[0.0,145.41,476.17,374.32,419.1,585.57],[145.41,152.52,419.1,585.57,419.1,585.57],[152.52,504.46,419.1,585.57,559.97,397.33],[504.46,507.11,559.97,397.33,559.97,397.33],[507.11,640.43,559.97,397.33,358.09,309.43],[640.43,650.39,358.09,309.43,358.09,309.43],[650.39,938.54,358.09,309.43,92.83,285.61],[938.54,938.71,92.83,285.61,92.83,285.61]],"398":[[0.0,156.81,782.08,442.16,627.61,484.59],[156.81,158.91,627.61,484.59,627.61,484.59],[158.91,735.15,627.61,484.59,716.37,13.57],[735.15,743.41,716.37,13.57,716.37,13.57],[743.41,1512.85,716.37,13.57,417.98,446.48],[1512.85,1514.01,417.98,446.48,417.98,446.48]],"399":[[0.0,348.88,646.1,544.42,537.71,318.88],[348.88,356.22,537.71,318.88,537.71,318.88],[356.22,548.84,537.71,318.88,617.65,542.68],[548.84,558.81,617.65,542.68,617.65,542.68],[558.81,1396.94,617.65,542.68,280.2,65.06],[1396.94,1405.11,280.2,65.06,280.2,65.06]],"402":[[0.0,296.51,170.29,680.35,270.87,186.24],[296.51,301.69,270.87,186.24,270.87,186.24],[301.69,769.96,270.87,186.24,267.95,625.59],[769.96,770.81,267.95,625.59,267.95,625.59],[770.81,1042.42,267.95,625.59,511.32,564.86],[1042.42,1045.09,511.32,564.86,511.32,564.86]],"403":[[0.0,126.84,136.22,238.29,337.52,150.94],[126.84,127.14,337.52,150.94,337.52,150.94],[127.14,463.61,337.52,150.94,29.61,662.28],[463.61,466.77,29.61,662.28,29.61,662.28],[466.77,1415.6,29.61,662.28,597.72,720.58],[1415.6,1425.54,597.72,720.58,597.72,720.58]],"405":[[0.0,16.54,34.41,510.2,7.01,504.06],[16.54,24.95,7.01,504.06,7.01,504.06],[24.95,451.31,7.01,504.06,427.19,345.59],[451.31,459.58,427.19,345.59,427.19,345.59],[459.58,737.84,427.19,345.59,299.11,581.5],[737.84,747.02,299.11,581.5,299.11,581.5],[747.02,946.45,299.11,581.5,606.89,348.05],[946.45,950.3,606.89,348.05,606.89,348.05]],"407":[[0.0,558.56,578.24,510.08,42.73,149.81],[558.56,564.65,42.73,149.81,42.73,149.81],[564.65,1016.12,42.73,149.81,763.06,322.17],[1016.12,1025.6,763.06,322.17,763.06,322.17]],"412":[[0.0,545.33,612.07,272.37,21.11,246.64],[545.33,548.26,21.11,246.64,21.11,246.64],[548.26,1176.44,21.11,246.64,351.05,480.46],[1176.44,1185.37,351.05,480.46,351.05,480.46]],"415":[[0.0,736.91,136.41,204.12,648.61,697.22],[736.91,738.13,648.61,697.22,648.61,697.22],[738.13,943.47,648.61,697.22,237.99,690.68],[943.47,946.57,237.99,690.68,237.99,690.68]],"417":[[0.0,162.78,204.33,612.39,425.39,483.59],[162.78,165.84,425.39,483.59,425.39,483.59],[165.84,1051.01,425.39,483.59,685.27,123.51],[1051.01,1057.71,685.27,123.51,685.27,123.51]],"419":[[0.0,172.7,136.43,578.3,26.32,534.28],[172.7,174.31,26.32,534.28,26.32,534.28],[174.31,423.88,26.32,534.28,128.07,382.22],[423.88,425.57,128.07,382.22,128.07,382.22],[425.57,689.08,128.07,382.22,607.0,551.81],[689.08,691.35,607.0,551.81,607.0,551.81],[691.35,763.75,607.0,551.81,731.04,504.03],[763.75,765.89,731.04,504.03,731.04,504.03],[765.89,938.58,731.04,504.03,699.62,721.41],[938.58,942.56,699.62,721.41,699.62,721.41]],"422":[[0.0,224.58,306.07,578.26,393.88,800.72],[224.58,225.6,393.88,800.72,393.88,800.72],[225.6,725.71,393.88,800.72,651.96,32.01],[725.71,732.2,651.96,32.01,651.96,32.01],[732.2,1185.4,651.96,32.01,743.21,249.64],[1185.4,1187.87,743.21,249.64,743.21,249.64]],"424":[[0.0,171.26,408.46,714.3,601.97,723.54],[171.26,177.62,601.97,723.54,601.97,723.54],[177.62,936.11,601.97,723.54,287.17,66.59],[936.11,940.01,287.17,66.59,287.17,66.59]],"426":[[0.0,518.7,0.36,544.2,670.06,361.62],[518.7,519.57,670.06,361.62,670.06,361.62],[519.57,835.86,670.06,361.62,124.29,414.56],[835.86,837.36,124.29,414.56,124.29,414.56],[837.36,951.91,124.29,414.56,163.91,558.64],[951.91,961.77,163.91,558.64,163.91,558.64]],"429":[[0.0,139.58,340.38,442.2,303.08,712.59],[139.58,143.67,303.08,712.59,303.08,712.59],[143.67,724.8,303.08,712.59,708.28,646.69],[724.8,733.92,708.28,646.69,708.28,646.69],[733.92,1076.59,708.28,646.69,96.75,626.06],[1076.59,1080.55,96.75,626.06,96.75,626.06]],"431":[[0.0,426.35,374.27,238.06,365.75,774.57],[426.35,435.86,365.75,774.57,365.75,774.57],[435.86,455.41,365.75,774.57,362.33,755.33],[455.41,463.31,362.33,755.33,362.33,755.33],[463.31,708.75,362.33,755.33,234.25,292.39],[708.75,712.8,234.25,292.39,234.25,292.39],[712.8,1116.46,234.25,292.39,574.58,684.7],[1116.46,1118.67,574.58,684.7,574.58,684.7]],"434":[[0.0,252.02,340.09,408.37,542.83,756.22],[252.02,252.79,542.83,756.22,542.83,756.22],[252.79,461.74,542.83,756.22,384.23,384.89],[461.74,466.23,384.23,384.89,384.23,384.89],[466.23,997.19,384.23,384.89,12.03,339.97],[997.19,1005.76,12.03,339.97,12.03,339.97]],"437":[[0.0,448.86,272.17,714.16,528.55,204.64],[448.86,454.87,528.55,204.64,528.55,204.64],[454.87,880.14,528.55,204.64,474.86,478.2],[880.14,880.67,474.86,478.2,474.86,478.2],[880.67,1262.45,474.86,478.2,736.28,710.99],[1262.45,1262.86,736.28,710.99,736.28,710.99]],"439":[[0.0,252.15,0.09,476.3,296.69,230.6],[252.15,262.12,296.69,230.6,296.69,230.6],[262.12,264.37,296.69,230.6,295.05,226.51],[264.37,265.85,295.05,226.51,295.05,226.51],[265.85,675.17,295.05,226.51,644.06,58.73],[675.17,681.93,644.06,58.73,644.06,58.73],[681.93,1137.83,644.06,58.73,393.73,541.65],[1137.83,1141.25,393.73,541.65,393.73,541.65]],"442":[[0.0,557.2,612.11,408.19,298.1,71.85],[557.2,561.85,298.1,71.85,298.1,71.85],[561.85,1074.89,298.1,71.85,635.49,666.52],[1074.89,1082.21,635.49,666.52,635.49,666.52]],"448":[[0.0,274.43,374.46,374.25,566.67,715.37],[274.43,278.66,566.67,715.37,566.67,715.37],[278.66,505.14,566.67,715.37,662.18,289.99],[505.14,509.37,662.18,289.99,662.18,289.99],[509.37,1526.11,662.18,289.99,79.28,798.94],[1526.11,1531.09,79.28,798.94,79.28,798.94]],"454":[[0.0,493.78,544.25,374.11,533.87,726.94],[493.78,501.92,533.87,726.94,533.87,726.94],[501.92,772.64,533.87,726.94,312.23,398.1],[772.64,776.19,312.23,398.1,312.23,398.1],[776.19,852.63,312.23,398.1,361.83,270.6],[852.63,860.45,361.83,270.6,361.83,270.6],[860.45,1243.51,361.83,270.6,679.95,795.73],[1243.51,1245.51,679.95,795.73,679.95,795.73]],"458":[[0.0,772.93,306.37,374.3,694.06,564.56],[772.93,780.93,694.06,564.56,694.06,564.56],[780.93,986.18,694.06,564.56,645.88,269.78],[986.18,991.26,645.88,269.78,645.88,269.78]],"460":[[0.0,173.52,476.19,612.25,238.72,680.84],[173.52,181.87,238.72,680.84,238.72,680.84],[181.87,600.42,238.72,680.84,327.66,188.26],[600.42,606.4,327.66,188.26,327.66,188.26],[606.4,845.16,327.66,188.26,533.89,230.82],[845.16,848.49,533.89,230.82,533.89,230.82],[848.49,1085.64,533.89,230.82,768.65,450.04],[1085.64,1089.02,768.65,450.04,768.65,450.04]],"475":[[0.0,161.34,204.34,680.41,255.45,587.0],[161.34,170.9,255.45,587.0,255.45,587.0],[170.9,521.61,255.45,587.0,509.47,171.75],[521.61,529.04,509.47,171.75,509.47,171.75],[529.04,645.63,509.47,171.75,317.41,113.19],[645.63,650.49,317.41,113.19,317.41,113.19],[650.49,927.95,317.41,113.19,781.4,160.48],[927.95,931.49,781.4,160.48,781.4,160.48]],"477":[[0.0,305.18,102.09,578.43,26.0,37.25],[305.18,311.21,26.0,37.25,26.0,37.25],[311.21,1368.5,26.0,37.25,628.41,505.45],[1368.5,1377.65,628.41,505.45,628.41,505.45]],"483":[[0.0,162.9,510.14,272.07,391.0,29.71],[162.9,170.18,391.0,29.71,391.0,29.71],[170.18,458.04,391.0,29.71,333.47,428.82],[458.04,465.41,333.47,428.82,333.47,428.82],[465.41,530.72,333.47,428.82,216.97,397.83],[530.72,534.82,216.97,397.83,216.97,397.83],[534.82,569.31,216.97,397.83,191.17,427.82],[569.31,576.52,191.17,427.82,191.17,427.82],[576.52,1326.49,191.17,427.82,815.72,629.43],[1326.49,1335.51,815.72,629.43,815.72,629.43]],"485":[[0.0,432.08,782.21,408.28,13.31,256.12],[432.08,435.54,13.31,256.12,13.31,256.12],[435.54,634.65,13.31,256.12,65.3,363.41],[634.65,640.45,65.3,363.41,65.3,363.41],[640.45,815.81,65.3,363.41,113.13,705.94],[815.81,824.69,113.13,705.94,113.13,705.94],[824.69,1360.99,113.13,705.94,604.08,302.32],[1360.99,1365.54,604.08,302.32,604.08,302.32]],"488":[[0.0,239.9,748.09,374.31,317.24,585.24],[239.9,244.07,317.24,585.24,317.24,585.24],[244.07,361.32,317.24,585.24,450.93,683.93],[361.32,371.15,450.93,683.93,450.93,683.93],[371.15,997.28,450.93,683.93,108.76,233.6],[997.28,1002.42,108.76,233.6,108.76,233.6]],"491":[[0.0,199.85,578.1,136.49,691.79,429.77],[199.85,204.54,691.79,429.77,691.79,429.77],[204.54,950.88,691.79,429.77,172.34,403.7],[950.88,953.32,172.34,403.7,172.34,403.7]],"492":[[0.0,509.28,680.11,170.09,339.8,35.85],[509.28,514.32,339.8,35.85,339.8,35.85],[514.32,755.25,339.8,35.85,646.82,273.81],[755.25,763.35,646.82,273.81,646.82,273.81],[763.35,1260.16,646.82,273.81,210.15,274.29],[1260.16,1268.66,210.15,274.29,210.15,274.29]],"494":[[0.0,271.96,306.39,544.1,83.74,776.65],[271.96,278.65,83.74,776.65,83.74,776.65],[278.65,671.52,83.74,776.65,468.83,502.42],[671.52,681.11,468.83,502.42,468.83,502.42],[681.11,987.93,468.83,502.42,129.01,455.2],[987.93,989.97,129.01,455.2,129.01,455.2]],"496":[[0.0,169.47,510.18,340.24,416.89,649.95],[169.47,173.86,416.89,649.95,416.89,649.95],[173.86,762.89,416.89,649.95,579.51,101.69],[762.89,768.59,579.51,101.69,579.51,101.69],[768.59,1313.17,579.51,101.69,458.25,726.9],[1313.17,1321.88,458.25,726.9,458.25,726.9]],"497":[[0.0,452.81,0.07,272.41,284.39,425.26],[452.81,462.04,284.39,425.26,284.39,425.26],[462.04,662.52,284.39,425.26,50.4,520.76],[662.52,671.65,50.4,520.76,50.4,520.76],[671.65,1480.04,50.4,520.76,699.06,585.87],[1480.04,1483.93,699.06,585.87,699.06,585.87]],"498":[[0.0,240.13,306.16,306.16,362.4,700.33],[240.13,249.41,362.4,700.33,362.4,700.33],[249.41,487.94,362.4,700.33,777.47,583.97],[487.94,495.81,777.47,583.97,777.47,583.97],[495.81,802.57,777.47,583.97,345.7,377.74],[802.57,804.15,345.7,377.74,345.7,377.74],[804.15,1091.83,345.7,377.74,642.16,811.25],[1091.83,1096.18,642.16,811.25,642.16,811.25]]};
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
