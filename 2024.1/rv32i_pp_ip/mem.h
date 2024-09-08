#ifndef __MEM
#define __MEM
#include "rv32i_pp_ip.h"
void mem_access(
  from_e_to_m_t  m_from_e,
  int           *data_ram,
  from_m_to_w_t *m_to_w);
#endif
