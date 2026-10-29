#!/usr/bin/env python3
import html
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
W, H = 1920, 1250
LEFT = 186
BAND_X = 46
BOX_W, BOX_H, BOX_GAP = 214, 128, 12
BAND_H, BAND_GAP, TOP = 160, 10, 90
GAP_X, GAP_W, GAP_H = 1590, 300, 150
STUDY_X, STUDY_W, STUDY_H = 1590, 300, 175

BANDS = [
    ("Foundations", "#495057", [
        ("rfc", "Winter et al., 2012", "RPL: IPv6 Routing Protocol for Low-Power and Lossy Networks (RFC 6550)"),
        ("alb", "Albinali & Azzedin, 2024", "Toward RPL attacks and mitigation taxonomy: a systematic literature review"),
        ("nis", "Nishanth & Mujeeb, 2021", "Bayesian modeling and detection of flooding DoS in wireless ad hoc networks"),
    ]),
    ("Attack impact studies", "#7048e8", [
        ("raj22", "Rajasekar & Rajkumar, 2022", "A study on the impact of the DIS flooding attack on RPL-based 6LoWPAN"),
        ("khan", "Khan et al., 2023", "Collaborative detection and prevention of Sybil attacks against RPL"),
        ("sha", "Sharma et al., 2022", "Mitigation of black hole attacks in 6LoWPAN RPL networks"),
        ("ank", "Ankam & Reddy, 2023", "Detecting flooding attacks in quantum-enabled cloud-based LLNs"),
        ("als", "Alsukayti & Alreshoodi, 2023", "RPL under simple and complex (combined) routing attacks: an experimental study"),
    ]),
    ("DIS-flooding defenses", "#c92a2a", [
        ("ver", "Verma & Ranga, 2020", "Mitigation of DIS flooding attacks in RPL-based 6LoWPAN (Secure-RPL)"),
        ("abh", "Abhinaya & Sudhakar, 2021", "A secure RPL for 6LoWPAN to mitigate DIS flooding (SRPL)"),
        ("med", "Medjek et al., 2021", "Multicast DIS attack mitigation in RPL-based IoT-LLNs (RPL-MRC)"),
        ("fdm", "Prajisha & Vasudevan, 2025", "Detection and mitigation of multicast DIS flooding attacks in RPL (DIS-FDM)"),
    ]),
    ("DAO-based attacks and defenses", "#e8590c", [
        ("pu", "Pu, 2018", "Mitigating DAO inconsistency attack in RPL-based LLNs (DTM)"),
        ("rou", "Rouissat et al., 2023", "Lightweight mitigation of a new inundation (DIO flooding) attack (DSRPL)"),
        ("imd", "Deepavathi & Mala, 2023", "IMDRPL: eliminating malicious devices using DIO and DAO messages"),
        ("lim", "Verma et al., 2024", "Li-MSD: lightweight mitigation of the DAO insider attack in RPL"),
        ("de2", "Paganraj & Chelliah, 2024", "DE2RA-RPL: DAO flooding, rank and version attacks handled by one protocol"),
    ]),
    ("Evidence-fusion, hybrid and cooperative IDS", "#1971c2", [
        ("kim", "Kim et al., 2024", "FLSec-RPL: fuzzy-logic IDS against DIO neighbor suppression"),
        ("dsat", "Rajasekar & Rajkumar, 2024", "DSAT-IDS: dissimilarity and adaptive-threshold IDS (selective forwarding)"),
        ("azz", "Azzaoui et al., 2024", "A lightweight cooperative intrusion detection system for RPL-based IoT"),
        ("gar", "Garcia Ribera et al., 2022", "An intrusion detection system for RPL-based IoT networks"),
        ("mon", "Monteiro & Granjal, 2026", "Trust-aware distributed and hybrid IDS for rank attacks in RPL"),
        ("pan", "Panda & Muthuraman, 2026", "Multiclass ML framework and simulation dataset for RPL routing attacks"),
    ]),
    ("Learning-based detection", "#0c8599", [
        ("qsec", "Sharma et al., 2023", "QSec-RPL: Q-learning detection of version number attacks in mobile RPL"),
        ("itrpl", "Dey & Ghosh, 2024", "iTRPL: trust and multi-agent reinforcement learning for RPL"),
        ("abd", "Abdulkareem et al., 2024", "Collaborative IDS with Q-learning for joint rank, wormhole and version attacks"),
        ("crr", "Haqdad et al., 2026", "CRRDS: deep reinforcement learning at the root against decreased rank attacks"),
        ("ahm", "Ahmadi & Javidan, 2026", "Federated learning and XGBoost against multiple routing attacks"),
    ]),
]
BASELINES = {"ver", "med", "fdm", "lim"}
GAPS = [
    ("g1", "Gap 1: single-vector focus",
     "No defense is evaluated against concurrent DIS flooding and DAO manipulation."),
    ("g2", "Gap 2: fixed, hand-tuned beliefs",
     "Belief values and thresholds are set by hand and never self-calibrate."),
    ("g3", "Gap 3: no accuracy evidence",
     "DIS-FDM reports no TPR/FPR and no statistical testing across runs."),
    ("g4", "Gap 4: no on-node intelligence",
     "DIS and DAO defenses use fixed or hand-tuned rules; no RPL node learns its own response to combined attacks."),
]
COLORS = {"compare": "#868e96", "review": "#b8bec4", "method": "#495057", "evidence": "#c2255c", "feeds": "#e8590c",
          "extends": "#2b8a3e", "gap": "#5f3dc4"}

