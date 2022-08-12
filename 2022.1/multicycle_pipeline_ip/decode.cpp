#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#include "type.h"
#include "immediate.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include <stdio.h>
#include "disassemble.h"
#endif
#endif
static void decode_instruction(
  instruction_t          instruction,
  bit_t                  is_branch,
  bit_t                  is_jalr,
  bit_t                  is_jal,
  decoded_instruction_t *d_i){
  opcode_t opcode;
  bit_t    is_lui;
  bit_t    is_load;
  bit_t    is_store;
  bit_t    is_op_imm;
  bit_t    is_not_auipc;
  bit_t    is_not_jal;
  opcode       = (instruction >> 2);
  is_lui       = (opcode == LUI);
  is_load      = (opcode == LOAD);
  is_store     = (opcode == STORE);
  is_op_imm    = (opcode == OP_IMM);
  is_not_auipc = (opcode != AUIPC);
  is_not_jal   = !is_jal;
  d_i->opcode     =  opcode;
  d_i->rd         = (instruction >>  7);
  d_i->func3      = (instruction >> 12);
  d_i->rs1        = (instruction >> 15);
  d_i->rs2        = (instruction >> 20);
  d_i->func7      = (instruction >> 25);
  d_i->is_rs1_reg = (is_not_jal   && !is_lui      &&
                     is_not_auipc && (d_i->rs1 != 0));
  d_i->is_rs2_reg = (!is_op_imm   && !is_load     &&
                     is_not_jal   && !is_jalr     &&
                     !is_lui      && is_not_auipc &&
                     (d_i->rs2 != 0));
  d_i->is_load    = is_load;
  d_i->is_store   = is_store;
  d_i->is_branch  = is_branch;
  d_i->is_jalr    = is_jalr;
  d_i->is_jal     = is_jal;
  d_i->is_ret     = (instruction == RET);
  d_i->is_lui     = is_lui;
  d_i->is_op_imm  = is_op_imm;
  d_i->has_no_dest= (is_branch || is_store || (d_i->rd == 0));
  d_i->type       = type(d_i->opcode);
  d_i->is_r_type  = (d_i->type   == R_TYPE);
}
static void decode_immediate(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
  decoded_immediate_t d_imm;
  d_imm.inst_31    = (instruction >> 31);
  d_imm.inst_30_25 = (instruction >> 25);
  d_imm.inst_24_21 = (instruction >> 21);
  d_imm.inst_20    = (instruction >> 20);
  d_imm.inst_19_12 = (instruction >> 12);
  d_imm.inst_11_8  = (instruction >>  8);
  d_imm.inst_7     = (instruction >>  7);
  switch(d_i->type){
    case UNDEFINED_TYPE: d_i->imm = 0; break;
    case R_TYPE:         d_i->imm = 0; break;
    case I_TYPE:         d_i->imm = i_immediate(d_imm); break;
    case S_TYPE:         d_i->imm = s_immediate(d_imm); break;
    case B_TYPE:         d_i->imm = b_immediate(d_imm); break;
    case U_TYPE:         d_i->imm = u_immediate(d_imm); break;
    case J_TYPE:         d_i->imm = j_immediate(d_imm); break;
    case OTHER_TYPE:     d_i->imm = 0; break;
  }
}
static void stage_job(
  code_address_t         pc,
  instruction_t          instruction,
  bit_t                  is_branch,
  bit_t                  is_jalr,
  bit_t                  is_jal,
  decoded_instruction_t *d_i,
  code_address_t        *target_pc){
  decode_instruction(instruction, is_branch, is_jalr, is_jal,
                     d_i);
  decode_immediate  (instruction, d_i);
  if (d_i->is_jal)
    *target_pc = pc+(code_address_t)(d_i->imm >> 1);
}
static void set_output_to_f(
  code_address_t target_pc,
  from_d_to_f_t *d_to_f){
  d_to_f->target_pc = target_pc;
}
static void set_output_to_i(
  code_address_t        pc,
  decoded_instruction_t d_i,
#ifndef __SYNTHESIS__
  instruction_t         instruction,
  code_address_t        target_pc,
#endif
  from_d_to_i_t        *d_to_i){
  d_to_i->pc          = pc;
  d_to_i->d_i         = d_i;
#ifndef __SYNTHESIS__
  d_to_i->instruction = instruction;
  d_to_i->target_pc   = target_pc;
#endif
}
void decode(
  from_f_to_d_t  d_from_f,
  bit_t          i_wait,
  from_d_to_f_t *d_to_f,
  from_d_to_i_t *d_to_i){
  decoded_instruction_t d_i;
  code_address_t        target_pc;
  if (!i_wait){
    if (d_from_f.is_valid){
      stage_job(d_from_f.pc, d_from_f.instruction,
                d_from_f.is_branch, d_from_f.is_jalr,
                d_from_f.is_jal, &d_i, &target_pc);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
      printf("decoded  %04d: ", (int)(d_from_f.pc<<2));
      disassemble(d_from_f.pc, d_from_f.instruction, d_i);
#endif
#endif
      set_output_to_f(target_pc, d_to_f);
      set_output_to_i(d_from_f.pc, d_i,
#ifndef __SYNTHESIS__
                      d_from_f.instruction, target_pc,
#endif
                      d_to_i);
    }
    d_to_f->is_valid = d_from_f.is_valid && d_i.is_jal;
    d_to_i->is_valid = d_from_f.is_valid;
  }
}
