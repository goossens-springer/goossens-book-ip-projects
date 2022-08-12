// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfetching_ip.h"

extern XFetching_ip_Config XFetching_ip_ConfigTable[];

XFetching_ip_Config *XFetching_ip_LookupConfig(u16 DeviceId) {
	XFetching_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFETCHING_IP_NUM_INSTANCES; Index++) {
		if (XFetching_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFetching_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFetching_ip_Initialize(XFetching_ip *InstancePtr, u16 DeviceId) {
	XFetching_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFetching_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFetching_ip_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

