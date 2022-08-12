#ifndef __MEM
#define __MEM
#include "ap_int.h"
#include "multicycle_pipeline_ip.h"
int mem_load(
  int             *data_ram,
  b_data_address_t address,
  func3_t          msize);
void mem_store(
  int             *data_ram,
  b_data_address_t address,
  int              value,
  ap_uint<2>       msize);
#endif
