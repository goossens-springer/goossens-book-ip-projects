#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#endif
#endif
static void save_input_from_d(
  from_d_to_i_t i_from_d,
  i_safe_t     *i_safe){
  i_safe->pc          = i_from_d.pc;
  i_safe->d_i         = i_from_d.d_i;
#ifndef __SYNTHESIS__
  i_safe->instruction = i_from_d.instruction;
  i_safe->target_pc   = i_from_d.target_pc;
#endif
}
static void stage_job(
  decoded_instruction_t d_i,
  int                  *reg_file,
  int                  *rv1,
  int                  *rv2){
  *rv1 = reg_file[d_i.rs1];
  *rv2 = reg_file[d_i.rs2];
}
static void set_output_to_e(
  ip_code_address_t     pc,
  decoded_instruction_t d_i,
  int                   rv1,
  int                   rv2,
#ifndef __SYNTHESIS__
  instruction_t         instruction,
  ip_code_address_t     target_pc,
#endif
  from_i_to_e_t        *i_to_e){
  i_to_e->pc          = pc;
  i_to_e->d_i         = d_i;
  i_to_e->rv1         = rv1;
  i_to_e->rv2         = rv2;
#ifndef __SYNTHESIS__
  i_to_e->instruction = instruction;
  i_to_e->target_pc   = target_pc;
#endif
}
void issue(
  from_d_to_i_t  i_from_d,
  int           *reg_file,
  bit_t         *is_reg_computed,
  i_safe_t      *i_safe,
  from_i_to_e_t *i_to_e,
  bit_t         *i_wait){
  bit_t is_locked_1;
  bit_t is_locked_2;
  int   rv1;
  int   rv2;
  if (!(*i_wait) && !i_safe->is_full){
    save_input_from_d(i_from_d, i_safe);
    i_safe->is_full = i_from_d.is_valid;
  }
  if (i_safe->is_full){
    is_locked_1 =
      i_safe->d_i.is_rs1_reg &&
      is_reg_computed[i_safe->d_i.rs1];
    is_locked_2 =
      i_safe->d_i.is_rs2_reg &&
      is_reg_computed[i_safe->d_i.rs2];
    *i_wait = is_locked_1 || is_locked_2;
    if (!(*i_wait)){
      stage_job(i_safe->d_i, reg_file, &rv1, &rv2);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
      printf("issued   ");
      printf("%04d\n", (int)(i_safe->pc<<2));
#endif
#endif
      set_output_to_e(i_safe->pc, i_safe->d_i, rv1, rv2,
#ifndef __SYNTHESIS__
                      i_safe->instruction,
                      i_safe->target_pc,
#endif
                      i_to_e);
      if (!i_safe->d_i.has_no_dest)
        is_reg_computed[i_safe->d_i.rd] = 1;
    }
  }
  i_to_e->is_valid = i_safe->is_full && !(*i_wait);
  i_safe->is_full  = (*i_wait);
}
