#ifndef __ISSUE
#define __ISSUE
#include "multihart_ip.h"
void init_i_state(bit_t *i_state_is_full);
void issue(
  from_d_to_i_t  i_from_d,
  bit_t         *e_state_is_full,
  int            reg_file       [][NB_REGISTER],
  bit_t          is_reg_computed[][NB_REGISTER],
  i_state_t     *i_state,
  from_i_to_e_t *i_to_e,
  bit_t         *i_state_is_full,
  bit_t         *is_lock,
  hart_num_t    *i_hart,
  reg_num_t     *i_destination);
#endif
