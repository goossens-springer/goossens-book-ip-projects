#include <stdio.h>
#include "fetching_ip.h"
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_op_imm_0_text.hex"
};
int main(){
  fetching_ip(0, code_ram);
  printf("done\n");
  return 0;
}
