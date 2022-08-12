#include <stdio.h>
#include "../../../simple_pipeline_ip/simple_pipeline_ip.h"
unsigned int data_ram[DATA_RAM_SIZE]={
#include "test_0_data.hex"
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "test_0_text.hex"
};
char        *name[38] = {
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
  unsigned int nbi;
  int          w;
  simple_pipeline_ip(0, (instruction_t*)code_ram, (int*)data_ram, &nbi);
  for (int i=0; i<38; i++){
    printf("%s:",name[i]);
    if (data_ram[0x801+i]==0)
      printf(" all tests passed\n");
    else
      printf(" test %d failed\n",data_ram[0x801+i]);
  }
  return 0;
}
