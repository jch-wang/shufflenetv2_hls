// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xshufflenetv2.h"

extern XShufflenetv2_Config XShufflenetv2_ConfigTable[];

XShufflenetv2_Config *XShufflenetv2_LookupConfig(u16 DeviceId) {
	XShufflenetv2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSHUFFLENETV2_NUM_INSTANCES; Index++) {
		if (XShufflenetv2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XShufflenetv2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XShufflenetv2_Initialize(XShufflenetv2 *InstancePtr, u16 DeviceId) {
	XShufflenetv2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XShufflenetv2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XShufflenetv2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

