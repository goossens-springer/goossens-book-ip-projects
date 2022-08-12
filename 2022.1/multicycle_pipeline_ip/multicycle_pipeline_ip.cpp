#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#include "fetch.h"
#include "decode.h"
#include "issue.h"
#include "execute.h"
#include "mem_access.h"
#include "wb.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include <stdio.h>
#endif
#endif
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
#include "print.h"
#endif
#endif
static void init_reg_file(
  int   *reg_file,
  bit_t *is_reg_computed){
  reg_num_p1_t r;
  for (r=0; r<NB_REGISTER; r++){
    is_reg_computed[r] = 0;
    reg_file       [r] = 0;
  }
}
static void running_cond_update(
  from_m_to_w_t w_from_m,
  bit_t        *is_running){
  *is_running =
    !w_from_m.is_valid ||
    !w_from_m.is_ret   ||
     w_from_m.value != 0;
}
static void statistic_update(
  from_i_to_e_t e_from_i,
  counter_t    *nbi,
  counter_t    *nbc){
  *nbi = *nbi + (unsigned int)(e_from_i.is_valid);
  *nbc = *nbc + 1;
}
void multicycle_pipeline_ip(
  unsigned int  start_pc,
  unsigned int  code_ram[CODE_RAM_SIZE],
  int           data_ram[DATA_RAM_SIZE],
  unsigned int *nb_instruction,
  unsigned int *nb_cycle){
#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE s_axilite port=code_ram
#pragma HLS INTERFACE s_axilite port=data_ram
#pragma HLS INTERFACE s_axilite port=nb_instruction
#pragma HLS INTERFACE s_axilite port=nb_cycle
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INLINE recursive
  int           reg_file       [NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=reg_file        dim=1 complete
  bit_t         is_reg_computed[NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=is_reg_computed dim=1 complete
  from_f_to_f_t f_to_f;
  from_f_to_d_t f_to_d;
  from_d_to_f_t d_to_f;
  from_d_to_i_t d_to_i;
  bit_t         i_wait;
  i_safe_t      i_safe;
  from_i_to_e_t i_to_e;
  from_e_to_f_t e_to_f;
  from_e_to_m_t e_to_m;
  from_m_to_w_t m_to_w;
  bit_t         is_running;
  counter_t     nbi;
  counter_t     nbc;
  init_reg_file (reg_file, is_reg_computed);
  f_to_f.is_valid  = 1;
  f_to_f.next_pc   = start_pc;
  f_to_d.is_valid  = 0;
  d_to_f.is_valid  = 0;
  d_to_i.is_valid  = 0;
  i_to_e.is_valid  = 0;
  e_to_f.is_valid  = 0;
  e_to_m.is_valid  = 0;
  m_to_w.is_valid  = 0;
  i_wait           = 0;
  i_safe.is_full   = 0;
  nbi              = 0;
  nbc              = 0;
  do{
#pragma HLS PIPELINE II=2
#pragma HLS LATENCY max=1
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("=============================================\n");
    printf("cycle %d\n", (int)nbc);
#endif
#endif
    statistic_update(i_to_e, &nbi, &nbc);
    running_cond_update(m_to_w, &is_running);
    write_back(m_to_w, reg_file, is_reg_computed);
    mem_access(e_to_m, data_ram, &m_to_w);
    execute(i_to_e,
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
            reg_file,
#endif
#endif
           &e_to_f, &e_to_m);
    issue(d_to_i, reg_file, is_reg_computed, &i_safe, &i_to_e, &i_wait);
    decode(f_to_d, i_wait, &d_to_f, &d_to_i);
    fetch(f_to_f, d_to_f, e_to_f, i_wait, code_ram, &f_to_f, &f_to_d);
  } while (is_running);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  printf("=============================================\n");
#endif
#endif
  *nb_cycle       = nbc;
  *nb_instruction = nbi;
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
  print_reg(reg_file);
#endif
#endif
}
