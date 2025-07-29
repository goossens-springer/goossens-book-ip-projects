#include "debug_rv32i_pp_ip.h"
#include "rv32i_pp_ip.h"
#include "fetch.h"
#include "decode.h"
void fetch_decode(
  from_f_to_f_t  f_from_f,
  from_e_to_f_t  f_from_e,
  unsigned int  *code_ram,
  from_f_to_f_t *f_to_f,
  from_f_to_e_t *f_to_e){
  code_address_t pc;
  instruction_t  instruction;
  pc = (f_from_e.set_pc)   ?
        f_from_e.target_pc : f_from_f.next_pc;
  fetch(pc, code_ram, &(f_to_f->next_pc), &instruction);
  decode(instruction, &(f_to_e->d_i));
  f_to_e->pc = pc;
#ifndef __SYNTHESIS__
#ifdef DEBUG_DISASSEMBLE
  f_to_e->instruction = instruction;
#endif
#endif
}
