#include "contiki.h"
#include "net/ipv6/uip.h"
#include "net/ipv6/uip-icmp6.h"
#include "net/packetbuf.h"
#include "net/linkaddr.h"
#include "net/routing/rpl-lite/rpl.h"
#include "net/routing/rpl-lite/rpl-timers.h"
#include "sys/energest.h"
#include "sys/node-id.h"
#include "sys/ctimer.h"
#include "lib/random.h"
#if MAC_CONF_WITH_TSCH
#include "net/mac/tsch/tsch.h"
#endif
#include "defense.h"
#include "dst.h"
#include "rl.h"
#include <stdio.h>
#include <string.h>

#define PEER_SLOTS 64
#define CAL_SEC 240
#define TPC_HORIZON_SEC 60
#define PSW_HIST 16
#define MAX_COUNT 5

/* Functional ablations preserve the default published implementation. */
#ifndef AEF_DAO_FUSION
#define AEF_DAO_FUSION 1
#endif
#ifndef AEF_DAO_PERSIST_WINDOWS
#define AEF_DAO_PERSIST_WINDOWS 2
#endif
#ifndef AEF_ROUTE_REPAIR
#define AEF_ROUTE_REPAIR 1
#endif
#ifndef AEF_FIXED_CALIBRATION
#define AEF_FIXED_CALIBRATION 0
#endif

#ifndef TR_STATIC_MS
#define TR_STATIC_MS 0
#endif
#ifndef TR_MOBILE_MS
#define TR_MOBILE_MS 0
#endif
#ifndef NODE_MOBILE
#define NODE_MOBILE 0
#endif

#define SRPL_INTERVAL (RPL_DIS_INTERVAL / 2)
#define SRPL_MAX_EARLY 3
#define MRC_EXPONENT 15
#define AEF_TAU 0.95f
#define RL_CALM_RELEASE 2
#define LIMSD_START_SEC 120
#define LIMSD_PERIOD_SEC 1800
#ifndef LIMSD_BETA
#define LIMSD_BETA 10
#endif

enum { R_SRPL = 1, R_C1, R_RULE, R_FUSED, R_DAO, R_LIMSD, R_LEARNED };

typedef struct {
  uint16_t id;
  uint16_t dis_win;
  uint16_t dao_win;
  uint8_t dao_bad;
  uint8_t dao_fwd;
  uint8_t dao_run;
  uint8_t u;
  uint8_t black;
  uint8_t seen_dao;
  uint8_t has_dis;
  uint8_t early;
  uint16_t lim_dao;
  uint8_t rl_s;
  uint8_t rl_a;
  uint8_t calm;
  clock_time_t last_dis;
  bba_t mdao;
} peer_t;

uint32_t defense_parent_switches;

static peer_t peers[PEER_SLOTS];
static uint8_t n_peers;
static unsigned long psw_time[PSW_HIST];
static uint8_t psw_head;

#if DEF_FUSION
static uint8_t v_count;
static uint8_t e_count;
static uint16_t last_rx;
static uint64_t last_energy;
static uint8_t calibrated;
static uint32_t dis_total_win;
static uint32_t cal_p;
static uint32_t cal_n;
static float t_dtl;
static uint32_t e_k;
static float e_mean, e_m2, e_sd;
static uint32_t fh_cal;
static uint32_t inc_cal;
static float inc_eps;
#endif

#if DEF_LEARNING
static unsigned long rl_next_report = CAL_SEC + 600;
#endif

#if DEFENSE == DEF_LIMSD
static unsigned long lim_next = LIMSD_START_SEC;
static uint8_t lim_active;
#endif


static uint16_t
addr_id(const uip_ipaddr_t *a)
{
  return ((uint16_t)a->u8[14] << 8) | a->u8[15];
}

static uint16_t
link_sender(void)
{
  const linkaddr_t *l = packetbuf_addr(PACKETBUF_ADDR_SENDER);

  return ((uint16_t)l->u8[LINKADDR_SIZE - 2] << 8) | l->u8[LINKADDR_SIZE - 1];
}

static void
peer_reset(peer_t *p, uint16_t id)
{
  memset(p, 0, sizeof(*p));
  p->id = id;
  p->mdao = BBA_VACUOUS;
  p->rl_s = RL_NONE;
}

