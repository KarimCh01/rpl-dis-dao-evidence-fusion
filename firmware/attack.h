#ifndef ATTACK_H_
#define ATTACK_H_

#include <stdint.h>

#define ATK_NONE 0
#define ATK_DIS  1
#define ATK_DAO  2
#define ATK_BOTH 3

#ifndef ATTACK_MODE
#define ATTACK_MODE ATK_NONE
#endif

extern uint32_t attack_dis_sent;
extern uint32_t attack_dao_sent;

void attack_start(void);

#endif
