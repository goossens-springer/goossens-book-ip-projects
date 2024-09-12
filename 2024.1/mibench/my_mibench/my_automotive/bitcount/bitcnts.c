#include <stdio.h>
#include "bitops.h"
#define FUNCS        7
#define NB_ITERATION 75000
static int CDECL bit_shifter(long int x);
void main(){
  long j, n, seed;
  int  i, iterations;
  int (* CDECL pBitCntFunc[FUNCS])(long) = {
    bit_count,
    bitcount,
    ntbl_bitcnt,
    ntbl_bitcount,
    BW_btbl_bitcount,
    AR_btbl_bitcount,
    bit_shifter
  };
  iterations=NB_ITERATION;
  puts("Bit counter algorithm benchmark\n");
  for (i = 0; i < FUNCS; i++){
    for (j = n = 0, seed = rand(); j < iterations; j++, seed += 13)
      n += pBitCntFunc[i](seed);
    printf("Bits: %ld\n", n);
  }
}
static int CDECL bit_shifter(long int x){
  int i, n;
  for (i = n = 0; x && (i < (sizeof(long) * CHAR_BIT)); ++i, x >>= 1)
    n += (int)(x & 1L);
  return n;
}
