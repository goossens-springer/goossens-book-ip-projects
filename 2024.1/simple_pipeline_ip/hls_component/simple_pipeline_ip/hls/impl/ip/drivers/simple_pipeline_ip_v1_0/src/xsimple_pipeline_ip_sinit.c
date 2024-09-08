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
#include "xsimple_pipeline_ip.h"

extern XSimple_pipeline_ip_Config XSimple_pipeline_ip_ConfigTable[];

#ifdef SDT
XSimple_pipeline_ip_Config *XSimple_pipeline_ip_LookupConfig(UINTPTR BaseAddress) {
	XSimple_pipeline_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSimple_pipeline_ip_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSimple_pipeline_ip_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XSimple_pipeline_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimple_pipeline_ip_Initialize(XSimple_pipeline_ip *InstancePtr, UINTPTR BaseAddress) {
	XSimple_pipeline_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimple_pipeline_ip_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimple_pipeline_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSimple_pipeline_ip_Config *XSimple_pipeline_ip_LookupConfig(u16 DeviceId) {
	XSimple_pipeline_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIMPLE_PIPELINE_IP_NUM_INSTANCES; Index++) {
		if (XSimple_pipeline_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSimple_pipeline_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimple_pipeline_ip_Initialize(XSimple_pipeline_ip *InstancePtr, u16 DeviceId) {
	XSimple_pipeline_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimple_pipeline_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimple_pipeline_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

