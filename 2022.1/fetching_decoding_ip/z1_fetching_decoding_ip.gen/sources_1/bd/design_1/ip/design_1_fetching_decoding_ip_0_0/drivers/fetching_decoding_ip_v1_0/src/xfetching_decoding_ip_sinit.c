// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfetching_decoding_ip.h"

extern XFetching_decoding_ip_Config XFetching_decoding_ip_ConfigTable[];

XFetching_decoding_ip_Config *XFetching_decoding_ip_LookupConfig(u16 DeviceId) {
	XFetching_decoding_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFETCHING_DECODING_IP_NUM_INSTANCES; Index++) {
		if (XFetching_decoding_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFetching_decoding_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFetching_decoding_ip_Initialize(XFetching_decoding_ip *InstancePtr, u16 DeviceId) {
	XFetching_decoding_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFetching_decoding_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFetching_decoding_ip_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

