#include "contiki.h"
#include "net/routing/routing.h"
#include "net/netstack.h"
#include "net/ipv6/simple-udp.h"
#include "net/routing/rpl-lite/rpl.h"
#include "sys/node-id.h"
#include "sys/energest.h"
#include "lib/random.h"
#include "defense.h"
#include "attack.h"
#include <stdio.h>
#include <string.h>
#ifdef HOST_PROFILE
#include <time.h>

/* Native Cooja callback CPU time, not target-mote execution time. */
static uint64_t
host_cpu_ns(void)
{
  struct timespec value;
  clock_gettime(CLOCK_THREAD_CPUTIME_ID, &value);
  return (uint64_t)value.tv_sec * 1000000000ULL + value.tv_nsec;
}
#endif

#define ROLE_ROOT     0
#define ROLE_CLIENT   1
#define ROLE_ATTACKER 2

#ifndef ROLE
#define ROLE ROLE_CLIENT
#endif
#ifndef NODE_MOBILE
#define NODE_MOBILE 0
#endif

#define CLIENT_PORT 8765
#define SERVER_PORT 5678
#ifndef SEND_INTERVAL_SEC
#define SEND_INTERVAL_SEC 10
#endif
#define SEND_INTERVAL (SEND_INTERVAL_SEC * CLOCK_SECOND)
#define REPORT_INTERVAL (60 * CLOCK_SECOND)

static struct simple_udp_connection conn;

PROCESS(node_process, "node");
AUTOSTART_PROCESSES(&node_process);

static void
on_udp(struct simple_udp_connection *c, const uip_ipaddr_t *sender,
       uint16_t sport, const uip_ipaddr_t *receiver, uint16_t rport,
       const uint8_t *data, uint16_t len)
{
  uint32_t seq;

  if(len != sizeof(seq)) {
    return;
  }
  memcpy(&seq, data, sizeof(seq));
#if ROLE == ROLE_ROOT
  printf("#R %u %lu\n", ((unsigned)sender->u8[14] << 8) | sender->u8[15], (unsigned long)seq);
  simple_udp_sendto(&conn, data, len, sender);
#else
  printf("#E %lu\n", (unsigned long)seq);
#endif
}

static void
report(void)
{
#ifdef SCALE_DIAGNOSTICS
  rpl_nbr_t *parent = curr_instance.dag.preferred_parent;
  const uip_ipaddr_t *parent_addr = parent ? rpl_neighbor_get_ipaddr(parent) : NULL;
  printf("#N %u %u %u\n", NETSTACK_ROUTING.node_is_reachable(),
         curr_instance.dag.rank,
         parent_addr ? ((unsigned)parent_addr->u8[14] << 8) | parent_addr->u8[15] : 0);
#endif
  energest_flush();
  printf("#S %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu %lu\n",
         (unsigned long)rpl_ctrl_stats.dio_tx,
         (unsigned long)rpl_ctrl_stats.dis_tx,
         (unsigned long)rpl_ctrl_stats.dao_tx,
         (unsigned long)rpl_ctrl_stats.daoack_tx,
         (unsigned long)rpl_ctrl_stats.dio_rx,
         (unsigned long)rpl_ctrl_stats.dis_rx,
         (unsigned long)rpl_ctrl_stats.dao_rx,
         (unsigned long)defense_parent_switches,
         (unsigned long)attack_dis_sent,
         (unsigned long)attack_dao_sent,
         (unsigned long)energest_type_time(ENERGEST_TYPE_CPU),
         (unsigned long)energest_type_time(ENERGEST_TYPE_LPM),
         (unsigned long)energest_type_time(ENERGEST_TYPE_TRANSMIT),
         (unsigned long)energest_type_time(ENERGEST_TYPE_LISTEN));
}

PROCESS_THREAD(node_process, ev, data)
{
  static struct etimer report_timer;
  static struct etimer window_timer;
#if ROLE != ROLE_ROOT
  static struct etimer send_timer;
  static uint32_t seq;
  uip_ipaddr_t root;
#endif

  PROCESS_BEGIN();

  printf("#B %u %u %u %u %lu\n", ROLE, DEFENSE, NODE_MOBILE, ATTACK_MODE,
         (unsigned long)ENERGEST_SECOND);

#if ROLE == ROLE_ROOT
  NETSTACK_ROUTING.root_start();
#endif
  NETSTACK_MAC.on();

#if ROLE == ROLE_ROOT
  simple_udp_register(&conn, SERVER_PORT, NULL, CLIENT_PORT, on_udp);
#else
  simple_udp_register(&conn, CLIENT_PORT, NULL, SERVER_PORT, on_udp);
  etimer_set(&send_timer, random_rand() % SEND_INTERVAL);
#endif

#if ROLE == ROLE_ATTACKER
  attack_start();
#endif

  defense_init();
  etimer_set(&report_timer, REPORT_INTERVAL);
  etimer_set(&window_timer, DEF_WINDOW_SEC * CLOCK_SECOND);

  while(1) {
    PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);

    if(data == &report_timer) {
      report();
      etimer_reset(&report_timer);
    } else if(data == &window_timer) {
#ifdef HOST_PROFILE
      uint64_t started = host_cpu_ns();
#endif
      defense_window();
#ifdef HOST_PROFILE
      printf("#W %lu\n", (unsigned long)(host_cpu_ns() - started));
#endif
      etimer_reset(&window_timer);
#if ROLE != ROLE_ROOT
    } else if(data == &send_timer) {
      if(NETSTACK_ROUTING.node_is_reachable() &&
         NETSTACK_ROUTING.get_root_ipaddr(&root)) {
        printf("#T %lu\n", (unsigned long)seq);
        simple_udp_sendto(&conn, &seq, sizeof(seq), &root);
        seq++;
      }
      etimer_set(&send_timer, SEND_INTERVAL - CLOCK_SECOND +
                 (random_rand() % (2 * CLOCK_SECOND)));
#endif
    }
  }

  PROCESS_END();
}
