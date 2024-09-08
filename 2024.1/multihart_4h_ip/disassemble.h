#ifndef __DISASSEMBLE
#define __DISASSEMBLE
#include "multihart_ip.h"
void disassemble(
  code_address_t        pc,
  instruction_t         instruction,
  decoded_instruction_t d_i);
#endif
