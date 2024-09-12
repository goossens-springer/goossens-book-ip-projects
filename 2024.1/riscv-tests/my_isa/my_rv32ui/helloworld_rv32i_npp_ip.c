#include <stdio.h>
#include "xrv32i_npp_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
XRv32i_npp_ip_Config *cfg_ptr;
XRv32i_npp_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "test_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "test_0_text.hex"
};
char     *name[38] = {
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
  cfg_ptr = XRv32i_npp_ip_LookupConfig(XPAR_XRV32I_NPP_IP_0_DEVICE_ID);
  XRv32i_npp_ip_CfgInitialize(&ip, cfg_ptr);
  XRv32i_npp_ip_Set_start_pc(&ip, 0);
  XRv32i_npp_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XRv32i_npp_ip_Write_data_ram_Words(&ip, 0, data_ram, DATA_RAM_SIZE);
  XRv32i_npp_ip_Start(&ip);
  while (!XRv32i_npp_ip_IsDone(&ip));
  for (int i=0; i<38; i++){
    printf("%s:",name[i]);
    XRv32i_npp_ip_Read_data_ram_Words(&ip, 0x801+i, &d, 1);
    if (d == 0)
      printf(" all tests passed\n");
    else
      printf(" test %d failed\n",(int)d);
  }
}
