#include <stdio.h>
#include "xsimple_pipeline_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
#define NUM_DISCS         13
#define NUM_MOVES         ((1<<NUM_DISCS)-1)
#define RESULT            0x74
XSimple_pipeline_ip_Config *cfg_ptr;
XSimple_pipeline_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "towers_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "towers_no_print_0_text.hex"
};
int main(){
  int  i;
  char c0, c1;
  cfg_ptr = XSimple_pipeline_ip_LookupConfig
    (XPAR_XSIMPLE_PIPELINE_IP_0_DEVICE_ID);
  XSimple_pipeline_ip_CfgInitialize(&ip, cfg_ptr);
  XSimple_pipeline_ip_Set_start_pc(&ip, 0);
  XSimple_pipeline_ip_Write_code_ram_Words
    (&ip, 0, code_ram, CODE_RAM_SIZE);
  XSimple_pipeline_ip_Write_data_ram_Words
    (&ip, 0, data_ram, DATA_RAM_SIZE);
  XSimple_pipeline_ip_Start(&ip);
  while (!XSimple_pipeline_ip_IsDone(&ip));
  printf("result for 6 first moves\n");
  for (i=0; i<12; i+=2){
    XSimple_pipeline_ip_Read_data_ram_Bytes(&ip, RESULT+i,   &c0, 1);
    XSimple_pipeline_ip_Read_data_ram_Bytes(&ip, RESULT+i+1, &c1, 1);
    printf("top disc moves from %c to %c\n", c0, c1);
  }
  printf("result for 6 last moves\n");
  for (i=2*NUM_MOVES-12; i<2*NUM_MOVES; i+=2){
    XSimple_pipeline_ip_Read_data_ram_Bytes(&ip, RESULT+i,   &c0, 1);
    XSimple_pipeline_ip_Read_data_ram_Bytes(&ip, RESULT+i+1, &c1, 1);
    printf("top disc moves from %c to %c\n", c0, c1);
  }
  printf("%d fetched, decoded and run instructions\n",
        (int)XSimple_pipeline_ip_Get_nb_instruction(&ip));
  return 0;
}

