#include "debug_rv32i_pp_ip.h"
#include "rv32i_pp_ip.h"
#include "fetch_decode.h"
#include "execute.h"
#include "mem.h"
#include "wb.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
#include "print.h"
#endif
#endif
typedef struct counter_s{
  unsigned int nbi;
  unsigned int nbc;
} counter_t;
static void running_cond_update(
  bit_t  cancel,
  bit_t  is_ret,
  int    ra,
  bit_t *is_running){
  *is_running = (cancel || !is_ret || ra != 0);
}
static counter_t statistic_update(
  bit_t     cancel,
  counter_t counter){
  counter_t c;
  c.nbi = counter.nbi + (unsigned int)(!cancel);
  c.nbc = counter.nbc + 1;
  return c;
}
void rv32i_pp_ip(
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
  int            reg_file[NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=reg_file dim=1 complete
  from_f_to_f_t  f_to_f, f_from_f;
  from_f_to_e_t  f_to_e, e_from_f;
  from_e_to_f_t  e_to_f, f_from_e;
  from_e_to_e_t  e_to_e, e_from_e;
  from_e_to_m_t  e_to_m, m_from_e;
  from_m_to_w_t  m_to_w, w_from_m;
  bit_t          is_running;
  counter_t      counter;
  for (reg_num_p1_t i=0; i<NB_REGISTER; i++) reg_file[i] = 0;
  e_to_f.target_pc = start_pc;
  e_to_f.set_pc    = 1;
  e_to_e.cancel    = 1;
  e_to_m.cancel    = 1;
  m_to_w.cancel    = 1;
  counter.nbc      = 0;
  counter.nbi      = 0;
  do{
#pragma HLS PIPELINE II=3
    f_from_f = f_to_f; f_from_e = e_to_f; e_from_f = f_to_e;
    e_from_e = e_to_e; m_from_e = e_to_m; w_from_m = m_to_w;
    fetch_decode(f_from_f, f_from_e, code_ram, &f_to_f,  &f_to_e);
    execute(f_to_e, e_from_f, e_from_e.cancel,
            m_from_e.cancel, m_from_e.d_i.has_no_dest,
            m_from_e.d_i.rd, m_from_e.result,
            w_from_m.cancel, w_from_m.has_no_dest,
            w_from_m.rd, w_from_m.result, reg_file,
           &e_to_f,  &e_to_e,  &e_to_m);
    mem_access(m_from_e, data_ram, &m_to_w);
    wb(w_from_m, reg_file);
    counter = statistic_update(w_from_m.cancel, counter);
    running_cond_update(w_from_m.cancel, w_from_m.is_ret, w_from_m.result, &is_running);
  } while (is_running);
  *nb_instruction = counter.nbi;
  *nb_cycle       = counter.nbc;
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
  print_reg(reg_file);
#endif
#endif
}
