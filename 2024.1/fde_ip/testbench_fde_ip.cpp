#include <stdio.h>
#include "fde_ip.h"
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_op_imm_0_text.hex"
};
int main(){
  unsigned int nbi;
  fde_ip(0, code_ram, &nbi);
  printf("%d fetched, decoded and executed instructions\n",
          nbi);
  return 0;
}
