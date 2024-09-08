/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "xmultihart_ip.h"
#include "xparameters.h"
#define LOG_NB_HART             2
#define NB_HART                (1<<LOG_NB_HART)
#define LOG_CODE_RAM_SIZE      15
//size in words
#define CODE_RAM_SIZE          (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE      15
//size in words
#define DATA_RAM_SIZE          (1<<LOG_DATA_RAM_SIZE)
#define LOG_HART_DATA_RAM_SIZE (LOG_DATA_RAM_SIZE-LOG_NB_HART)
#define HART_DATA_RAM_SIZE     (1<<LOG_HART_DATA_RAM_SIZE)
XMultihart_ip_Config *cfg_ptr;
XMultihart_ip         ip;
word_type code_ram[CODE_RAM_SIZE] = {
#include "test_mem_text.hex"
};
word_type start_pc[NB_HART]={0};
int main(){
  unsigned int nbi, nbc;
  word_type    w;
  cfg_ptr = XMultihart_ip_LookupConfig(XPAR_XMULTIHART_IP_0_BASEADDR);
  XMultihart_ip_CfgInitialize(&ip, cfg_ptr);
  XMultihart_ip_Set_running_hart_set(&ip, (1<<NB_HART)-1);
  XMultihart_ip_Write_start_pc_Words(&ip, 0, start_pc, NB_HART);
  XMultihart_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XMultihart_ip_Start(&ip);
  while (!XMultihart_ip_IsDone(&ip));
  nbi = XMultihart_ip_Get_nb_instruction(&ip);
  nbc = XMultihart_ip_Get_nb_cycle(&ip);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d data memory dump (non null words)\n", h);
    for (int i=0; i<HART_DATA_RAM_SIZE; i++){
      XMultihart_ip_Read_data_ram_Words
        (&ip, i+(((int)h)<<LOG_HART_DATA_RAM_SIZE), &w, 1);
      if (w != 0)
        printf("m[%5x] = %16d (%8x)\n",
                4*(i+(((int)h)<<LOG_HART_DATA_RAM_SIZE)),
                (int)w, (unsigned int)w);
    }
  }
}