boxes = {}
svg = []


def esc(s):
    return html.escape(s, quote=True)


def wrap(text, limit):
    words, lines, cur = text.split(), [], ""
    for w in words:
        if len(cur) + len(w) + 1 > limit and cur:
            lines.append(cur)
            cur = w
        else:
            cur = f"{cur} {w}".strip()
    if cur:
        lines.append(cur)
    return lines


def draw_box(key, x, y, w, h, head, body, color, fill="#ffffff", head_size=13.5, body_size=13,
             limit=28, border=1.6, tag=None):
    boxes[key] = (x, y, w, h)
    svg.append(f'<rect x="{x}" y="{y}" width="{w}" height="{h}" rx="9" fill="{fill}" '
               f'stroke="{color}" stroke-width="{border}"/>')
    svg.append(f'<rect x="{x}" y="{y}" width="7" height="{h}" rx="3" fill="{color}"/>')
    ty = y + 22
    svg.append(f'<text x="{x + 16}" y="{ty}" font-size="{head_size}" font-weight="700" '
               f'fill="#212529">{esc(head)}</text>')
    for i, line in enumerate(wrap(body, limit)):
        svg.append(f'<text x="{x + 16}" y="{ty + 20 + i * (body_size + 4)}" font-size="{body_size}" '
                   f'fill="#343a40">{esc(line)}</text>')
    if tag:
        tw = 9 + 7.4 * len(tag)
        svg.append(f'<rect x="{x + w - tw - 8}" y="{y + h - 24}" width="{tw}" height="18" rx="9" '
                   f'fill="{color}"/>')
        svg.append(f'<text x="{x + w - tw / 2 - 8}" y="{y + h - 11}" font-size="11" font-weight="700" '
                   f'fill="#ffffff" text-anchor="middle">{esc(tag)}</text>')


def anchor(key, side):
    x, y, w, h = boxes[key]
    return {"r": (x + w, y + h / 2), "l": (x, y + h / 2), "t": (x + w / 2, y),
            "b": (x + w / 2, y + h)}[side]


def edge(p, q, kind, curve="h", dash=False, width=2.2, via=None):
    color = COLORS[kind]
    (x1, y1), (x2, y2) = p, q
    if via is not None:
        d = f"M{x1},{y1} " + " ".join(f"L{a},{b}" for a, b in via) + f" L{x2},{y2}"
    elif curve == "h":
        mx = (x1 + x2) / 2
        d = f"M{x1},{y1} C{mx},{y1} {mx},{y2} {x2},{y2}"
    else:
        lift = curve
        d = f"M{x1},{y1} C{x1},{y1 - lift} {x2},{y2 - lift} {x2},{y2}"
    dash_attr = ' stroke-dasharray="7 5"' if dash else ""
    svg.append(f'<path d="{d}" fill="none" stroke="{color}" stroke-width="{width}"{dash_attr} '
               f'marker-end="url(#a-{kind})"/>')


