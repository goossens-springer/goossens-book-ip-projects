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
#include "xmulti_core_multi_ram_ip.h"

extern XMulti_core_multi_ram_ip_Config XMulti_core_multi_ram_ip_ConfigTable[];

#ifdef SDT
XMulti_core_multi_ram_ip_Config *XMulti_core_multi_ram_ip_LookupConfig(UINTPTR BaseAddress) {
	XMulti_core_multi_ram_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMulti_core_multi_ram_ip_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMulti_core_multi_ram_ip_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMulti_core_multi_ram_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMulti_core_multi_ram_ip_Initialize(XMulti_core_multi_ram_ip *InstancePtr, UINTPTR BaseAddress) {
	XMulti_core_multi_ram_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMulti_core_multi_ram_ip_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMulti_core_multi_ram_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMulti_core_multi_ram_ip_Config *XMulti_core_multi_ram_ip_LookupConfig(u16 DeviceId) {
	XMulti_core_multi_ram_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULTI_CORE_MULTI_RAM_IP_NUM_INSTANCES; Index++) {
		if (XMulti_core_multi_ram_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMulti_core_multi_ram_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMulti_core_multi_ram_ip_Initialize(XMulti_core_multi_ram_ip *InstancePtr, u16 DeviceId) {
	XMulti_core_multi_ram_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMulti_core_multi_ram_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMulti_core_multi_ram_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

