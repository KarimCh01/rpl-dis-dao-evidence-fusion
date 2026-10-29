#ifndef DEFENSE_H_
#define DEFENSE_H_

#include "contiki.h"
#include "net/ipv6/uip.h"
#include "net/routing/rpl-lite/rpl.h"

#define DEF_NONE      0
#define DEF_SECURERPL 1
#define DEF_MRC       2
#define DEF_FDM       3
#define DEF_AEF       4
#define DEF_LIMSD     5
#define DEF_AEF_RL    6
#define DEF_AEF_RL2   7

#ifndef DEFENSE
#define DEFENSE DEF_NONE
#endif

#define DEF_LEARNING (DEFENSE == DEF_AEF_RL || DEFENSE == DEF_AEF_RL2)
#define DEF_FUSION (DEFENSE == DEF_FDM || DEFENSE == DEF_AEF || DEF_LEARNING)
#define DEF_DAO_EVIDENCE (DEFENSE == DEF_AEF || DEF_LEARNING)

#ifndef DEF_WINDOW_SEC
#define DEF_WINDOW_SEC 10
#endif

extern uint32_t defense_parent_switches;

void defense_init(void);
void defense_window(void);
int defense_dis_input(const uip_ipaddr_t *from, int is_multicast);
int defense_dao_input(const uip_ipaddr_t *from, uip_ipaddr_t *parent,
                      uint8_t lifetime);
int defense_forward(void);
void defense_parent_switch(rpl_nbr_t *old, rpl_nbr_t *new);

#endif
