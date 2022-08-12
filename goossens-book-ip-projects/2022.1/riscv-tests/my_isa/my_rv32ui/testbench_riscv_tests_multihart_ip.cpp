#include <stdio.h>
#include "../../../multihart_ip/multihart_ip.h"
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "test_0_data.hex"
},
{
#include "test_0_data.hex"
}
#if (NB_HART>2)
,{
#include "test_0_data.hex"
},
{
#include "test_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "test_0_data.hex"
},
{
#include "test_0_data.hex"
},
{
#include "test_0_data.hex"
},
{
#include "test_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_0_text.hex"
};
unsigned int start_pc[NB_HART];
char         name[][38] = {
  "addi  ", "add   ", "andi  ", "and   ", "auipc ",
  "beq   ", "bge   ", "bgeu  ", "blt   ", "bltu  ", "bne   ",
  "jalr  ", "jal   ",
  "lb    ", "lbu   ", "lh    ", "lhu   ", "lui   ", "lw    ",
  "ori   ", "or    ",
  "sb    ", "sh    ", "simple",
  "slli  ", "sll   ", "slti  ", "sltiu ", "slt   ", "sltu  ",
  "srai  ", "sra   ", "srli  ", "srl   ", "sub   ", "sw    ",
  "xori  ", "xor   "
};
int main(){
  unsigned int nbi, nbc;
  int          w;
  for (int i=0; i<NB_HART; i++) start_pc[i] = 0;
  multihart_ip((1<<NB_HART)-1,//start all harts
                start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", h);
    for (int i=0; i<38; i++){
      printf("%s:",name[i]);
      if (data_ram[h][0x801 + i]==0)
        printf(" all tests passed\n");
      else
        printf(" test %d failed\n",data_ram[h][0x801 + i]);
    }
  }
  return 0;
}
