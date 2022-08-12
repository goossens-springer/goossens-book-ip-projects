#include <stdio.h>
#include "fetching_decoding_ip.h"
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_op_imm_0_text.hex"
};
int main() {
  unsigned int nbi;
  fetching_decoding_ip(0, code_ram, &nbi);
  printf("%d fetched and decoded instructions\n", nbi);
  return 0;
}