band_frames = {}
for b, (title, color, papers) in enumerate(BANDS):
    y = TOP + b * (BAND_H + BAND_GAP)
    band_frames[b] = (BAND_X, y, GAP_X - 50 - BAND_X, BAND_H)
    svg.append(f'<rect x="{BAND_X}" y="{y}" width="{GAP_X - 50 - BAND_X}" height="{BAND_H}" rx="12" fill="{color}" '
               f'fill-opacity="0.07" stroke="{color}" stroke-opacity="0.55" stroke-width="1.4"/>')
    for i, line in enumerate(wrap(title, 13)):
        svg.append(f'<text x="{BAND_X + 12}" y="{y + 28 + i * 18}" font-size="14.5" font-weight="700" '
                   f'fill="{color}">{esc(line)}</text>')
    for i, (key, head, body) in enumerate(papers):
        x = LEFT + i * (BOX_W + BOX_GAP)
        tag = "BASE PAPER" if key == "fdm" else ("BASELINE" if key in BASELINES else None)
        spine_y = y + BAND_H - 7
        svg.append(f'<line x1="{x + BOX_W / 2}" y1="{y + (BAND_H + BOX_H) / 2}" x2="{x + BOX_W / 2}" '
                   f'y2="{spine_y}" stroke="{color}" stroke-width="2"/>')
        svg.append(f'<circle cx="{x + BOX_W / 2}" cy="{spine_y}" r="3.5" fill="{color}"/>')
        by = y + (BAND_H - BOX_H) / 2
        draw_box(key, x, by, BOX_W, BOX_H, head, body, color,
                 border=3.2 if key == "fdm" else 1.6, fill="#fff9db" if key == "fdm" else "#ffffff",
                 tag=tag)

svg.append(f'<rect x="{GAP_X - 14}" y="{TOP}" width="{GAP_W + 28}" height="{len(GAPS) * 140 + 50}" rx="12" '
           f'fill="{COLORS["gap"]}" fill-opacity="0.06" stroke="{COLORS["gap"]}" stroke-width="1.6"/>')
svg.append(f'<text x="{GAP_X + GAP_W / 2}" y="{TOP + 24}" font-size="16" font-weight="700" '
           f'fill="{COLORS["gap"]}" text-anchor="middle">Research gaps</text>')
for b, (title, color, papers) in enumerate(BANDS):
    x, y, w, h = band_frames[b]
    end_x = LEFT + (len(papers) - 1) * (BOX_W + BOX_GAP) + BOX_W / 2 if b == 0 else x + w
    svg.append(f'<line x1="{LEFT + BOX_W / 2}" y1="{y + h - 7}" x2="{end_x}" y2="{y + h - 7}" '
               f'stroke="{color}" stroke-width="2"/>')
top_y = TOP + 10
bot_y = TOP + len(BANDS) * (BAND_H + BAND_GAP) - 20
svg.append(f'<line x1="22" y1="{top_y}" x2="22" y2="{bot_y}" stroke="#495057" stroke-width="3" '
           f'marker-end="url(#a-method)"/>')
svg.append(f'<text x="14" y="{(top_y + bot_y) / 2}" font-size="15" font-weight="700" fill="#495057" '
           f'text-anchor="middle" transform="rotate(-90 14 {(top_y + bot_y) / 2})">'
           f'broad foundations  →  attacks  →  specific defenses</text>')
for g, (key, head, body) in enumerate(GAPS):
    y = TOP + 38 + g * 140
    draw_box(key, GAP_X, y, GAP_W, 126, head, body, COLORS["gap"], fill="#f3f0ff",
             head_size=15, body_size=13.5, limit=36, border=2.2)

sy = TOP + len(GAPS) * 140 + 50 + 90
draw_box("study", STUDY_X, sy, STUDY_W, STUDY_H + 30, "This study: AEF-RPL",
         "DIS-FDM extended with a self-calibrated DAO-consistency evidence source, route repair "
         "and an on-node Q-learning decision layer; evaluated against combined DIS + DAO attacks "
         "in static and mobile 30-node networks",
         COLORS["extends"], fill="#ebfbee", head_size=17, body_size=13.5, limit=36, border=3.4)

edge(anchor("ver", "t"), anchor("fdm", "t"), "review", curve=40, dash=True)
edge(anchor("abh", "t"), anchor("fdm", "t"), "review", curve=28, dash=True)
edge(anchor("med", "t"), anchor("fdm", "t"), "compare", curve=18, dash=True, width=3)

nx, ny = anchor("nis", "r")
fx, fy = anchor("fdm", "r")
corridor = GAP_X - 32
edge((nx, ny), (fx + 2, fy - 22), "method", dash=True,
     via=[(corridor - 30, ny), (corridor - 30, fy - 22)])

