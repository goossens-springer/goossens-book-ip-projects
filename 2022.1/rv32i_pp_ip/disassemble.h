#ifndef __DISASSEMBLE
#define __DISASSEMBLE
#include "rv32i_pp_ip.h"
void disassemble(
  code_address_t        pc,
  instruction_t         i,
  decoded_instruction_t d_i);
#endif
