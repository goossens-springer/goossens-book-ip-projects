// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMY_ADDER_IP_H
#define XMY_ADDER_IP_H

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
#include "xmy_adder_ip_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMy_adder_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMy_adder_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMy_adder_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMy_adder_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMy_adder_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMy_adder_ip_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XMy_adder_ip_Initialize(XMy_adder_ip *InstancePtr, UINTPTR BaseAddress);
XMy_adder_ip_Config* XMy_adder_ip_LookupConfig(UINTPTR BaseAddress);
#else
int XMy_adder_ip_Initialize(XMy_adder_ip *InstancePtr, u16 DeviceId);
XMy_adder_ip_Config* XMy_adder_ip_LookupConfig(u16 DeviceId);
#endif
int XMy_adder_ip_CfgInitialize(XMy_adder_ip *InstancePtr, XMy_adder_ip_Config *ConfigPtr);
#else
int XMy_adder_ip_Initialize(XMy_adder_ip *InstancePtr, const char* InstanceName);
int XMy_adder_ip_Release(XMy_adder_ip *InstancePtr);
#endif

void XMy_adder_ip_Start(XMy_adder_ip *InstancePtr);
u32 XMy_adder_ip_IsDone(XMy_adder_ip *InstancePtr);
u32 XMy_adder_ip_IsIdle(XMy_adder_ip *InstancePtr);
u32 XMy_adder_ip_IsReady(XMy_adder_ip *InstancePtr);
void XMy_adder_ip_EnableAutoRestart(XMy_adder_ip *InstancePtr);
void XMy_adder_ip_DisableAutoRestart(XMy_adder_ip *InstancePtr);

void XMy_adder_ip_Set_a(XMy_adder_ip *InstancePtr, u32 Data);
u32 XMy_adder_ip_Get_a(XMy_adder_ip *InstancePtr);
void XMy_adder_ip_Set_b(XMy_adder_ip *InstancePtr, u32 Data);
u32 XMy_adder_ip_Get_b(XMy_adder_ip *InstancePtr);
u32 XMy_adder_ip_Get_c(XMy_adder_ip *InstancePtr);
u32 XMy_adder_ip_Get_c_vld(XMy_adder_ip *InstancePtr);

void XMy_adder_ip_InterruptGlobalEnable(XMy_adder_ip *InstancePtr);
void XMy_adder_ip_InterruptGlobalDisable(XMy_adder_ip *InstancePtr);
void XMy_adder_ip_InterruptEnable(XMy_adder_ip *InstancePtr, u32 Mask);
void XMy_adder_ip_InterruptDisable(XMy_adder_ip *InstancePtr, u32 Mask);
void XMy_adder_ip_InterruptClear(XMy_adder_ip *InstancePtr, u32 Mask);
u32 XMy_adder_ip_InterruptGetEnabled(XMy_adder_ip *InstancePtr);
u32 XMy_adder_ip_InterruptGetStatus(XMy_adder_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
