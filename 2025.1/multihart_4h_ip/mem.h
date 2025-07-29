#ifndef __MEM
#define __MEM
#include "ap_int.h"
#include "multihart_ip.h"
int mem_load(
  hart_num_t       hart,
  int              data_ram[][HART_DATA_RAM_SIZE],
  b_data_address_t address,
  func3_t          msize);
void mem_store(
  hart_num_t       hart,
  int              data_ram[][HART_DATA_RAM_SIZE],
  b_data_address_t address,
  int              value,
  ap_uint<2>       msize);
#endif
