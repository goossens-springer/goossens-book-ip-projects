#include <stdio.h>
#include "xrv32i_pp_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
#define RESULT            0xa68
#define FUNCS             7
XRv32i_pp_ip_Config *cfg_ptr;
XRv32i_pp_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "bitcnts_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "bitcnts_no_print_0_text.hex"
};
int main(){
  unsigned int nbi, nbc;
  int          i;
  word_type    n;
  cfg_ptr = XRv32i_pp_ip_LookupConfig
    (XPAR_XRV32I_PP_IP_0_DEVICE_ID);
  XRv32i_pp_ip_CfgInitialize(&ip, cfg_ptr);
  XRv32i_pp_ip_Set_start_pc(&ip, 0);
  XRv32i_pp_ip_Write_code_ram_Words
    (&ip, 0, code_ram, CODE_RAM_SIZE);
  XRv32i_pp_ip_Write_data_ram_Words
    (&ip, 0, data_ram, DATA_RAM_SIZE);
  XRv32i_pp_ip_Start(&ip);
  while (!XRv32i_pp_ip_IsDone(&ip));
  for (i=0; i<FUNCS; i++){
    XRv32i_pp_ip_Read_data_ram_Words(&ip, RESULT/4+i, &n, 1);
    printf("Bits: %d\n", (int)n);
  }
  nbi = (unsigned int)XRv32i_pp_ip_Get_nb_instruction(&ip);
  nbc = (unsigned int)XRv32i_pp_ip_Get_nb_cycle(&ip);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}

