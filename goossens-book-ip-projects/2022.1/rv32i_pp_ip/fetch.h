#ifndef __FETCH
#define __FETCH
#include "rv32i_pp_ip.h"
void fetch(
  code_address_t  pc,
  instruction_t  *code_ram,
  code_address_t *next_pc,
  instruction_t  *instruction);
#endif
