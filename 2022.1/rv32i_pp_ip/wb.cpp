#include "debug_rv32i_pp_ip.h"
#include "rv32i_pp_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_FETCH
#include <stdio.h>
#endif
#ifdef DEBUG_DISASSEMBLE
#include "disassemble.h"
#endif
#ifdef DEBUG_EMULATE
#include "emulate.h"
#endif
#endif
void wb(
  from_m_to_w_t  w_from_m,
  int           *reg_file){
  if (!w_from_m.cancel){
    if (!w_from_m.has_no_dest)
      reg_file[w_from_m.rd] = w_from_m.result;
#ifndef __SYNTHESIS__
#ifdef DEBUG_FETCH
    printf("%04d: %08x      ",
          (int)(w_from_m.pc<<2), w_from_m.instruction);
#ifndef DEBUG_DISASSEMBLE
    printf("\n");
#endif
#endif
#ifdef DEBUG_DISASSEMBLE
    disassemble(w_from_m.pc, w_from_m.instruction,
                w_from_m.d_i);
#endif
#ifdef DEBUG_EMULATE
    emulate(reg_file, w_from_m.d_i, w_from_m.next_pc);
#endif
#endif
  }
}
