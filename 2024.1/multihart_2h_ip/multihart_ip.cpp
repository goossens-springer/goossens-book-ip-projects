#include "debug_multihart_ip.h"
#include "multihart_ip.h"
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
#ifdef DEBUG_REG_FILE
#include "print.h"
#endif
#endif
typedef struct counter_s{
  unsigned int nbi;
  unsigned int nbc;
} counter_t;
//a1/x11 is set to the hart number
static void init_file(
  int   reg_file       [][NB_REGISTER],
  bit_t is_reg_computed[][NB_REGISTER]){
  hart_num_p1_t h1;
  hart_num_t    h;
  reg_num_p1_t  r1;
  reg_num_t     r;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h = h1;
    for (r1=0; r1<NB_REGISTER; r1++){
#pragma HLS UNROLL
      r = r1;
      is_reg_computed[h][r] = 0;
      if (r==11)
        reg_file     [h][r] = h;
      else if (r==SP)
        reg_file     [h][r] = (1<<(LOG_HART_DATA_RAM_SIZE+2));
      else
        reg_file     [h][r] = 0;
    }
  }
}
static void init_exit(
  hart_set_t running_hart_set,
  bit_t     *has_exited){
  hart_num_p1_t h1;
  hart_num_t    h;
  bit_t         h_running;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h             = h1;
    h_running     = (running_hart_set>>h);
    has_exited[h] = !h_running;
  }
}
static void running_cond_update(
  bit_t *has_exited,
  bit_t *is_running){
  hart_num_p1_t h1;
  hart_num_t    h;
  bit_t         cond;
  cond = 0;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h = h1;
    cond = cond | !has_exited[h];
  }
  *is_running = cond;
}
static counter_t statistic_update(
  from_i_to_e_t e_from_i,
  counter_t counter){
  counter_t c;
  c.nbi = counter.nbi + (unsigned int)(e_from_i.is_valid);
  c.nbc = counter.nbc + 1;
  return c;
}
static void lock_unlock_update(
  bit_t      is_lock,
  hart_num_t i_hart,
  reg_num_t  i_destination,
  bit_t      is_unlock,
  hart_num_t w_hart,
  reg_num_t  w_destination,
  bit_t      is_reg_computed[][NB_REGISTER]){
  //complicate, but necessary to help the synthesizer
  //by excluding the possibility to write 1 and 0 in the same
  //array entry; drastically shortens the time for synthesis
  if (is_lock && !is_unlock)
    is_reg_computed[i_hart][i_destination] = 1;
  else if (is_unlock && !is_lock)
    is_reg_computed[w_hart][w_destination] = 0;
  else if (is_lock && is_unlock && ((i_hart != w_hart) ||
          (i_destination != w_destination))){
    is_reg_computed[i_hart][i_destination] = 1;
    is_reg_computed[w_hart][w_destination] = 0;
  }
}
void multihart_ip(
  unsigned int  running_hart_set,
  unsigned int  start_pc[NB_HART],
  unsigned int  code_ram[CODE_RAM_SIZE],
  int           data_ram[NB_HART][HART_DATA_RAM_SIZE],
  unsigned int *nb_instruction,
  unsigned int *nb_cycle){
#pragma HLS INTERFACE s_axilite port=running_hart_set
#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE s_axilite port=code_ram
#pragma HLS INTERFACE s_axilite port=data_ram
#pragma HLS INTERFACE s_axilite port=nb_instruction
#pragma HLS INTERFACE s_axilite port=nb_cycle
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INLINE recursive
  int   reg_file               [NB_HART][NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=reg_file        dim=0 complete
  bit_t is_reg_computed        [NB_HART][NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=is_reg_computed dim=0 complete
  from_d_to_f_t f_from_d;
  from_e_to_f_t f_from_e;
  bit_t         f_state_is_full[NB_HART];
#pragma HLS ARRAY_PARTITION variable=f_state_is_full dim=1 complete
  f_state_t     f_state        [NB_HART];
#pragma HLS ARRAY_PARTITION variable=f_state         dim=1 complete
  from_f_to_d_t f_to_d;
  from_f_to_d_t d_from_f;
  bit_t         d_state_is_full[NB_HART];
#pragma HLS ARRAY_PARTITION variable=d_state_is_full dim=1 complete
  d_state_t     d_state        [NB_HART];
#pragma HLS ARRAY_PARTITION variable=d_state         dim=1 complete
  from_d_to_f_t d_to_f;
  from_d_to_i_t d_to_i;
  from_d_to_i_t i_from_d;
  bit_t         i_state_is_full[NB_HART];
#pragma HLS ARRAY_PARTITION variable=i_state_is_full dim=1 complete
  i_state_t     i_state        [NB_HART];
#pragma HLS ARRAY_PARTITION variable=i_state         dim=1 complete
  from_i_to_e_t i_to_e;
  from_i_to_e_t e_from_i;
  bit_t         e_state_is_full[NB_HART];
#pragma HLS ARRAY_PARTITION variable=e_state_is_full dim=1 complete
  e_state_t     e_state        [NB_HART];
#pragma HLS ARRAY_PARTITION variable=e_state         dim=1 complete
  from_e_to_f_t e_to_f;
  from_e_to_m_t e_to_m;
  from_e_to_m_t m_from_e;
  bit_t         m_state_is_full[NB_HART];
#pragma HLS ARRAY_PARTITION variable=m_state_is_full dim=1 complete
  m_state_t     m_state        [NB_HART];
#pragma HLS ARRAY_PARTITION variable=m_state         dim=1 complete
  from_m_to_w_t m_to_w;
  from_m_to_w_t w_from_m;
  bit_t         w_state_is_full[NB_HART];
#pragma HLS ARRAY_PARTITION variable=w_state_is_full dim=1 complete
  w_state_t     w_state        [NB_HART];
#pragma HLS ARRAY_PARTITION variable=w_state         dim=1 complete
  bit_t         has_exited     [NB_HART];
#pragma HLS ARRAY_PARTITION variable=has_exited      dim=1 complete
  bit_t         is_running;
  counter_t     counter;
  bit_t         is_lock;
  bit_t         is_unlock;
  reg_num_t     i_destination;
  reg_num_t     w_destination;
  hart_num_t    i_hart;
  hart_num_t    w_hart;
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
  hart_num_p1_t h1;
  hart_num_t    h;
#endif
#endif
  init_exit   (running_hart_set, has_exited);
  init_f_state(running_hart_set, start_pc,
               f_state, f_state_is_full);
  init_d_state(d_state_is_full);
  init_i_state(i_state_is_full);
  init_e_state(e_state_is_full);
  init_m_state(m_state_is_full);
  init_w_state(w_state_is_full);
  init_file   (reg_file, is_reg_computed);
  f_to_d.is_valid = 0;
  d_to_f.is_valid = 0;
  d_to_i.is_valid = 0;
  i_to_e.is_valid = 0;
  e_to_f.is_valid = 0;
  e_to_m.is_valid = 0;
  m_to_w.is_valid = 0;
  counter.nbc     = 0;
  counter.nbi     = 0;
  do {
#pragma HLS PIPELINE II=2
#pragma HLS LATENCY max=1
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("=============================================\n");
    printf("cycle %d\n", counter.nbc);
#endif
#endif
    new_cycle(f_to_d, d_to_f, d_to_i, i_to_e, e_to_f, e_to_m,
              m_to_w, &f_from_d, &f_from_e, &d_from_f,
             &i_from_d, &e_from_i, &m_from_e, &w_from_m);
    counter = statistic_update(e_from_i, counter);
    running_cond_update(has_exited, &is_running);
    fetch(f_from_d, f_from_e, d_state_is_full,
          code_ram, f_state, &f_to_d, f_state_is_full);
    decode(d_from_f, i_state_is_full, d_state, &d_to_f,
          &d_to_i, d_state_is_full);
    issue(i_from_d, e_state_is_full, reg_file,
          is_reg_computed, i_state, &i_to_e, i_state_is_full,
         &is_lock, &i_hart, &i_destination);
    execute(e_from_i, m_state_is_full,
#ifndef __SYNTHESIS__
            reg_file,
#endif
            e_state, &e_to_f, &e_to_m, e_state_is_full);
    mem_access(m_from_e, w_state_is_full, data_ram, m_state,
              &m_to_w, m_state_is_full);
    write_back(w_from_m, reg_file, w_state, w_state_is_full,
              &is_unlock, &w_hart, &w_destination,
               has_exited);
    lock_unlock_update(is_lock, i_hart, i_destination,
                       is_unlock, w_hart, w_destination,
                       is_reg_computed);
  } while (is_running);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  printf("=============================================\n");
#endif
#endif
  *nb_instruction = counter.nbi;
  *nb_cycle       = counter.nbc;
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
  for (h1=0; h1<NB_HART; h1++){
    h = h1;
    printf("register file for hart %d\n", (int)h);
    print_reg(reg_file[h]);
  }
#endif
#endif
}
