#include "contiki.h"
#include "lib/random.h"
#include "defense.h"
#include "rl.h"
#include <stdio.h>

#if DEF_LEARNING

#define RL_ONE 256
#define RL_ALPHA_MIN_N 16
#define RL_EPS0 100
#define RL_EPS_MIN 10
#define RL_EPS_HALF_SEC 600

#ifndef RL_LEARN
#define RL_LEARN 1
#endif
#ifndef RL_START_SEC
#define RL_START_SEC 240
#endif

static int16_t q[RL_STATES][2];
static uint16_t visits[RL_STATES][2];
static uint8_t greedy[(RL_STATES + 7) / 8];

static const int16_t reward[2][2] = {
  { 0, -RL_ONE },
  { -2 * RL_ONE, RL_ONE }
};

uint8_t
rl_state(uint8_t c, float belief, uint8_t dao, uint8_t isolated)
{
  uint8_t b = belief < 0.5f ? 0 : belief < 0.8f ? 1 : belief < 0.95f ? 2 : 3;

  if(c > 5) {
    c = 5;
  }
  return c * 16 + b * 4 + (dao ? 2 : 0) + (isolated ? 1 : 0);
}

static uint16_t
epsilon(unsigned long now)
{
  unsigned long k = now > RL_START_SEC ? (now - RL_START_SEC) / RL_EPS_HALF_SEC : 0;
  uint16_t e = k < 8 ? RL_EPS0 >> k : 0;

  return e > RL_EPS_MIN ? e : RL_EPS_MIN;
}

uint8_t
rl_choose(uint8_t s, uint8_t fixed, unsigned long now, uint8_t explore)
{
  if(s / 16 == 5) {
    return RL_ISOLATE;
  }
  if(s == 0) {
    return RL_ACCEPT;
  }
#if RL_LEARN
  if(explore && random_rand() % 1000 < epsilon(now)) {
    return random_rand() & 1;
  }
#endif
  if(q[s][RL_ISOLATE] > q[s][RL_ACCEPT]) {
    return RL_ISOLATE;
  }
  if(q[s][RL_ACCEPT] > q[s][RL_ISOLATE]) {
    return RL_ACCEPT;
  }
  return fixed;
}

void
rl_update(uint8_t s, uint8_t a, uint8_t anomaly, uint8_t next)
{
#if RL_LEARN
  int32_t best = q[next][0] > q[next][1] ? q[next][0] : q[next][1];
  int32_t target = reward[a][anomaly ? 1 : 0] + best / 2;
  uint16_t n;

  if(visits[s][a] < 0xffff) {
    visits[s][a]++;
  }
  n = visits[s][a] < RL_ALPHA_MIN_N ? visits[s][a] : RL_ALPHA_MIN_N;
  q[s][a] += (int16_t)((target - q[s][a]) / n);
#else
  (void)s;
  (void)a;
  (void)anomaly;
  (void)next;
#endif
}

void
rl_report(void)
{
  uint8_t s;
  uint8_t isolate = 0;
  uint8_t changed = 0;
  uint8_t g;
  uint8_t bit;

  for(s = 0; s < RL_STATES; s++) {
    g = q[s][RL_ISOLATE] > q[s][RL_ACCEPT];
    bit = 1 << (s & 7);
    isolate += g;
    changed += g != ((greedy[s >> 3] & bit) != 0);
    greedy[s >> 3] = g ? (greedy[s >> 3] | bit) : (greedy[s >> 3] & ~bit);
  }
  printf("#G %u %u\n", isolate, changed);
}

#endif
