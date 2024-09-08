#ifndef __FETCH
#define __FETCH
#include "fde_ip.h"
void fetch(
  code_address_t pc,
  instruction_t *code_ram,
  instruction_t *instruction);
#endif
