#include "simple_pipeline_ip.h"
#include "type.h"
#include "immediate.h"
void decode_instruction(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
  d_i->opcode       = (instruction >>  2);
  d_i->rd           = (instruction >>  7);
  d_i->func3        = (instruction >> 12);
  d_i->rs1          = (instruction >> 15);
  d_i->rs2          = (instruction >> 20);
  d_i->func7        = (instruction >> 25);
  d_i->is_load      = (d_i->opcode == LOAD);
  d_i->is_store     = (d_i->opcode == STORE);
  d_i->is_branch    = (d_i->opcode == BRANCH);
  d_i->is_jalr      = (d_i->opcode == JALR);
  d_i->is_jal       = (d_i->opcode == JAL);
  d_i->is_ret       = (instruction == RET);
  d_i->is_lui       = (d_i->opcode == LUI);
  d_i->is_op_imm    = (d_i->opcode == OP_IMM);
  d_i->type         = type(d_i->opcode);
  d_i->is_r_type    = (d_i->type   == R_TYPE);
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
void decode(instruction_t          instruction,
            decoded_instruction_t *d_i){
  decode_instruction(instruction, d_i);
  decode_immediate  (instruction, d_i);
}
