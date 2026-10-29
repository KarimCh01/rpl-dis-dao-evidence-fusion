#ifndef RL_H_
#define RL_H_

#include <stdint.h>

#define RL_STATES  96
#define RL_ACCEPT  0
#define RL_ISOLATE 1
#define RL_NONE    0xff

uint8_t rl_state(uint8_t c, float belief, uint8_t dao, uint8_t isolated);
uint8_t rl_choose(uint8_t s, uint8_t fixed, unsigned long now, uint8_t explore);
void rl_update(uint8_t s, uint8_t a, uint8_t anomaly, uint8_t next);
void rl_report(void);

#endif
