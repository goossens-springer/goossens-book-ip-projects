#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#include "compute.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#include "emulate.h"
#endif
#endif
static void compute(
  ip_code_address_t     pc,
  decoded_instruction_t d_i,
  int                   rv1,
  int                   rv2,
  bit_t                *bcond,
  int                  *result1,
  int                  *result2,
  ip_code_address_t    *next_pc){
  *bcond   = compute_branch_result(rv1, rv2, d_i.func3);
  *result1 = compute_op_result(rv1, rv2, d_i);
  *result2 = compute_result(rv1, pc, d_i);
  *next_pc = compute_next_pc(pc, d_i, rv1);
}
static void stage_job(
  ip_code_address_t     pc,
  decoded_instruction_t d_i,
  bit_t                 bcond,
  ip_code_address_t     next_pc,
  ip_code_address_t    *target_pc){
  *target_pc =
   (bcond || d_i.is_jalr || d_i.is_jal)?next_pc:(ip_code_address_t)(pc + 1);
}
static void set_output_to_f(
  ip_code_address_t target_pc,
  from_e_to_f_t    *e_to_f){
  e_to_f->target_pc = target_pc;
}
static void set_output_to_m(
  decoded_instruction_t d_i,
  int                   result1,
  int                   result2,
  ip_code_address_t     next_pc,
  int                   rv2,
  ip_code_address_t     target_pc,
#ifndef __SYNTHESIS__
  ip_code_address_t     pc,
  instruction_t         instruction,
#endif
  from_e_to_m_t        *e_to_m){
  e_to_m->rd            = d_i.rd;
  e_to_m->has_no_dest   = d_i.has_no_dest;
  e_to_m->is_load       = d_i.is_load;
  e_to_m->is_store      = d_i.is_store;
  e_to_m->func3         = d_i.func3;
  //e_to_m->is_ret is used by running_cond_update
  e_to_m->is_ret        = d_i.is_ret;
  e_to_m->address       = result2;
  e_to_m->value         =
    (d_i.is_ret)?
      (int)target_pc:
    (d_i.is_jal || d_i.is_jalr || (d_i.type == U_TYPE))?
      result2:
    (d_i.is_store)?
      rv2:
      result1;
  e_to_m->target_pc     =
    (d_i.is_jal || d_i.is_branch)?
      target_pc:
      next_pc;
#ifndef __SYNTHESIS__
  e_to_m->pc            = pc;
  e_to_m->instruction   = instruction;
  e_to_m->d_i           = d_i;
#endif
}
void execute(
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  ip_num_t       ip,
#endif
#endif
  from_i_to_e_t  e_from_i,
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  int           *reg_file,
#endif
#endif
  from_e_to_f_t *e_to_f,
  from_e_to_m_t *e_to_m){
  bit_t             bcond;
  int               result1;
  int               result2;
  ip_code_address_t target_pc;
  ip_code_address_t next_pc;
  if (e_from_i.is_valid){
    compute  (e_from_i.pc, e_from_i.d_i, e_from_i.rv1,
              e_from_i.rv2, &bcond, &result1, &result2,
             &next_pc);
    stage_job(e_from_i.pc, e_from_i.d_i, bcond, next_pc,
             &target_pc);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("execute  ");
    printf("%04d\n", (int)(e_from_i.pc<<2));
    if (e_from_i.d_i.is_branch || e_from_i.d_i.is_jalr)
      emulate(ip, reg_file, e_from_i.d_i, next_pc);
#endif
#endif
    set_output_to_f(target_pc, e_to_f);
    set_output_to_m(e_from_i.d_i, result1, result2, next_pc,
                    e_from_i.rv2, target_pc,
#ifndef __SYNTHESIS__
                    e_from_i.pc, e_from_i.instruction,
#endif
                    e_to_m);
  }
  //block fetch after last RET
  //(i.e. RET with 0 return address)
  e_to_f->is_valid   =
    e_from_i.is_valid      &&
   (e_from_i.d_i.is_branch ||
   (e_from_i.d_i.is_jalr   &&
  (!e_from_i.d_i.is_ret    || (next_pc != 0))));
  e_to_m->is_valid = e_from_i.is_valid;
}
