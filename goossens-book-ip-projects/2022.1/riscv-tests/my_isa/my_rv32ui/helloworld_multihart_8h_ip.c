#include <stdio.h>
#include "xmultihart_ip.h"
#include "xparameters.h"
#define LOG_NB_HART             3
#define NB_HART                (1<<LOG_NB_HART)
#define LOG_CODE_RAM_SIZE      16
//size in words
#define CODE_RAM_SIZE          (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE      16
//size in words
#define DATA_RAM_SIZE          (1<<LOG_DATA_RAM_SIZE)
#define LOG_HART_DATA_RAM_SIZE (LOG_DATA_RAM_SIZE-LOG_NB_HART)
#define HART_DATA_RAM_SIZE     (1<<LOG_HART_DATA_RAM_SIZE)
XMultihart_ip_Config *cfg_ptr;
XMultihart_ip         ip;
word_type start_pc[NB_HART]={0};
word_type data_ram[HART_DATA_RAM_SIZE]={
#include "test_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "test_0_text.hex"
};
char      name[][38] = {
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
  word_type d;
  cfg_ptr = XMultihart_ip_LookupConfig
    (XPAR_XMULTIHART_IP_0_DEVICE_ID);
  XMultihart_ip_CfgInitialize(&ip, cfg_ptr);
  XMultihart_ip_Set_running_hart_set(&ip, (1<<NB_HART)-1);
  XMultihart_ip_Write_start_pc_Words
    (&ip, 0, start_pc, NB_HART);
  XMultihart_ip_Write_code_ram_Words
    (&ip, 0, code_ram, CODE_RAM_SIZE);
  for (int h=0; h<NB_HART; h++)
    XMultihart_ip_Write_data_ram_Words
      (&ip, h<<LOG_HART_DATA_RAM_SIZE, data_ram, HART_DATA_RAM_SIZE);
  XMultihart_ip_Start(&ip);
  while (!XMultihart_ip_IsDone(&ip));
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", h);
    for (int i=0; i<38; i++){
      printf("%s:",name[i]);
      XMultihart_ip_Read_data_ram_Words(&ip, (h<<LOG_HART_DATA_RAM_SIZE) + 0x801 + i, &d, 1);
      if (d == 0)
        printf(" all tests passed\n");
      else
        printf(" test %d failed\n",(int)d);
    }
  }
}

