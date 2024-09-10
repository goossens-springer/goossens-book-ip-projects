// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMULTICYCLE_PIPELINE_IP_H
#define XMULTICYCLE_PIPELINE_IP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmulticycle_pipeline_ip_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XMulticycle_pipeline_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMulticycle_pipeline_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMulticycle_pipeline_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMulticycle_pipeline_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMulticycle_pipeline_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMulticycle_pipeline_ip_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMulticycle_pipeline_ip_Initialize(XMulticycle_pipeline_ip *InstancePtr, u16 DeviceId);
XMulticycle_pipeline_ip_Config* XMulticycle_pipeline_ip_LookupConfig(u16 DeviceId);
int XMulticycle_pipeline_ip_CfgInitialize(XMulticycle_pipeline_ip *InstancePtr, XMulticycle_pipeline_ip_Config *ConfigPtr);
#else
int XMulticycle_pipeline_ip_Initialize(XMulticycle_pipeline_ip *InstancePtr, const char* InstanceName);
int XMulticycle_pipeline_ip_Release(XMulticycle_pipeline_ip *InstancePtr);
#endif

void XMulticycle_pipeline_ip_Start(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_IsDone(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_IsIdle(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_IsReady(XMulticycle_pipeline_ip *InstancePtr);
void XMulticycle_pipeline_ip_EnableAutoRestart(XMulticycle_pipeline_ip *InstancePtr);
void XMulticycle_pipeline_ip_DisableAutoRestart(XMulticycle_pipeline_ip *InstancePtr);

void XMulticycle_pipeline_ip_Set_ip_num(XMulticycle_pipeline_ip *InstancePtr, u32 Data);
u32 XMulticycle_pipeline_ip_Get_ip_num(XMulticycle_pipeline_ip *InstancePtr);
void XMulticycle_pipeline_ip_Set_start_pc(XMulticycle_pipeline_ip *InstancePtr, u32 Data);
u32 XMulticycle_pipeline_ip_Get_start_pc(XMulticycle_pipeline_ip *InstancePtr);
void XMulticycle_pipeline_ip_Set_data_ram(XMulticycle_pipeline_ip *InstancePtr, u64 Data);
u64 XMulticycle_pipeline_ip_Get_data_ram(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_nb_instruction(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_nb_instruction_vld(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_nb_cycle(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_nb_cycle_vld(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_ip_code_ram_BaseAddress(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_ip_code_ram_HighAddress(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_ip_code_ram_TotalBytes(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_ip_code_ram_BitWidth(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Get_ip_code_ram_Depth(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_Write_ip_code_ram_Words(XMulticycle_pipeline_ip *InstancePtr, int offset, word_type *data, int length);
u32 XMulticycle_pipeline_ip_Read_ip_code_ram_Words(XMulticycle_pipeline_ip *InstancePtr, int offset, word_type *data, int length);
u32 XMulticycle_pipeline_ip_Write_ip_code_ram_Bytes(XMulticycle_pipeline_ip *InstancePtr, int offset, char *data, int length);
u32 XMulticycle_pipeline_ip_Read_ip_code_ram_Bytes(XMulticycle_pipeline_ip *InstancePtr, int offset, char *data, int length);

void XMulticycle_pipeline_ip_InterruptGlobalEnable(XMulticycle_pipeline_ip *InstancePtr);
void XMulticycle_pipeline_ip_InterruptGlobalDisable(XMulticycle_pipeline_ip *InstancePtr);
void XMulticycle_pipeline_ip_InterruptEnable(XMulticycle_pipeline_ip *InstancePtr, u32 Mask);
void XMulticycle_pipeline_ip_InterruptDisable(XMulticycle_pipeline_ip *InstancePtr, u32 Mask);
void XMulticycle_pipeline_ip_InterruptClear(XMulticycle_pipeline_ip *InstancePtr, u32 Mask);
u32 XMulticycle_pipeline_ip_InterruptGetEnabled(XMulticycle_pipeline_ip *InstancePtr);
u32 XMulticycle_pipeline_ip_InterruptGetStatus(XMulticycle_pipeline_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
