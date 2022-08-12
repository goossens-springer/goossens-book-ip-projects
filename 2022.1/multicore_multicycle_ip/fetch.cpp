#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include <stdio.h>
#endif
#endif
static void decode_control(
  instruction_t      instruction,
  decoded_control_t *d_ctrl){
  opcode_t opcode;
  opcode = (instruction >> 2);
  d_ctrl->is_branch = (opcode == BRANCH);
  d_ctrl->is_jalr   = (opcode == JALR);
  d_ctrl->is_jal    = (opcode == JAL);
}
static void stage_job(
  ip_code_address_t  pc,
  instruction_t     *code_ram,
  instruction_t     *instruction,
  decoded_control_t *d_ctrl){
  *instruction = code_ram[pc];
  decode_control(*instruction, d_ctrl);
}
static void set_output_to_f(
  ip_code_address_t pc,
  from_f_to_f_t    *f_to_f){
  f_to_f->next_pc = pc + 1;
}
static void set_output_to_d(
  ip_code_address_t pc,
  instruction_t     instruction,
  decoded_control_t d_ctrl,
  from_f_to_d_t    *f_to_d){
  f_to_d->pc          = pc;
  f_to_d->instruction = instruction;
  f_to_d->is_branch   = d_ctrl.is_branch;
  f_to_d->is_jalr     = d_ctrl.is_jalr;
  f_to_d->is_jal      = d_ctrl.is_jal;
}
void fetch(
  from_f_to_f_t  f_from_f,
  from_d_to_f_t  f_from_d,
  from_e_to_f_t  f_from_e,
  bit_t          i_wait,
  instruction_t *code_ram,
  from_f_to_f_t *f_to_f,
  from_f_to_d_t *f_to_d){
  bit_t             has_input;
  instruction_t     instruction;
  decoded_control_t d_ctrl;
  bit_t             is_ctrl;
  ip_code_address_t pc;
  if (!i_wait){
    has_input = f_from_f.is_valid || f_from_d.is_valid ||
                f_from_e.is_valid;
    if (has_input){
      if (f_from_f.is_valid)
        pc = f_from_f.next_pc;
      else if (f_from_d.is_valid)
        pc = f_from_d.target_pc;
      else if (f_from_e.is_valid)
        pc = f_from_e.target_pc;
      stage_job(pc, code_ram, &instruction, &d_ctrl);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
      printf("fetched  ");
      printf("%04d: %08x      \n",
        (int)(pc<<2), instruction);
#endif
#endif
      set_output_to_f(pc, f_to_f);
      set_output_to_d(pc, instruction, d_ctrl, f_to_d);
    }
    is_ctrl = d_ctrl.is_branch || d_ctrl.is_jalr ||
              d_ctrl.is_jal;
    f_to_f->is_valid = has_input && !is_ctrl;
    f_to_d->is_valid = has_input;
  }
}
