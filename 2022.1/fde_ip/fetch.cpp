#include "debug_fde_ip.h"
#include "fde_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_FETCH
#include <stdio.h>
#endif
#endif
void fetch(
  code_address_t pc,
  instruction_t *code_ram,
  instruction_t *instruction){
#pragma HLS INLINE off
  *instruction = code_ram[pc];
#ifndef __SYNTHESIS__
#ifdef DEBUG_FETCH
  printf("%04d: %08x      ", (int)(pc<<2), *instruction);
#ifndef DEBUG_DISASSEMBLE
  printf("\n");
#endif
#endif
#endif
}
