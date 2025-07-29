#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#endif
#ifndef DEBUG_PIPELINE
#include "disassemble.h"
#endif
#include "emulate.h"
#endif
static void stage_job(
  bit_t     has_no_dest,
  reg_num_t rd,
  int       value,
  int      *reg_file){
  if (!has_no_dest) reg_file[rd] = value;
}
void write_back(
  from_m_to_w_t w_from_m,
  int          *reg_file,
  bit_t        *is_reg_computed){
  if (w_from_m.is_valid){
    stage_job(w_from_m.has_no_dest, w_from_m.rd,
              w_from_m.value, reg_file);
    if (!w_from_m.has_no_dest)
      is_reg_computed[w_from_m.rd] = 0;
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("wb       ");
    printf("%04d\n", (int)(w_from_m.pc<<2));
    if (!w_from_m.d_i.is_branch && !w_from_m.d_i.is_jalr)
      emulate(reg_file, w_from_m.d_i, w_from_m.target_pc);
#else
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
    emulate(reg_file, w_from_m.d_i, w_from_m.target_pc);
#endif
#endif
#endif
  }
}
