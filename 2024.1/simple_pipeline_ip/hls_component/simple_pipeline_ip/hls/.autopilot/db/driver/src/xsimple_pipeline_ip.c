// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsimple_pipeline_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSimple_pipeline_ip_CfgInitialize(XSimple_pipeline_ip *InstancePtr, XSimple_pipeline_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSimple_pipeline_ip_Start(XSimple_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSimple_pipeline_ip_IsDone(XSimple_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSimple_pipeline_ip_IsIdle(XSimple_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSimple_pipeline_ip_IsReady(XSimple_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSimple_pipeline_ip_EnableAutoRestart(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSimple_pipeline_ip_DisableAutoRestart(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_AP_CTRL, 0);
}

void XSimple_pipeline_ip_Set_start_pc(XSimple_pipeline_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_START_PC_DATA, Data);
}

u32 XSimple_pipeline_ip_Get_start_pc(XSimple_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_START_PC_DATA);
    return Data;
}

u32 XSimple_pipeline_ip_Get_nb_instruction(XSimple_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_DATA);
    return Data;
}

u32 XSimple_pipeline_ip_Get_nb_instruction_vld(XSimple_pipeline_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_NB_INSTRUCTION_CTRL);
    return Data & 0x1;
}

u32 XSimple_pipeline_ip_Get_code_ram_BaseAddress(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE);
}

u32 XSimple_pipeline_ip_Get_code_ram_HighAddress(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_HIGH);
}

u32 XSimple_pipeline_ip_Get_code_ram_TotalBytes(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1);
}

u32 XSimple_pipeline_ip_Get_code_ram_BitWidth(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSIMPLE_PIPELINE_IP_CONTROL_WIDTH_CODE_RAM;
}

u32 XSimple_pipeline_ip_Get_code_ram_Depth(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSIMPLE_PIPELINE_IP_CONTROL_DEPTH_CODE_RAM;
}

u32 XSimple_pipeline_ip_Write_code_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XSimple_pipeline_ip_Read_code_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XSimple_pipeline_ip_Write_code_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XSimple_pipeline_ip_Read_code_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_CODE_RAM_BASE + offset + i);
    }
    return length;
}

u32 XSimple_pipeline_ip_Get_data_ram_BaseAddress(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE);
}

u32 XSimple_pipeline_ip_Get_data_ram_HighAddress(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_HIGH);
}

u32 XSimple_pipeline_ip_Get_data_ram_TotalBytes(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + 1);
}

u32 XSimple_pipeline_ip_Get_data_ram_BitWidth(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSIMPLE_PIPELINE_IP_CONTROL_WIDTH_DATA_RAM;
}

u32 XSimple_pipeline_ip_Get_data_ram_Depth(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSIMPLE_PIPELINE_IP_CONTROL_DEPTH_DATA_RAM;
}

u32 XSimple_pipeline_ip_Write_data_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XSimple_pipeline_ip_Read_data_ram_Words(XSimple_pipeline_ip *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + (offset + i)*4);
    }
    return length;
}

u32 XSimple_pipeline_ip_Write_data_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XSimple_pipeline_ip_Read_data_ram_Bytes(XSimple_pipeline_ip *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_HIGH - XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XSIMPLE_PIPELINE_IP_CONTROL_ADDR_DATA_RAM_BASE + offset + i);
    }
    return length;
}

void XSimple_pipeline_ip_InterruptGlobalEnable(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_GIE, 1);
}

void XSimple_pipeline_ip_InterruptGlobalDisable(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_GIE, 0);
}

void XSimple_pipeline_ip_InterruptEnable(XSimple_pipeline_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_IER);
    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_IER, Register | Mask);
}

void XSimple_pipeline_ip_InterruptDisable(XSimple_pipeline_ip *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_IER);
    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSimple_pipeline_ip_InterruptClear(XSimple_pipeline_ip *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSimple_pipeline_ip_WriteReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_ISR, Mask);
}

u32 XSimple_pipeline_ip_InterruptGetEnabled(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_IER);
}

u32 XSimple_pipeline_ip_InterruptGetStatus(XSimple_pipeline_ip *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSimple_pipeline_ip_ReadReg(InstancePtr->Control_BaseAddress, XSIMPLE_PIPELINE_IP_CONTROL_ADDR_ISR);
}

