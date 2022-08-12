#include "fetching_ip.h"
static code_address_t compute_next_pc(
  code_address_t pc){
#pragma HLS INLINE
  return (code_address_t)(pc + 1);
}
void execute(
  code_address_t  pc,
  code_address_t *next_pc){
#pragma HLS INLINE off
  *next_pc = compute_next_pc(pc);
}
