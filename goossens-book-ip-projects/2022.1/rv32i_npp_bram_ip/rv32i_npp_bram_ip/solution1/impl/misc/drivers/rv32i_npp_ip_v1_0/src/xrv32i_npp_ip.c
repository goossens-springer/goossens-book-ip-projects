// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xrv32i_npp_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRv32i_npp_ip_CfgInitialize(XRv32i_npp_ip *InstancePtr, XRv32i_npp_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRv32i_npp_ip_Start(XRv32i_npp_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRv32i_npp_ip_IsDone(XRv32i_npp_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRv32i_npp_ip_IsIdle(XRv32i_npp_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRv32i_npp_ip_IsReady(XRv32i_npp_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRv32i_npp_ip_EnableAutoRestart(XRv32i_npp_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XRv32i_npp_ip_DisableAutoRestart(XRv32i_npp_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XRv32i_npp_ip_Set_start_pc(XRv32i_npp_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_START_PC_DATA, Data);
}

u32 XRv32i_npp_ip_Get_start_pc(XRv32i_npp_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_START_PC_DATA);
    return Data;
}

u32 XRv32i_npp_ip_Get_nb_instruction(XRv32i_npp_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA);
    return Data;
}

u32 XRv32i_npp_ip_Get_nb_instruction_vld(XRv32i_npp_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL);
    return Data & 0x1;
}

void XRv32i_npp_ip_InterruptGlobalEnable(XRv32i_npp_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_GIE, 1);
}

void XRv32i_npp_ip_InterruptGlobalDisable(XRv32i_npp_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_GIE, 0);
}

void XRv32i_npp_ip_InterruptEnable(XRv32i_npp_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_IER);
    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XRv32i_npp_ip_InterruptDisable(XRv32i_npp_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_IER);
    XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XRv32i_npp_ip_InterruptClear(XRv32i_npp_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XRv32i_npp_ip_WriteReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XRv32i_npp_ip_InterruptGetEnabled(XRv32i_npp_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_IER);
}

u32 XRv32i_npp_ip_InterruptGetStatus(XRv32i_npp_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XRv32i_npp_ip_ReadReg(InstancePtr->Control_BaseAddress, XRV32I_NPP_IP_CONTROL_ADDR_ISR);
}

