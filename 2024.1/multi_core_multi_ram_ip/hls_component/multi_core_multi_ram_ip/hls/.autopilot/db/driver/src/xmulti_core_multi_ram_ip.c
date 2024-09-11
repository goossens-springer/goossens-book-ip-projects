// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmulti_core_multi_ram_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMulti_core_multi_ram_ip_CfgInitialize(XMulti_core_multi_ram_ip *InstancePtr, XMulti_core_multi_ram_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMulti_core_multi_ram_ip_Start(XMulti_core_multi_ram_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMulti_core_multi_ram_ip_IsDone(XMulti_core_multi_ram_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMulti_core_multi_ram_ip_IsIdle(XMulti_core_multi_ram_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMulti_core_multi_ram_ip_IsReady(XMulti_core_multi_ram_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMulti_core_multi_ram_ip_EnableAutoRestart(XMulti_core_multi_ram_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMulti_core_multi_ram_ip_DisableAutoRestart(XMulti_core_multi_ram_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XMulti_core_multi_ram_ip_Set_ip_num(XMulti_core_multi_ram_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IP_NUM_DATA, Data);
}

u32 XMulti_core_multi_ram_ip_Get_ip_num(XMulti_core_multi_ram_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IP_NUM_DATA);
    return Data;
}

void XMulti_core_multi_ram_ip_Set_data_ram(XMulti_core_multi_ram_ip *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_DATA_RAM_DATA, (u32)(Data));
    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_DATA_RAM_DATA + 4, (u32)(Data >> 32));
}

u64 XMulti_core_multi_ram_ip_Get_data_ram(XMulti_core_multi_ram_ip *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_DATA_RAM_DATA);
    Data += (u64)XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_DATA_RAM_DATA + 4) << 32;
    return Data;
}

void XMulti_core_multi_ram_ip_InterruptGlobalEnable(XMulti_core_multi_ram_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_GIE, 1);
}

void XMulti_core_multi_ram_ip_InterruptGlobalDisable(XMulti_core_multi_ram_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_GIE, 0);
}

void XMulti_core_multi_ram_ip_InterruptEnable(XMulti_core_multi_ram_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IER);
    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XMulti_core_multi_ram_ip_InterruptDisable(XMulti_core_multi_ram_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IER);
    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMulti_core_multi_ram_ip_InterruptClear(XMulti_core_multi_ram_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulti_core_multi_ram_ip_WriteReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XMulti_core_multi_ram_ip_InterruptGetEnabled(XMulti_core_multi_ram_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_IER);
}

u32 XMulti_core_multi_ram_ip_InterruptGetStatus(XMulti_core_multi_ram_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMulti_core_multi_ram_ip_ReadReg(InstancePtr->Control_BaseAddress, XMULTI_CORE_MULTI_RAM_IP_CONTROL_ADDR_ISR);
}

