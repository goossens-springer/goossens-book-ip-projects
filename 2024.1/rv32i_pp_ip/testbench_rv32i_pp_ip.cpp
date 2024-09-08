#include <stdio.h>
#include "rv32i_pp_ip.h"
int          data_ram[DATA_RAM_SIZE];
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_mem_0_text.hex"
};
int main() {
  unsigned int nbi;
  unsigned int nbc;
  int           w;
  rv32i_pp_ip(0, code_ram, data_ram, &nbi, &nbc);
  printf("%ld fetched and decoded instructions\
 in %ld cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  printf("data memory dump (non null words)\n");
  for (int i=0; i<DATA_RAM_SIZE; i++){
    w = data_ram[i];
    if (w != 0)
      printf("m[%5x] = %16d (%8x)\n", 4*i, w, (unsigned int)w);
  }
  return 0;
}
