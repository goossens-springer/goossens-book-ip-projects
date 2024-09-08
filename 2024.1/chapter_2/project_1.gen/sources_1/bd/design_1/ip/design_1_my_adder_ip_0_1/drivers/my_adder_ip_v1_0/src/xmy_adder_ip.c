// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmy_adder_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMy_adder_ip_CfgInitialize(XMy_adder_ip *InstancePtr, XMy_adder_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMy_adder_ip_Start(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMy_adder_ip_IsDone(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMy_adder_ip_IsIdle(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMy_adder_ip_IsReady(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMy_adder_ip_EnableAutoRestart(XMy_adder_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMy_adder_ip_DisableAutoRestart(XMy_adder_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XMy_adder_ip_Set_a(XMy_adder_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_A_DATA, Data);
}

u32 XMy_adder_ip_Get_a(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_A_DATA);
    return Data;
}

void XMy_adder_ip_Set_b(XMy_adder_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_B_DATA, Data);
}

u32 XMy_adder_ip_Get_b(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_B_DATA);
    return Data;
}

u32 XMy_adder_ip_Get_c(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_C_DATA);
    return Data;
}

u32 XMy_adder_ip_Get_c_vld(XMy_adder_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_C_CTRL);
    return Data & 0x1;
}

void XMy_adder_ip_InterruptGlobalEnable(XMy_adder_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_GIE, 1);
}

void XMy_adder_ip_InterruptGlobalDisable(XMy_adder_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_GIE, 0);
}

void XMy_adder_ip_InterruptEnable(XMy_adder_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_IER);
    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XMy_adder_ip_InterruptDisable(XMy_adder_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_IER);
    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMy_adder_ip_InterruptClear(XMy_adder_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_adder_ip_WriteReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XMy_adder_ip_InterruptGetEnabled(XMy_adder_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_IER);
}

u32 XMy_adder_ip_InterruptGetStatus(XMy_adder_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMy_adder_ip_ReadReg(InstancePtr->Control_BaseAddress, XMY_ADDER_IP_CONTROL_ADDR_ISR);
}

