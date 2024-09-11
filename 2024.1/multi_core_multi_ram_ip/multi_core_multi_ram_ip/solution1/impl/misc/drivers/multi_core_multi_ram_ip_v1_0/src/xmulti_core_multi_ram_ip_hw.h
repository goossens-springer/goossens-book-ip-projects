// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/COR)
//        bit 0 - ap_done (Read/COR)
//        bit 1 - ap_ready (Read/COR)
//        others - reserved
// 0x10 : Data signal of ip_num
//        bit 31~0 - ip_num[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of data_ram
//        bit 31~0 - data_ram[31:0] (Read/Write)
// 0x1c : Data signal of data_ram
//        bit 31~0 - data_ram[63:32] (Read/Write)
// 0x20 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL       0x00
#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_GIE           0x04
#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IER           0x08
#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_ISR           0x0c
#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IP_NUM_DATA   0x10
#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_BITS_IP_NUM_DATA   32
#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_DATA_RAM_DATA 0x18
#define XMULTI_CORE_MULTI_RAM_IP_CONTROL_BITS_DATA_RAM_DATA 64

