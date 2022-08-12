// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMULTI_CORE_MULTI_RAM_IP_H
#define XMULTI_CORE_MULTI_RAM_IP_H

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
#include "xmulti_core_multi_ram_ip_hw.h"

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
} XMulti_core_multi_ram_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMulti_core_multi_ram_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMulti_core_multi_ram_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMulti_core_multi_ram_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMulti_core_multi_ram_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMulti_core_multi_ram_ip_ReadReg(BaseAddress, RegOffset) \
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
int XMulti_core_multi_ram_ip_Initialize(XMulti_core_multi_ram_ip *InstancePtr, u16 DeviceId);
XMulti_core_multi_ram_ip_Config* XMulti_core_multi_ram_ip_LookupConfig(u16 DeviceId);
int XMulti_core_multi_ram_ip_CfgInitialize(XMulti_core_multi_ram_ip *InstancePtr, XMulti_core_multi_ram_ip_Config *ConfigPtr);
#else
int XMulti_core_multi_ram_ip_Initialize(XMulti_core_multi_ram_ip *InstancePtr, const char* InstanceName);
int XMulti_core_multi_ram_ip_Release(XMulti_core_multi_ram_ip *InstancePtr);
#endif

void XMulti_core_multi_ram_ip_Start(XMulti_core_multi_ram_ip *InstancePtr);
u32 XMulti_core_multi_ram_ip_IsDone(XMulti_core_multi_ram_ip *InstancePtr);
u32 XMulti_core_multi_ram_ip_IsIdle(XMulti_core_multi_ram_ip *InstancePtr);
u32 XMulti_core_multi_ram_ip_IsReady(XMulti_core_multi_ram_ip *InstancePtr);
void XMulti_core_multi_ram_ip_EnableAutoRestart(XMulti_core_multi_ram_ip *InstancePtr);
void XMulti_core_multi_ram_ip_DisableAutoRestart(XMulti_core_multi_ram_ip *InstancePtr);

void XMulti_core_multi_ram_ip_Set_ip_num(XMulti_core_multi_ram_ip *InstancePtr, u32 Data);
u32 XMulti_core_multi_ram_ip_Get_ip_num(XMulti_core_multi_ram_ip *InstancePtr);
void XMulti_core_multi_ram_ip_Set_data_ram(XMulti_core_multi_ram_ip *InstancePtr, u64 Data);
u64 XMulti_core_multi_ram_ip_Get_data_ram(XMulti_core_multi_ram_ip *InstancePtr);

void XMulti_core_multi_ram_ip_InterruptGlobalEnable(XMulti_core_multi_ram_ip *InstancePtr);
void XMulti_core_multi_ram_ip_InterruptGlobalDisable(XMulti_core_multi_ram_ip *InstancePtr);
void XMulti_core_multi_ram_ip_InterruptEnable(XMulti_core_multi_ram_ip *InstancePtr, u32 Mask);
void XMulti_core_multi_ram_ip_InterruptDisable(XMulti_core_multi_ram_ip *InstancePtr, u32 Mask);
void XMulti_core_multi_ram_ip_InterruptClear(XMulti_core_multi_ram_ip *InstancePtr, u32 Mask);
u32 XMulti_core_multi_ram_ip_InterruptGetEnabled(XMulti_core_multi_ram_ip *InstancePtr);
u32 XMulti_core_multi_ram_ip_InterruptGetStatus(XMulti_core_multi_ram_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