static peer_t *
find_peer(uint16_t id)
{
  uint8_t lo = 0;
  uint8_t hi = n_peers;
  uint8_t mid;

  while(lo < hi) {
    mid = (lo + hi) / 2;
    if(peers[mid].id < id) {
      lo = mid + 1;
    } else {
      hi = mid;
    }
  }
  return lo < n_peers && peers[lo].id == id ? &peers[lo] : NULL;
}

static int
idle_peer(const peer_t *p)
{
  return !p->black && !p->u && !p->dao_run && !p->dis_win && !p->dao_bad &&
         !p->early && !p->lim_dao && p->rl_s == RL_NONE;
}

static peer_t *
get_peer(uint16_t id)
{
  peer_t *p = find_peer(id);
  uint8_t i;

  if(p != NULL) {
    return p;
  }
  if(n_peers == PEER_SLOTS) {
    for(i = 0; i < n_peers && !idle_peer(&peers[i]); i++);
    if(i == n_peers) {
      return NULL;
    }
    memmove(&peers[i], &peers[i + 1], (n_peers - i - 1) * sizeof(peer_t));
    n_peers--;
  }
  for(i = 0; i < n_peers && peers[i].id < id; i++);
  memmove(&peers[i + 1], &peers[i], (n_peers - i) * sizeof(peer_t));
  n_peers++;
  peer_reset(&peers[i], id);
  return &peers[i];
}

#if DEFENSE == DEF_SECURERPL || DEFENSE == DEF_LIMSD || DEF_FUSION
static void
blacklist(peer_t *p, uint8_t reason, float belief)
{
  if(p->black) {
    return;
  }
  p->black = 1;
  printf("#D %u %u %u\n", p->id, reason, (unsigned)(belief * 1000.0f));
}
#endif

#if DEF_FUSION
#if !AEF_FIXED_CALIBRATION
static float
fsqrt(float x)
{
  float r;
  int i;

  if(x <= 0.0f) {
    return 0.0f;
  }
  r = x > 1.0f ? x : 1.0f;
  for(i = 0; i < 30; i++) {
    r = 0.5f * (r + x / r);
  }
  return r;
}
#endif

static void
welford(uint32_t *k, float *mean, float *m2, float x)
{
  float d;

  (*k)++;
  d = x - *mean;
  *mean += d / *k;
  *m2 += d * (x - *mean);
}

static uint64_t
energy_now(void)
{
  energest_flush();
  return energest_type_time(ENERGEST_TYPE_CPU) +
         energest_type_time(ENERGEST_TYPE_TRANSMIT);
}

static uint8_t
bump(uint8_t c, int hit)
{
  if(!hit) {
    return 0;
  }
  return c < MAX_COUNT ? c + 1 : MAX_COUNT;
}

static uint8_t
recent_switches(unsigned long now)
{
  uint8_t i;
  uint8_t c = 0;
  uint8_t valid = defense_parent_switches < PSW_HIST ?
                  (uint8_t)defense_parent_switches : PSW_HIST;

  for(i = 0; i < valid; i++) {
    if(now - psw_time[i] <= TPC_HORIZON_SEC) {
      c++;
    }
  }
  return c;
}

static void
clear_window(void)
{
  uint8_t i;

  dis_total_win = 0;
  for(i = 0; i < n_peers; i++) {
    peers[i].dis_win = 0;
    peers[i].dao_win = 0;
    peers[i].dao_bad = 0;
    peers[i].dao_fwd = 0;
  }
}

static void
calibrate(uint16_t n, float ew)
{
  cal_p += dis_total_win;
  cal_n += n;
  welford(&e_k, &e_mean, &e_m2, ew);
}

static void
finish_calibration(void)
{
#if AEF_FIXED_CALIBRATION
  /* Frozen from separate benign calibration seeds by the campaign planner. */
  t_dtl = AEF_FIXED_DTL_PPM / 1000000.0f;
  e_mean = AEF_FIXED_ENERGY_MEAN;
  e_sd = AEF_FIXED_ENERGY_SD;
  inc_eps = AEF_FIXED_INC_PPM / 1000000.0f;
#else
  t_dtl = (cal_p + 1.0f) / (cal_n + 2.0f);
  e_sd = e_k ? fsqrt(e_m2 / e_k) : 0.0f;
  inc_eps = (inc_cal + 1.0f) / (fh_cal + 2.0f);
#endif
  calibrated = 1;
  printf("#K %lu %lu %lu %lu %lu %lu\n",
         (unsigned long)(t_dtl * 1000000.0f),
         (unsigned long)e_mean, (unsigned long)e_sd,
         (unsigned long)fh_cal, (unsigned long)inc_cal,
         (unsigned long)(inc_eps * 1000.0f));
}

