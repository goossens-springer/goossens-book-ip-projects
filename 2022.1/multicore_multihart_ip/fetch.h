#ifndef __FETCH
#define __FETCH
#include "multihart_ip.h"
void init_f_state(
  hart_set_t    running_hart_set,
  unsigned int *start_pc,
  f_state_t    *f_state,
  bit_t        *f_state_is_full);
void fetch(
  from_d_to_f_t  f_from_d,
  from_e_to_f_t  f_from_e,
  bit_t         *d_state_is_full,
  instruction_t *code_ram,
  f_state_t     *f_state,
  from_f_to_d_t *f_to_d,
  bit_t         *f_state_is_full);
#endif
