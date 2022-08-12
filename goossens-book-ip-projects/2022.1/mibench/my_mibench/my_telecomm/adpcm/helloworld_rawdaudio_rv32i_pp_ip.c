#include <stdio.h>
#include "xrv32i_pp_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
#define OUTPUT 0x20e4
#define LENGTH 0x76d4
#define STATE  0x76d8
XRv32i_pp_ip_Config *cfg_ptr;
XRv32i_pp_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "rawdaudio_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "rawdaudio_no_print_0_text.hex"
};
int main(){
  unsigned int   nbi, nbc;
  unsigned int   i, j;
  word_type      length;
  unsigned short valprev;
  char           index, valprev0, valprev1, c;
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
  XRv32i_pp_ip_Read_data_ram_Bytes(&ip, STATE+0, &valprev0, 1);
  XRv32i_pp_ip_Read_data_ram_Bytes(&ip, STATE+1, &valprev1, 1);
  valprev = (((unsigned short)valprev1)<<8)|((unsigned short)valprev0);
  XRv32i_pp_ip_Read_data_ram_Bytes(&ip, STATE+2, &index,  1);
  XRv32i_pp_ip_Read_data_ram_Words(&ip, LENGTH/4, &length, 1);
  printf("Final valprev=%d, index=%d\n", valprev, index);
  for (i=0; i<length/20; i++){
    for (j=0; j<20; j++){
      XRv32i_pp_ip_Read_data_ram_Bytes(&ip, OUTPUT+i*20+j, &c, 1);
      printf("%3d ", c);
    }
    printf("\n");
  }
  for (j=0; j<length%20; j++){
    XRv32i_pp_ip_Read_data_ram_Bytes(&ip, OUTPUT+i*20+j, &c, 1);
    printf("%3d ", c);
  }
  printf("\n");
  nbi = (unsigned int)XRv32i_pp_ip_Get_nb_instruction(&ip);
  nbc = (unsigned int)XRv32i_pp_ip_Get_nb_cycle(&ip);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
