// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmy_adder_ip.h"

extern XMy_adder_ip_Config XMy_adder_ip_ConfigTable[];

#ifdef SDT
XMy_adder_ip_Config *XMy_adder_ip_LookupConfig(UINTPTR BaseAddress) {
	XMy_adder_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMy_adder_ip_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMy_adder_ip_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMy_adder_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMy_adder_ip_Initialize(XMy_adder_ip *InstancePtr, UINTPTR BaseAddress) {
	XMy_adder_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMy_adder_ip_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMy_adder_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMy_adder_ip_Config *XMy_adder_ip_LookupConfig(u16 DeviceId) {
	XMy_adder_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMY_ADDER_IP_NUM_INSTANCES; Index++) {
		if (XMy_adder_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMy_adder_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMy_adder_ip_Initialize(XMy_adder_ip *InstancePtr, u16 DeviceId) {
	XMy_adder_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMy_adder_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMy_adder_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