ax_, ay_ = anchor("alb", "t")
edge((ax_, ay_), anchor("g1", "l"), "evidence", via=[(ax_, TOP - 10), (corridor + 10, TOP - 10),
                                                      (corridor + 10, anchor("g1", "l")[1])])

for b, gkey in ((1, "g1"), (2, "g1"), (3, "g1"), (4, "g2"), (5, "g4")):
    x, y, w, h = band_frames[b]
    edge((x + w, y + h - 7), anchor(gkey, "l"), "evidence")
edge((fx, fy + 18), anchor("g2", "l"), "evidence")
edge((fx, fy + 34), anchor("g3", "l"), "evidence")

edge((GAP_X + GAP_W / 2, TOP + len(GAPS) * 140 + 50), (GAP_X + GAP_W / 2, sy - 2), "gap", width=5)
svg.append(f'<text x="{GAP_X + GAP_W / 2 + 14}" y="{TOP + len(GAPS) * 140 + 50 + 52}" font-size="14" '
           f'font-weight="700" fill="{COLORS["gap"]}">addressed by</text>')

dx, dy = anchor("fdm", "b")
edge((dx, dy), (STUDY_X, sy + 40), "extends", width=3.4,
     via=[(dx, dy + 16), (corridor - 10, dy + 16), (corridor - 10, sy + 40)])
x, y, w, h = band_frames[3]
edge((x + w, y + h - 7), (STUDY_X, sy + 95), "feeds", width=2.8)
x, y, w, h = band_frames[4]
edge((x + w, y + h - 7), (STUDY_X, sy + 140), "feeds", width=2.2, dash=True)
x, y, w, h = band_frames[5]
edge((x + w, y + h - 7), (STUDY_X, sy + 185), "feeds", width=2.2, dash=True)

legend = [("compare", True, "Compared against by DIS-FDM"), ("review", True, "Reviewed by DIS-FDM"),
          ("method", True, "Same Beta model as DIS-FDM"),
          ("evidence", False, "Evidence for a research gap"), ("feeds", False, "Feeds attack and evaluation design"),
          ("extends", False, "Extended by this study"), ("gap", False, "Gap addressed by this study")]
LEG_Y = TOP + len(BANDS) * (BAND_H + BAND_GAP) + 22
lx = 40
for kind, dash, label in legend:
    d = ' stroke-dasharray="7 5"' if dash else ""
    svg.append(f'<line x1="{lx}" y1="{LEG_Y}" x2="{lx + 40}" y2="{LEG_Y}" stroke="{COLORS[kind]}" '
               f'stroke-width="3"{d} marker-end="url(#a-{kind})"/>')
    svg.append(f'<text x="{lx + 50}" y="{LEG_Y + 5}" font-size="14" fill="#343a40">{esc(label)}</text>')
    lx += 50 + 7.0 * len(label) + 24

markers = "".join(
    f'<marker id="a-{k}" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" '
    f'orient="auto-start-reverse"><path d="M0,0 L10,5 L0,10 z" fill="{c}"/></marker>'
    for k, c in COLORS.items())

doc = f"""<!DOCTYPE html>
<html lang="en"><head><meta charset="utf-8"><title>Literature Review Map</title>
<style>
html,body{{margin:0;background:#ffffff;font-family:"Segoe UI","Helvetica Neue",Arial,sans-serif;}}
svg{{display:block;width:100vw;height:auto;max-width:{W}px;margin:0 auto;}}
</style></head><body>
<svg viewBox="0 0 {W} {H}" xmlns="http://www.w3.org/2000/svg" font-family="Segoe UI, Helvetica Neue, Arial, sans-serif">
<defs>{markers}</defs>
<rect width="{W}" height="{H}" fill="#ffffff"/>
<text x="{W / 2}" y="40" font-size="28" font-weight="700" fill="#212529" text-anchor="middle">Literature Review Map: from RPL security to the research gap</text>
<text x="{W / 2}" y="68" font-size="16" fill="#495057" text-anchor="middle">28 studies grouped by theme, read top (broad) to bottom (specific), then right to the gaps and this study</text>
{"".join(svg)}
</svg></body></html>"""

out_html = HERE / "lr_map.html"
out_html.write_text(doc)
out_png = HERE / "lr_map.png"
subprocess.run(["google-chrome", "--headless=new", "--disable-gpu", "--no-sandbox", "--hide-scrollbars",
                f"--window-size={W},{H}", "--force-device-scale-factor=2",
                f"--screenshot={out_png}", out_html.as_uri()],
               check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
print("wrote", out_html.name, out_png.name)
