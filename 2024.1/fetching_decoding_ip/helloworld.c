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
#include "xfetching_decoding_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 15
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
XFetching_decoding_ip_Config *cfg_ptr;
XFetching_decoding_ip         ip;
word_type code_ram[CODE_RAM_SIZE]={
#include "test_op_imm_0_text.hex"
};
int main(){
  cfg_ptr = XFetching_decoding_ip_LookupConfig(XPAR_FETCHING_DECODING_IP_0_BASEADDR);
  XFetching_decoding_ip_CfgInitialize(&ip, cfg_ptr);
  XFetching_decoding_ip_Set_start_pc(&ip, 0);
  XFetching_decoding_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XFetching_decoding_ip_Start(&ip);
  while (!XFetching_decoding_ip_IsDone(&ip));
  printf("%d fetched and decoded instructions\n",
    (int)XFetching_decoding_ip_Get_nb_instruction(&ip));
}