#if DEF_DAO_EVIDENCE
static void
update_dao_evidence(peer_t *p)
{
  bba_t w;

  if(!AEF_DAO_FUSION) {
    p->mdao = BBA_VACUOUS;
    return;
  }
  if(!p->dao_bad) {
    p->dao_run = 0;
    p->mdao = BBA_VACUOUS;
    return;
  }
  if(++p->dao_run < AEF_DAO_PERSIST_WINDOWS) {
    return;
  }
  w.a = 1.0f - inc_eps;
  w.n = 0.0f;
  w.u = inc_eps;
  p->mdao = dst_combine(p->mdao, w);
}
#endif

#if DEF_LEARNING
static void
release(peer_t *p)
{
  p->black = 0;
  printf("#U %u\n", p->id);
}

static void
learn(peer_t *p, bba_t m, uint8_t reason, uint8_t anomaly)
{
  uint8_t s = rl_state(p->u, m.a, p->mdao.a > 0.0f, p->black);
  uint8_t explore = 1;
  uint8_t a;

  p->calm = anomaly ? 0 : (p->calm < 255 ? p->calm + 1 : 255);
#if DEFENSE == DEF_AEF_RL2
  explore = p->black || p->u || p->mdao.a > 0.0f;
#endif
  if(p->rl_s != RL_NONE) {
    rl_update(p->rl_s, p->rl_a, anomaly, s);
  }
  if(!(p->black || p->u || p->mdao.a > 0.0f || p->dis_win || p->dao_bad)) {
    p->rl_s = RL_NONE;
    return;
  }
  a = rl_choose(s, (p->black || reason) ? RL_ISOLATE : RL_ACCEPT, clock_seconds(), explore);
#if DEFENSE == DEF_AEF_RL2
  if(p->black && a == RL_ACCEPT && p->calm < RL_CALM_RELEASE) {
    a = RL_ISOLATE;
  }
#endif
  if(a == RL_ISOLATE) {
    blacklist(p, reason ? reason : R_LEARNED, m.a);
  } else if(p->black) {
    release(p);
  }
  p->rl_s = s;
  p->rl_a = a;
}
#endif

static void
decide(peer_t *p, uint8_t anomaly)
{
  uint8_t c1 = p->u;
  uint8_t c2 = v_count;
  uint8_t reason = 0;
  bba_t m = dst_combine(dst_combine(dst_table(c1), dst_table(c2)),
                        dst_table(e_count));

#if DEF_DAO_EVIDENCE
  m = dst_combine(m, p->mdao);
#endif

  if(c1 >= MAX_COUNT) {
    reason = R_C1;
  } else if((c1 == 4 && c2 >= 2) || (c1 == 3 && c2 >= 3)) {
    reason = R_RULE;
  } else if(((c1 == 4 && c2 == 1) || (c1 == 3 && c2 == 2)) && m.a > m.n) {
    reason = R_FUSED;
#if DEF_DAO_EVIDENCE
  } else if(p->mdao.a > 0.0f && m.a >= AEF_TAU && m.a > m.n) {
    reason = R_DAO;
#endif
  }
#if DEF_LEARNING
  learn(p, m, reason, anomaly);
#else
  (void)anomaly;
  if(reason) {
    blacklist(p, reason, m.a);
  }
#endif
}
#endif

#if DEFENSE == DEF_SECURERPL
static int
srpl_accept(peer_t *p)
{
  clock_time_t now = clock_time();
  int early = p->has_dis && (now - p->last_dis) < SRPL_INTERVAL;

  p->has_dis = 1;
  p->last_dis = now;
  if(p->black) {
    return 0;
  }
  if(early) {
    if(++p->early >= SRPL_MAX_EARLY) {
      blacklist(p, R_SRPL, 1.0f);
    }
    return 0;
  }
  p->early = 0;
  return 1;
}
#endif


