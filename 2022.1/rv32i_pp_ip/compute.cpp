#include "ap_int.h"
#include "rv32i_pp_ip.h"
int read_reg(
  int      *reg_file,
  reg_num_t rs){
  return reg_file[rs];
}
bit_t compute_branch_result(
  int     rv1,
  int     rv2,
  func3_t func3){
  bit_t result;
  switch(func3){
    case BEQ : result = (rv1 == rv2);
               break;
    case BNE : result = (rv1 != rv2);
               break;
    case 2   :
    case 3   : result = 0;
               break;
    case BLT : result = (rv1 <  rv2);
               break;
    case BGE : result = (rv1 >= rv2);
               break;
    case BLTU: result =
               (unsigned int)rv1 <  (unsigned int)rv2;
               break;
    case BGEU: result =
               (unsigned int)rv1 >= (unsigned int)rv2;
               break;
  }
  return result;
}
int compute_op_result(
  decoded_instruction_t d_i,
  int                   rv1,
  int                   rv2){
  bit_t      f7_6   = d_i.func7>>5;
  ap_uint<5> shift;
  int        result;
  if (d_i.is_r_type)
    shift = rv2;
  else//I_TYPE
    shift = d_i.rs2;
  switch(d_i.func3){
    case ADD : if (d_i.is_r_type && f7_6)
                 result = rv1 - rv2;//SUB
               else
                 result = rv1 + rv2;
               break;
    case SLL : result = rv1 << shift;
               break;
    case SLT : result = rv1 < rv2;
               break;
    case SLTU: result = (unsigned int)rv1 < (unsigned int)rv2;
               break;
    case XOR : result = rv1 ^ rv2;
               break;
    case SRL : if (f7_6)
                 result = rv1 >> shift;//SRA
               else
                 result = (unsigned int)rv1 >> shift;
               break;
    case OR  : result = rv1 | rv2;
               break;
    case AND : result = rv1 & rv2;
               break;
  }
  return result;
}
int compute_result(
  code_address_t        pc,
  decoded_instruction_t d_i,
  int                   rv1){
  int            imm12 = ((int)d_i.imm)<<12;
  code_address_t pc4   = pc<<2;
  code_address_t npc4  = pc4 + 4;
  int            result;
  switch(d_i.type){
    case R_TYPE:
      //computed by compute_op_result()
      result = 0;
      break;
    case I_TYPE:
      if (d_i.is_jalr)
        result = (unsigned int)npc4;
      else if (d_i.is_load)
        result = rv1 + (int)d_i.imm;
      else if (d_i.is_op_imm)
        //computed by compute_op_result()
        result = 0;
      else
        result = 0;//(opcode == SYSTEM)
      break;
    case S_TYPE:
      result = rv1 + (int)d_i.imm;
      break;
    case B_TYPE:
      //computed by compute_branch_result()
      result = 0;
      break;
    case U_TYPE:
      if (d_i.is_lui)
        result = imm12;
      else//d_i.opcode == AUIPC
        result = pc4 + imm12;
      break;
    case J_TYPE:
      result = (unsigned int)npc4;
      break;
    default:
      result = 0;
      break;
  }
  return result;
}
code_address_t compute_next_pc(
  code_address_t        pc,
  decoded_instruction_t d_i,
  int                   rv1,
  bit_t                 cond){
  code_address_t next_pc;
  code_address_t npc = pc + 1;
  code_address_t j_b_target_pc =
   (code_address_t)(pc+(code_address_t)(((int)d_i.imm>>1)));
  code_address_t i_target_pc   =
   (code_address_t)((rv1 + ((int)d_i.imm)&0xfffffffe)>>2);
  switch(d_i.type){
    case R_TYPE:
      next_pc = npc;
      break;
    case I_TYPE:
      next_pc = (d_i.is_jalr)?i_target_pc:npc;
      break;
    case S_TYPE:
      next_pc = npc;
      break;
    case B_TYPE:
      next_pc = (cond)?j_b_target_pc:npc;
      break;
    case U_TYPE:
      next_pc = npc;
      break;
    case J_TYPE:
      next_pc = j_b_target_pc;
      break;
    default:
      next_pc = npc;
      break;
  }
  return next_pc;
}
