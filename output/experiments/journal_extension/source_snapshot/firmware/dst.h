#ifndef DST_H_
#define DST_H_

#include <stdint.h>

typedef struct {
  float a;
  float n;
  float u;
} bba_t;

extern const bba_t BBA_VACUOUS;

bba_t dst_combine(bba_t x, bba_t y);
bba_t dst_table(uint8_t count);

#endif
