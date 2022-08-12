#ifndef __EXECUTE
#define __EXECUTE
#include "fetching_decoding_ip.h"
void execute(
  code_address_t        pc,
  decoded_instruction_t d_i,
  code_address_t       *next_pc);
#endif
