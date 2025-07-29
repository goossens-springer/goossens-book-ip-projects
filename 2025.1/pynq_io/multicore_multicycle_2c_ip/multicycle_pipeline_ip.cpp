#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#include "new_cycle.h"
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
//a0/x10 is set with the IP number
static void init_reg_file(
  ip_num_t ip_num,
  int     *reg_file,
  bit_t   *is_reg_computed){
  reg_num_p1_t r;
  for (r=0; r<NB_REGISTER; r++){
#pragma HLS UNROLL
    is_reg_computed[r] = 0;
    if (r==10)
      reg_file     [r] = ip_num;
    else if (r==SP)
      reg_file     [r] = (1<<(LOG_IP_DATA_RAM_SIZE+2));
    else
      reg_file     [r] = 0;
  }
}
static void running_cond_update(
  from_m_to_w_t w_from_m,
  bit_t        *is_running){
  *is_running =
    !w_from_m.is_valid ||
    !w_from_m.is_ret   ||
     w_from_m.result != 0;
}
static void statistic_update(
  from_m_to_w_t w_from_m,
  unsigned int *nbi,
  counter_t    *nbc){
  *nbi = *nbi + (unsigned int)(w_from_m.is_valid);
  *nbc = *nbc + 1;
}
void multicycle_pipeline_ip(
  unsigned int  ip_num,
  unsigned int  start_pc,
  unsigned int  ip_code_ram[IP_CODE_RAM_SIZE],
  int           ip_data_ram[IP_DATA_RAM_SIZE],
  int           data_ram   [NB_IP][IP_DATA_RAM_SIZE],
  unsigned int *nb_instruction,
  unsigned int *nb_cycle){
#pragma HLS INTERFACE s_axilite port=ip_num
#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE s_axilite port=ip_code_ram
#pragma HLS INTERFACE bram      port=ip_data_ram
#pragma HLS INTERFACE m_axi     port=data_ram offset=slave
#pragma HLS INTERFACE s_axilite port=nb_instruction
#pragma HLS INTERFACE s_axilite port=nb_cycle
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INLINE recursive
  int               reg_file       [NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=reg_file         dim=1 complete
  bit_t             is_reg_computed[NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=is_reg_computed  dim=1 complete
  from_f_to_f_t f_from_f;
  from_d_to_f_t f_from_d;
  from_e_to_f_t f_from_e;
  from_f_to_f_t f_to_f;
  from_f_to_d_t f_to_d;
  from_f_to_d_t d_from_f;
  from_d_to_f_t d_to_f;
  from_d_to_i_t d_to_i;
  from_d_to_i_t i_from_d;
  bit_t         i_wait;
  i_safe_t      i_safe;
  from_i_to_e_t i_to_e;
  from_i_to_e_t e_from_i;
  from_e_to_f_t e_to_f;
  from_e_to_m_t e_to_m;
  from_e_to_m_t m_from_e;
  from_m_to_w_t m_to_w;
  from_m_to_w_t w_from_m;
  bit_t         is_running;
  counter_t     nbc;
  init_reg_file (ip_num, reg_file, is_reg_computed);
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
  nbc              = 0;
  *nb_instruction  = 0;
  do{
#pragma HLS PIPELINE II=2
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("=============================================\n");
    printf("cycle %d\n", (int)nbc);
#endif
#endif
    new_cycle(f_to_f, d_to_f, e_to_f, f_to_d, d_to_i, i_to_e,
              e_to_m, m_to_w, &f_from_f, &f_from_d, &f_from_e,
             &d_from_f, &i_from_d, &e_from_i, &m_from_e,
             &w_from_m);
    fetch(f_from_f, f_from_d, f_from_e, i_wait, ip_code_ram,
         &f_to_f, &f_to_d);
    decode(d_from_f, i_wait, &d_to_f, &d_to_i);
    issue(i_from_d, reg_file, is_reg_computed, &i_safe,
         &i_to_e, &i_wait);
    execute(
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
            ip_num,
#endif
#endif
            e_from_i,
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
            reg_file,
#endif
#endif
           &e_to_f, &e_to_m);
    mem_access(ip_num, m_from_e, ip_data_ram, data_ram, &m_to_w);
    write_back(
#ifndef __SYNTHESIS__
               ip_num,
#endif
               w_from_m, reg_file, is_reg_computed);
    statistic_update(w_from_m, nb_instruction, &nbc);
    running_cond_update(w_from_m, &is_running);
  } while (is_running);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  printf("=============================================\n");
#endif
#endif
  *nb_cycle       = nbc;
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
  print_reg(reg_file);
#endif
#endif
}
