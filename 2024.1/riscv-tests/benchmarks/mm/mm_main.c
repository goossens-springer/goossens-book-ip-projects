#include <stdio.h>
#include <string.h>
#include "common.h"
#include "rb.h"
t c[CBM*CBN];
static uint64_t lfsr(uint64_t x){
  uint64_t bit = (x ^ (x >> 1)) & 1;
  return (x >> 1) | (bit << 62);
}
void main(){
  uint64_t  s = 0xdeadbeefU;
  const int R = 8;
  t a[CBM*CBK];
  t b[CBK*CBN];
  for (int i = 0; i < CBM; i++)
    for (int j = 0; j < CBK; j++)
      a[i*CBK+j] = (t)(s = lfsr(s));
  for (int i = 0; i < CBK; i++)
    for (int j = 0; j < CBN; j++)
      b[i*CBN+j] = (t)(s = lfsr(s));
  memset(c, 0, CBM*CBN*sizeof(c[0]));
  for (int i = 0; i < R; i++)
    mm(CBM, CBN, CBK, a, CBK, b, CBN, c, CBN);
  for (int i = 0; i < CBM; i++){
    for (int j = 0; j < CBN; j++)
      printf("%e ", c[i*CBN+j]);
    printf("\n");
  }
}
