#include "debug_simple_pipeline_ip.h"
#include "simple_pipeline_ip.h"
#include "fetch_decode.h"
#include "execute_wb.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
#include "print.h"
#endif
#endif
static void running_cond_update(
  bit_t  cancel,
  bit_t  is_ret,
  bit_t  target_pc,
  bit_t *is_running){
  *is_running =
   (cancel || !is_ret || (target_pc!=0));
}
static unsigned int statistic_update(
  bit_t        cancel,
  unsigned int nbi){
  return nbi + (int)(!cancel);
}
void simple_pipeline_ip(
  unsigned int  start_pc,
  unsigned int  code_ram[CODE_RAM_SIZE],
  int           data_ram[DATA_RAM_SIZE],
  unsigned int *nb_instruction){
#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE s_axilite port=code_ram
#pragma HLS INTERFACE s_axilite port=data_ram
#pragma HLS INTERFACE s_axilite port=nb_instruction
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INLINE recursive
  int            reg_file[NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=reg_file dim=1 complete
  from_f_to_f_t  f_to_f, f_from_f;
  from_f_to_e_t  f_to_e, e_from_f;
  from_e_to_f_t  e_to_f, f_from_e;
  from_e_to_e_t  e_to_e, e_from_e;
  bit_t          is_running;
  unsigned int   nbi;
  for (int i=0; i<NB_REGISTER; i++) reg_file[i] = 0;
  e_to_f.target_pc = start_pc;
  e_to_f.set_pc    = 1;
  e_to_e.cancel    = 1;
  nbi              = 0;
  do{
#pragma HLS PIPELINE II=5
    f_from_f = f_to_f; e_from_f = f_to_e;
    f_from_e = e_to_f; e_from_e = e_to_e;
    fetch_decode(f_from_f, f_from_e, code_ram, &f_to_f, &f_to_e);
    execute_wb(e_from_f, e_from_e, reg_file, data_ram, &e_to_f, &e_to_e);
    nbi = statistic_update(e_from_e.cancel, nbi);
    running_cond_update(e_from_e.cancel, e_from_f.d_i.is_ret, e_to_f.target_pc, &is_running);
  } while (is_running);
  *nb_instruction = nbi;
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
  print_reg(reg_file);
#endif
#endif
}