static int
dao_transit(const uint8_t *b, uint16_t len)
{
  uint16_t i = 4;
  uint16_t l;

  if(len < 4) {
    return -1;
  }
  if(b[1] & RPL_DAO_D_FLAG) {
    i += 16;
  }
  while(i + 2 <= len) {
    if(b[i] == RPL_OPTION_PAD1) {
      i++;
      continue;
    }
    l = 2 + b[i + 1];
    if(i + l > len) {
      return -1;
    }
    if(b[i] == RPL_OPTION_TRANSIT && l >= 22) {
      return i;
    }
    i += l;
  }
  return -1;
}

#if DEF_DAO_EVIDENCE
static void
icmp6_fix_checksum(uint16_t off, uint16_t len)
{
  uint32_t sum = 0;
  uint16_t i;
  const uint8_t *a = UIP_IP_BUF->srcipaddr.u8;

  uip_buf[off + 2] = 0;
  uip_buf[off + 3] = 0;
  for(i = 0; i < 16; i += 2) {
    sum += (a[i] << 8) | a[i + 1];
  }
  a = UIP_IP_BUF->destipaddr.u8;
  for(i = 0; i < 16; i += 2) {
    sum += (a[i] << 8) | a[i + 1];
  }
  sum += len;
  sum += UIP_PROTO_ICMP6;
  for(i = 0; i + 1 < len; i += 2) {
    sum += (uip_buf[off + i] << 8) | uip_buf[off + i + 1];
  }
  if(len & 1) {
    sum += uip_buf[off + len - 1] << 8;
  }
  while(sum >> 16) {
    sum = (sum & 0xffff) + (sum >> 16);
  }
  sum = ~sum & 0xffff;
  uip_buf[off + 2] = sum >> 8;
  uip_buf[off + 3] = sum & 0xff;
}
#endif

#define DAO_DROP   0
#define DAO_PASS   1
#define DAO_REPAIR 2

static int
observe_dao(uint16_t origin, uint16_t sender, uint16_t parent_id, uint8_t lifetime)
{
  peer_t *p;
  int first_hop;
  int bad;

  if(origin == 0 || origin == node_id) {
    return DAO_PASS;
  }
  p = sender == origin ? get_peer(origin) : find_peer(origin);
  if(p == NULL) {
    return DAO_PASS;
  }
#if DEFENSE == DEF_LIMSD
  if(!lim_active) {
    return DAO_PASS;
  }
  if(p->black) {
    return DAO_DROP;
  }
  if(sender == origin) {
    if(p->lim_dao < LIMSD_BETA) {
      p->lim_dao++;
    } else {
      blacklist(p, R_LIMSD, 1.0f);
      return DAO_DROP;
    }
  }
#endif
  p->seen_dao = 1;
  p->dao_win++;
  first_hop = sender == origin && lifetime != 0;
  bad = first_hop && parent_id != node_id;
  if(bad) {
    p->dao_bad++;
  }
#if DEF_FUSION
  if(first_hop && !calibrated) {
    fh_cal++;
    if(bad) {
      inc_cal++;
    }
  }
#endif
#if DEF_DAO_EVIDENCE
  if(p->black) {
    if(++p->dao_fwd > 1) {
      return DAO_DROP;
    }
    if(bad) {
      return AEF_ROUTE_REPAIR ? DAO_REPAIR : DAO_PASS;
    }
  }
#endif
  return DAO_PASS;
}

void
defense_init(void)
{
  n_peers = 0;
#if DEF_FUSION
  last_rx = uip_stat.ip.recv;
  last_energy = energy_now();
#endif
}

