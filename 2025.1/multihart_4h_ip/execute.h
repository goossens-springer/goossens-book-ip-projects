#ifndef __EXECUTE_1
#define __EXECUTE_1
#include "multihart_ip.h"
void init_e_state(bit_t *e_state_is_full);
void execute(
  from_i_to_e_t  e_from_i,
  bit_t         *m_state_is_full,
#ifndef __SYNTHESIS__
  int            reg_file[][NB_REGISTER],
#endif
  e_state_t     *e_state,
  from_e_to_f_t *e_to_f,
  from_e_to_m_t *e_to_m,
  bit_t         *e_state_is_full);
#endif
