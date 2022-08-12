// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read/COR)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read/COR)
//           bit 7  - auto_restart (Read/Write)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0 - enable ap_done interrupt (Read/Write)
//           bit 1 - enable ap_ready interrupt (Read/Write)
//           bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/TOW)
//           bit 0 - ap_done (COR/TOW)
//           bit 1 - ap_ready (COR/TOW)
//           bit 5 - ap_local_deadlock (COR/TOW)
//           others - reserved
// 0x00010 : Data signal of ip_num
//           bit 31~0 - ip_num[31:0] (Read/Write)
// 0x00014 : reserved
// 0x00018 : Data signal of start_pc
//           bit 31~0 - start_pc[31:0] (Read/Write)
// 0x0001c : reserved
// 0x00020 : Data signal of data_ram
//           bit 31~0 - data_ram[31:0] (Read/Write)
// 0x00024 : Data signal of data_ram
//           bit 31~0 - data_ram[63:32] (Read/Write)
// 0x00028 : reserved
// 0x0002c : Data signal of nb_instruction
//           bit 31~0 - nb_instruction[31:0] (Read)
// 0x00030 : Control signal of nb_instruction
//           bit 0  - nb_instruction_ap_vld (Read/COR)
//           others - reserved
// 0x0003c : Data signal of nb_cycle
//           bit 31~0 - nb_cycle[31:0] (Read)
// 0x00040 : Control signal of nb_cycle
//           bit 0  - nb_cycle_ap_vld (Read/COR)
//           others - reserved
// 0x20000 ~
// 0x3ffff : Memory 'ip_code_ram' (32768 * 32b)
//           Word n : bit [31:0] - ip_code_ram[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL             0x00000
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_GIE                 0x00004
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IER                 0x00008
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_ISR                 0x0000c
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_NUM_DATA         0x00010
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_IP_NUM_DATA         32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_START_PC_DATA       0x00018
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_START_PC_DATA       32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_DATA       0x00020
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_DATA_RAM_DATA       64
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA 0x0002c
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_NB_INSTRUCTION_DATA 32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL 0x00030
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_CYCLE_DATA       0x0003c
#define XMULTICYCLE_PIPELINE_IP_CONTROL_BITS_NB_CYCLE_DATA       32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_NB_CYCLE_CTRL       0x00040
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_BASE    0x20000
#define XMULTICYCLE_PIPELINE_IP_CONTROL_ADDR_IP_CODE_RAM_HIGH    0x3ffff
#define XMULTICYCLE_PIPELINE_IP_CONTROL_WIDTH_IP_CODE_RAM        32
#define XMULTICYCLE_PIPELINE_IP_CONTROL_DEPTH_IP_CODE_RAM        32768