void
defense_window(void)
{
#if DEF_FUSION
  uint16_t rx = uip_stat.ip.recv;
  uint16_t n = rx - last_rx;
  uint64_t en = energy_now();
  float ew = (float)(en - last_energy);
  unsigned long now = clock_seconds();
  float tr = (NODE_MOBILE ? TR_MOBILE_MS : TR_STATIC_MS) / 1000.0f;
  uint8_t sw;
  uint8_t i;
  uint8_t anomaly;

  last_rx = rx;
  last_energy = en;

  if(!calibrated) {
    if(now < CAL_SEC) {
      calibrate(n, ew);
      clear_window();
      return;
    }
    finish_calibration();
  }

  sw = recent_switches(now);
  v_count = bump(v_count, sw > 0 && tr > 0.0f &&
                          ((float)TPC_HORIZON_SEC / sw) < tr);
  e_count = bump(e_count, e_k > 1 && ew > e_mean + e_sd);

  for(i = 0; i < n_peers; i++) {
    peer_t *p = &peers[i];
    float dtl = n ? (float)p->dis_win / n : 0.0f;
    if(p->id == node_id) {
      continue;
    }
    anomaly = (p->dis_win > 0 && dtl > t_dtl) || p->dao_bad > 0;
    p->u = bump(p->u, p->dis_win > 0 && dtl > t_dtl);
#if DEF_DAO_EVIDENCE
    update_dao_evidence(p);
#endif
#if DEF_LEARNING
    decide(p, anomaly);
#else
    if(!p->black) {
      decide(p, anomaly);
    }
#endif
  }
  clear_window();
#if DEF_LEARNING
  if(now >= rl_next_report) {
    rl_report();
    rl_next_report += 600;
  }
#endif
#elif DEFENSE == DEF_LIMSD
  uint8_t i;

  if(clock_seconds() < lim_next) {
    return;
  }
  for(i = 0; i < n_peers; i++) {
    peers[i].lim_dao = 0;
    peers[i].black = 0;
  }
  lim_active = 1;
  lim_next += LIMSD_PERIOD_SEC;
#endif
}

int
defense_dis_input(const uip_ipaddr_t *from, int is_multicast)
{
  uint16_t id = addr_id(from);
  peer_t *p;

  (void)is_multicast;
  if(id == 0 || (p = get_peer(id)) == NULL) {
    return 1;
  }
  p->dis_win++;
#if DEF_FUSION
  dis_total_win++;
  return !p->black;
#elif DEFENSE == DEF_SECURERPL
  return srpl_accept(p);
#elif DEFENSE == DEF_MRC
  if(!is_multicast) {
    return 1;
  }
  rpl_timers_dio_readjust(MRC_EXPONENT);
  return 0;
#else
  return 1;
#endif
}

int
defense_dao_input(const uip_ipaddr_t *from, uip_ipaddr_t *parent,
                  uint8_t lifetime)
{
  int act = observe_dao(addr_id(from), link_sender(), addr_id(parent), lifetime);

  if(act == DAO_REPAIR) {
    uip_ipaddr_copy(parent, &curr_instance.dag.dag_id);
  }
  return act != DAO_DROP;
}

int
defense_forward(void)
{
  uint16_t off = UIP_IPH_LEN;
  uint8_t nh = UIP_IP_BUF->proto;
  int t;
  int act;

  while(nh == UIP_PROTO_HBHO || nh == UIP_PROTO_ROUTING ||
        nh == UIP_PROTO_DESTO) {
    if(off + 2 > uip_len) {
      return 1;
    }
    nh = uip_buf[off];
    off += (uip_buf[off + 1] + 1) * 8;
  }
  if(nh != UIP_PROTO_ICMP6 || off + 4 > uip_len) {
    return 1;
  }
  if(uip_buf[off] != ICMP6_RPL || uip_buf[off + 1] != RPL_CODE_DAO) {
    return 1;
  }
  t = dao_transit(&uip_buf[off + 4], uip_len - off - 4);
  if(t < 0) {
    return 1;
  }
  t += off + 4;
  act = observe_dao(addr_id(&UIP_IP_BUF->srcipaddr), link_sender(),
                    ((uint16_t)uip_buf[t + 20] << 8) | uip_buf[t + 21], uip_buf[t + 5]);
#if DEF_DAO_EVIDENCE
  if(act == DAO_REPAIR) {
    const uip_ipaddr_t *me = rpl_get_global_address();
    if(me == NULL) {
      return 0;
    }
    memcpy(&uip_buf[t + 14], &me->u8[8], 8);
    icmp6_fix_checksum(off, uip_len - off);
  }
#endif
  return act != DAO_DROP;
}

void
defense_parent_switch(rpl_nbr_t *old, rpl_nbr_t *new)
{
  uip_ipaddr_t *a = new != NULL ? rpl_neighbor_get_ipaddr(new) : NULL;

#if MAC_CONF_WITH_TSCH
  tsch_rpl_callback_parent_switch(old, new);
#else
  (void)old;
#endif
  psw_time[psw_head] = clock_seconds();
  psw_head = (psw_head + 1) % PSW_HIST;
  defense_parent_switches++;
  printf("#P %u\n", a != NULL ? addr_id(a) : 0);
}
