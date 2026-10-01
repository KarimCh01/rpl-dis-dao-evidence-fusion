#!/usr/bin/env python3
import argparse
import json
import math
import random
from pathlib import Path

PROJECT_IN_CONTAINER = "/home/user/project"
AREA = 200.0
TX_RANGE = 50.0
INTERFERENCE_RANGE = 100.0
RX_RATIO = 1.0
SPEED_MIN, SPEED_MAX = 0.5, 2.0
PAUSE_MIN, PAUSE_MAX = 0.0, 10.0

MOTE = """      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="{x:.2f}" y="{y:.2f}" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>{id}</id>
        </interface_config>
      </mote>
"""

MOTETYPE = """    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>{ident}</identifier>
      <description>{ident}</description>
      <source>{project}/build/variants/{ident}/node.c</source>
      <commands>make -s -f {project}/firmware/install.mk PREBUILT={ident}.cooja</commands>
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
{motes}    </motetype>
"""

SIM = """<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>{title}</title>
    <randomseed>{seed}</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>{tx}</transmitting_range>
      <interference_range>{intf}</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>{rx}</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
{motetypes}  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
{script}
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
"""

SCRIPT = """TIMEOUT({duration_ms}, log.testOK());
var S = {segments};
var K = {{}};
for (var i in S) {{ K[i] = 0; }}
function place(t) {{
  for (var i in S) {{
    var s = S[i];
    var j = K[i];
    while (j < s.length - 1 && t > s[j][1]) {{ j++; }}
    K[i] = j;
    var g = s[j];
    var f = g[1] > g[0] ? Math.min(1, Math.max(0, (t - g[0]) / (g[1] - g[0]))) : 1;
    sim.getMoteWithID(parseInt(i)).getInterfaces().getPosition()
       .setCoordinates(g[2] + f * (g[4] - g[2]), g[3] + f * (g[5] - g[3]), 0);
  }}
}}
var mobile = Object.keys(S).length > 0;
if (mobile) {{ GENERATE_MSG(1000, "mv"); }}
while (true) {{
  YIELD();
  if (msg.equals("mv")) {{
    place(time / 1000000.0);
    GENERATE_MSG(1000, "mv");
  }} else if (msg.startsWith("#")) {{
    log.log(time + " " + id + " " + msg + "\\n");
  }}
}}"""


def connected(points, rng):
    n = len(points)
    seen = {0}
    stack = [0]
    while stack:
        a = stack.pop()
        for b in range(n):
            if b not in seen and math.dist(points[a], points[b]) <= rng:
                seen.add(b)
                stack.append(b)
    return len(seen) == n


def place_nodes(r, n):
    while True:
        pts = [(AREA / 2, AREA / 2)]
        pts += [(r.uniform(0, AREA), r.uniform(0, AREA)) for _ in range(n - 1)]
        if connected(pts, TX_RANGE * 0.9):
            return pts


def waypoint_path(r, start, duration_s):
    segs = []
    t = 0.0
    x, y = start
    while t < duration_s:
        tx, ty = r.uniform(0, AREA), r.uniform(0, AREA)
        speed = r.uniform(SPEED_MIN, SPEED_MAX)
        travel = math.dist((x, y), (tx, ty)) / speed
        segs.append([round(t, 2), round(t + travel, 2), round(x, 2), round(y, 2),
                     round(tx, 2), round(ty, 2)])
        t += travel
        x, y = tx, ty
        pause = r.uniform(PAUSE_MIN, PAUSE_MAX)
        segs.append([round(t, 2), round(t + pause, 2), round(x, 2), round(y, 2),
                     round(x, 2), round(y, 2)])
        t += pause
    return segs


def variant_names(defense, attack_mode, dis_interval, window=10):
    w = "" if window == 10 else f"_w{window}"
    return {
        "root": f"v_root_d{defense}{w}",
        "cli0": f"v_cli_d{defense}_m0{w}",
        "cli1": f"v_cli_d{defense}_m1{w}",
        "atk": f"v_atk_a{attack_mode}_i{dis_interval}",
    }


def build(cfg):
    r = random.Random(cfg["seed"] * 1000003 + 17)
    n = cfg["nodes"]
    pts = place_nodes(r, n)
    others = list(range(2, n + 1))
    attackers = sorted(r.sample(others, cfg["attackers"])) if cfg["attackers"] else []
    n_mobile = round((n - 1) * cfg["mobile_frac"])
    mobile = sorted(r.sample(others, n_mobile)) if n_mobile else []
    duration_s = cfg["duration_min"] * 60

    segments = {}
    for mid in mobile:
        segments[str(mid)] = waypoint_path(r, pts[mid - 1], duration_s)

    v = variant_names(cfg["defense"], cfg["attack_mode"], cfg["dis_interval"],
                      cfg.get("fdm_window", 10))
    groups = {v["root"]: [1]}
    for nid in others:
        if nid in attackers:
            key = v["atk"]
        elif nid in mobile:
            key = v["cli1"]
        else:
            key = v["cli0"]
        groups.setdefault(key, []).append(nid)

    motetypes = []
    for ident, ids in groups.items():
        motes = "".join(MOTE.format(x=pts[i - 1][0], y=pts[i - 1][1], id=i) for i in ids)
        motetypes.append(MOTETYPE.format(ident=ident, project=PROJECT_IN_CONTAINER, motes=motes))

    script = SCRIPT.format(duration_ms=duration_s * 1000,
                           segments=json.dumps(segments, separators=(",", ":")))
    csc = SIM.format(title=cfg["run_id"], seed=cfg["seed"], tx=TX_RANGE,
                     intf=INTERFERENCE_RANGE, rx=cfg.get("rx_ratio", RX_RATIO), motetypes="".join(motetypes), script=script)
    meta = dict(cfg)
    meta.update({"attacker_ids": attackers, "mobile_ids": mobile,
                 "positions": {str(i + 1): [round(p[0], 2), round(p[1], 2)] for i, p in enumerate(pts)},
                 "variants": sorted(groups.keys())})
    return csc, meta


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--run-id", required=True)
    ap.add_argument("--seed", type=int, required=True)
    ap.add_argument("--nodes", type=int, default=30)
    ap.add_argument("--attackers", type=int, default=0)
    ap.add_argument("--attack-mode", type=int, default=0)
    ap.add_argument("--dis-interval", type=int, default=3)
    ap.add_argument("--defense", type=int, default=0)
    ap.add_argument("--mobile-frac", type=float, default=0.0)
    ap.add_argument("--duration-min", type=int, default=60)
    ap.add_argument("--out-dir", required=True)
    a = ap.parse_args()
    cfg = {"run_id": a.run_id, "seed": a.seed, "nodes": a.nodes, "attackers": a.attackers,
           "attack_mode": a.attack_mode, "dis_interval": a.dis_interval, "defense": a.defense,
           "mobile_frac": a.mobile_frac, "duration_min": a.duration_min}
    csc, meta = build(cfg)
    out = Path(a.out_dir)
    out.mkdir(parents=True, exist_ok=True)
    (out / "sim.csc").write_text(csc)
    (out / "meta.json").write_text(json.dumps(meta, indent=1))


if __name__ == "__main__":
    main()
