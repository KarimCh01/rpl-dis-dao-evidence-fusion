#include "dst.h"

const bba_t BBA_VACUOUS = { 0.0f, 0.0f, 1.0f };

bba_t
dst_combine(bba_t x, bba_t y)
{
  bba_t r;
  float k = x.a * y.n + x.n * y.a;
  float norm;

  if(k >= 0.9999f) {
    return BBA_VACUOUS;
  }
  norm = 1.0f - k;
  r.a = (x.a * y.a + x.a * y.u + x.u * y.a) / norm;
  r.n = (x.n * y.n + x.n * y.u + x.u * y.n) / norm;
  r.u = (x.u * y.u) / norm;
  return r;
}

bba_t
dst_table(uint8_t count)
{
  bba_t r;

  switch(count) {
  case 0:
    return BBA_VACUOUS;
  case 1:
    r.a = 0.0f; r.n = 0.8f; r.u = 0.2f;
    break;
  case 2:
    r.a = 0.0f; r.n = 0.6f; r.u = 0.4f;
    break;
  case 3:
    r.a = 0.6f; r.n = 0.0f; r.u = 0.4f;
    break;
  default:
    r.a = 0.8f; r.n = 0.0f; r.u = 0.2f;
    break;
  }
  return r;
}
