// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read/COR)
//          bit 7  - auto_restart (Read/Write)
//          bit 9  - interrupt (Read)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0 - enable ap_done interrupt (Read/Write)
//          bit 1 - enable ap_ready interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/COR)
//          bit 0 - ap_done (Read/COR)
//          bit 1 - ap_ready (Read/COR)
//          others - reserved
// 0x0010 : Data signal of ip_num
//          bit 31~0 - ip_num[31:0] (Read/Write)
// 0x0014 : reserved
// 0x0018 : Data signal of start_pc
//          bit 31~0 - start_pc[31:0] (Read/Write)
// 0x001c : reserved
// 0x0020 : Data signal of data_ram
//          bit 31~0 - data_ram[31:0] (Read/Write)
// 0x0024 : Data signal of data_ram
//          bit 31~0 - data_ram[63:32] (Read/Write)
// 0x0028 : reserved
// 0x002c : Data signal of nb_instruction
//          bit 31~0 - nb_instruction[31:0] (Read)
// 0x0030 : Control signal of nb_instruction
//          bit 0  - nb_instruction_ap_vld (Read/COR)
//          others - reserved
// 0x003c : Data signal of nb_cycle
//          bit 31~0 - nb_cycle[31:0] (Read)
// 0x0040 : Control signal of nb_cycle
//          bit 0  - nb_cycle_ap_vld (Read/COR)
//          others - reserved
// 0x8000 ~
// 0xffff : Memory 'ip_code_ram' (8192 * 32b)
//          Word n : bit [31:0] - ip_code_ram[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL             0x0000
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_GIE                 0x0004
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IER                 0x0008
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_ISR                 0x000c
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_NUM_DATA         0x0010
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_IP_NUM_DATA         32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_START_PC_DATA       0x0018
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_START_PC_DATA       32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_DATA       0x0020
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_DATA_RAM_DATA       64
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA 0x002c
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_NB_INSTRUCTION_DATA 32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL 0x0030
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_CYCLE_DATA       0x003c
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_NB_CYCLE_DATA       32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_CYCLE_CTRL       0x0040
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE    0x8000
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH    0xffff
#define XMULTICYCLE_PIPELINE_IP_CONTROL_WIDTH_IP_CODE_RAM        32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_DEPTH_IP_CODE_RAM        8192

