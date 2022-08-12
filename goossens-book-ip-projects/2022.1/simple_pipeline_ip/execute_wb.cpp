#include "debug_simple_pipeline_ip.h"
#include "simple_pipeline_ip.h"
#include "execute.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_DISASSEMBLE
#include "disassemble.h"
#endif
#ifdef DEBUG_EMULATE
#include "emulate.h"
#endif
#endif
void execute_wb(
  from_f_to_e_t  e_from_f,
  from_e_to_e_t  e_from_e,
  int           *reg_file,
  int           *data_ram,
  from_e_to_f_t *e_to_f,
  from_e_to_e_t *e_to_e){
  int   rv1, rv2, rs, op_result, result;
  bit_t bcond, taken_branch;
  if (e_from_e.cancel){
    e_to_f->set_pc = 0;
    e_to_e->cancel = 0;
  }
  else{
    read_reg(reg_file, e_from_f.d_i.rs1, e_from_f.d_i.rs2, &rv1, &rv2);
    bcond        = compute_branch_result(rv1, rv2, e_from_f.d_i.func3);
    taken_branch = e_from_f.d_i.is_branch && bcond;
    rs           =(e_from_f.d_i.is_r_type)?
                   rv2:(int)e_from_f.d_i.imm;
    op_result    = compute_op_result(e_from_f.d_i, rv1, rs);
    result       = compute_result(e_from_f.pc, e_from_f.d_i, rv1, op_result);
    if (e_from_f.d_i.is_store)
      mem_store(data_ram, (b_data_address_t)result, rv2, e_from_f.d_i.func3);
    else if (e_from_f.d_i.is_load)
      result = mem_load(data_ram, (b_data_address_t)result, e_from_f.d_i.func3);
    write_reg(e_from_f.d_i, reg_file, result);
    e_to_f->target_pc =
      compute_next_pc(e_from_f.pc, e_from_f.d_i, bcond, rv1);
    e_to_f->set_pc    = e_from_f.d_i.is_jalr ||
                       (e_from_f.d_i.is_jal) ||
                        taken_branch;
    e_to_e->cancel    = e_to_f->set_pc;
#ifndef __SYNTHESIS__
#ifdef DEBUG_FETCH
    printf("%04d: %08x      ",
     (int)(e_from_f.pc<<2), e_from_f.instruction);
#ifndef DEBUG_DISASSEMBLE
    printf("\n");
#endif
#endif
#ifdef DEBUG_DISASSEMBLE
    disassemble(e_from_f.pc, e_from_f.instruction,
                e_from_f.d_i);
#endif
#ifdef DEBUG_EMULATE
    emulate(reg_file, e_from_f.d_i, e_to_f->target_pc);
#endif
#endif
  }
}
