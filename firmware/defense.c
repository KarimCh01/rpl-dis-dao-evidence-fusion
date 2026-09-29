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
#include <stdio.h>
#include <string.h>

#define MAX_IDS 64
#define CAL_SEC 240
#define TPC_HORIZON_SEC 60
#define PSW_HIST 16
#define MAX_COUNT 5

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

enum { R_SRPL = 1, R_C1, R_RULE, R_FUSED, R_DAO };

typedef struct {
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
  clock_time_t last_dis;
  bba_t mdao;
} peer_t;

uint32_t defense_parent_switches;

static peer_t peers[MAX_IDS];
static unsigned long psw_time[PSW_HIST];
static uint8_t psw_head;

#if DEFENSE >= DEF_FDM
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


static uint8_t
addr_id(const uip_ipaddr_t *a)
{
  return a->u8[15] < MAX_IDS ? a->u8[15] : 0;
}

static uint8_t
link_sender(void)
{
  return packetbuf_addr(PACKETBUF_ADDR_SENDER)->u8[LINKADDR_SIZE - 1];
}

#if DEFENSE == DEF_SECURERPL || DEFENSE >= DEF_FDM
static void
blacklist(uint8_t id, uint8_t reason, float belief)
{
  if(peers[id].black) {
    return;
  }
  peers[id].black = 1;
  printf("#D %u %u %u\n", id, reason, (unsigned)(belief * 1000.0f));
}
#endif

#if DEFENSE >= DEF_FDM
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
  for(i = 0; i < MAX_IDS; i++) {
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
  t_dtl = (cal_p + 1.0f) / (cal_n + 2.0f);
  e_sd = e_k ? fsqrt(e_m2 / e_k) : 0.0f;
  inc_eps = (inc_cal + 1.0f) / (fh_cal + 2.0f);
  calibrated = 1;
  printf("#K %lu %lu %lu %lu %lu %lu\n",
         (unsigned long)(t_dtl * 1000000.0f),
         (unsigned long)e_mean, (unsigned long)e_sd,
         (unsigned long)fh_cal, (unsigned long)inc_cal,
         (unsigned long)(inc_eps * 1000.0f));
}

#if DEFENSE == DEF_AEF
static void
update_dao_evidence(peer_t *p)
{
  bba_t w;

  if(!p->dao_bad) {
    p->dao_run = 0;
    p->mdao = BBA_VACUOUS;
    return;
  }
  if(++p->dao_run < 2) {
    return;
  }
  w.a = 1.0f - inc_eps;
  w.n = 0.0f;
  w.u = inc_eps;
  p->mdao = dst_combine(p->mdao, w);
}
#endif

static void
decide(uint8_t id, peer_t *p)
{
  uint8_t c1 = p->u;
  uint8_t c2 = v_count;
  uint8_t reason = 0;
  bba_t m = dst_combine(dst_combine(dst_table(c1), dst_table(c2)),
                        dst_table(e_count));

#if DEFENSE == DEF_AEF
  m = dst_combine(m, p->mdao);
#endif

  if(c1 >= MAX_COUNT) {
    reason = R_C1;
  } else if((c1 == 4 && c2 >= 2) || (c1 == 3 && c2 >= 3)) {
    reason = R_RULE;
  } else if(((c1 == 4 && c2 == 1) || (c1 == 3 && c2 == 2)) && m.a > m.n) {
    reason = R_FUSED;
#if DEFENSE == DEF_AEF
  } else if(p->mdao.a > 0.0f && m.a >= AEF_TAU && m.a > m.n) {
    reason = R_DAO;
#endif
  }
  if(reason) {
    blacklist(id, reason, m.a);
  }
}
#endif

#if DEFENSE == DEF_SECURERPL
static int
srpl_accept(uint8_t id, peer_t *p)
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
      blacklist(id, R_SRPL, 1.0f);
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

#if DEFENSE == DEF_AEF
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
observe_dao(uint8_t origin, uint8_t sender, uint8_t parent_id, uint8_t lifetime)
{
  peer_t *p;
  int first_hop;
  int bad;

  if(origin == 0 || origin == node_id) {
    return DAO_PASS;
  }
  p = &peers[origin];
  p->seen_dao = 1;
  p->dao_win++;
  first_hop = sender == origin && lifetime != 0;
  bad = first_hop && parent_id != node_id;
  if(bad) {
    p->dao_bad++;
  }
#if DEFENSE >= DEF_FDM
  if(first_hop && !calibrated) {
    fh_cal++;
    if(bad) {
      inc_cal++;
    }
  }
#endif
#if DEFENSE == DEF_AEF
  if(p->black) {
    if(++p->dao_fwd > 1) {
      return DAO_DROP;
    }
    if(bad) {
      return DAO_REPAIR;
    }
  }
#endif
  return DAO_PASS;
}

void
defense_init(void)
{
  uint8_t i;

  for(i = 0; i < MAX_IDS; i++) {
    peers[i].mdao = BBA_VACUOUS;
  }
#if DEFENSE >= DEF_FDM
  last_rx = uip_stat.ip.recv;
  last_energy = energy_now();
#endif
}

void
defense_window(void)
{
#if DEFENSE >= DEF_FDM
  uint16_t rx = uip_stat.ip.recv;
  uint16_t n = rx - last_rx;
  uint64_t en = energy_now();
  float ew = (float)(en - last_energy);
  unsigned long now = clock_seconds();
  float tr = (NODE_MOBILE ? TR_MOBILE_MS : TR_STATIC_MS) / 1000.0f;
  uint8_t sw;
  uint8_t id;

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

  for(id = 1; id < MAX_IDS; id++) {
    peer_t *p = &peers[id];
    float dtl = n ? (float)p->dis_win / n : 0.0f;
    if(id == node_id) {
      continue;
    }
    p->u = bump(p->u, p->dis_win > 0 && dtl > t_dtl);
#if DEFENSE == DEF_AEF
    update_dao_evidence(p);
#endif
    if(!p->black) {
      decide(id, p);
    }
  }
  clear_window();
#endif
}

int
defense_dis_input(const uip_ipaddr_t *from, int is_multicast)
{
  uint8_t id = addr_id(from);
  peer_t *p;

  (void)is_multicast;
  if(id == 0) {
    return 1;
  }
  p = &peers[id];
  p->dis_win++;
#if DEFENSE >= DEF_FDM
  dis_total_win++;
  return !p->black;
#elif DEFENSE == DEF_SECURERPL
  return srpl_accept(id, p);
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
  int act = observe_dao(addr_id(from), link_sender(), parent->u8[15], lifetime);

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
                    uip_buf[t + 21], uip_buf[t + 5]);
#if DEFENSE == DEF_AEF
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
  printf("#P %u\n", a != NULL ? a->u8[15] : 0);
}
