// ECE527 Fall 2017
// University of Illinois, Urbana-Champaign
// Author - Sitao Huang, Ashutosh Dhar
// Demo code of LeNet Convolutional Neural Network
// *****************************************
// Before running the code make that the following files are on the SD card
// 1. images.bin
// 2. labels.bin
// 3. params.bin
// This code demos inference on the MNIST dataset with a LeNet CNN
// Provided network parameters have been training already and should give an accuracy of ~98.39%

#include <c++/6.2.1/iostream>
#include <c++/6.2.1/cmath>
#include <c++/6.2.1/algorithm>
#include <c++/6.2.1/fstream>
#include <c++/6.2.1/vector>
#include <c++/6.2.1/array>

#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"			/* SD device driver */
#include "xil_printf.h"
#include "ff.h"				/* FAT File System */
#include "xil_cache.h"
#include "xplatform_info.h"
//-------new header file--------------------------------
using namespace std;
#include "xtmrctr.h"
#include <stdio.h>
#define TMRCTR_DEVICE_ID    XPAR_AXI_TIMER_0_DEVICE_ID
#include "xshufflenetv2.h"
#include "malloc.h"
#include "xil_cache_l.h"
//new end-----------------------------------

// SD card and file reading objects
static FIL fil;		/* File object */
static FATFS fatfs;
static char *SD_File;
u32 Platform;

using namespace std;

//--------------new data declaration---------------
float image[1][3][32][32] = {0};

float fc_output[10] = {0};

float conv1_weight[24][3][3][3] = {0};

float conv_last_weight[512][192][1][1] = {0};
float conv_last_weight_0[64][192][1][1] = {0};
float conv_last_weight_1[64][192][1][1] = {0};
float conv_last_weight_2[64][192][1][1] = {0};
float conv_last_weight_3[64][192][1][1] = {0};
float conv_last_weight_4[64][192][1][1] = {0};
float conv_last_weight_5[64][192][1][1] = {0};
float conv_last_weight_6[64][192][1][1] = {0};
float conv_last_weight_7[64][192][1][1] = {0};

float fc_weight[10][512] = {0};

float bias[3618] = {0};

float shuffle_conv_1x1[5496][24][1][1] = {0};

float shuffle_conv_3x3[1080][1][3][3] = {0};

// *****************************************
// End declaration of layers parameters and buffers
// *****************************************

//----------------parse pic---------------
int parse_pic_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening pic file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened pic file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("pic Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("pic Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***image), 1*3*36*36*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read pic from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read pic from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close pic file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed pic file\n\r");
	}

	return 0;
}
//---------------parse bias-------------------
int parse_bias_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening bias.bin file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened bias.bin file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("bias.bin Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("bias.bin Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(bias), 3618*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("bias.bin Cant read bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("bias.bin Read bias from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close bias.bin file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed bias.bin file\n\r");
	}

	return 0;
}
//----------------parse shuffle_conv_1x1------
int parse_shuffle_conv_1x1_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening shuffle_conv_1x1 file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened shuffle_conv_1x1 file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("shuffle_conv_1x1 Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("shuffle_conv_1x1 Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***shuffle_conv_1x1), 5496*24*1*1*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read shuffle_conv_1x1 from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read shuffle_conv_1x1 from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close shuffle_conv_1x1 file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed shuffle_conv_1x1 file\n\r");
	}

	return 0;
}
//----------------parse shuffle_conv_3x3------
int parse_shuffle_conv_3x3_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening shuffle_conv_3x3 file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened shuffle_conv_3x3 file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("shuffle_conv_3x3 Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("shuffle_conv_3x3 Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***shuffle_conv_3x3), 1080*1*3*3*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read shuffle_conv_3x3 from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read shuffle_conv_3x3 from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close shuffle_conv_3x3 file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed shuffle_conv_3x3 file\n\r");
	}

	return 0;
}
//-----------parse conv1_weight-------------
int parse_conv1_weight_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening conv1_weight file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened conv1_weight file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("conv1_weight Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("conv1_weight Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***conv1_weight), 24*3*3*3*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv1_weight from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv1_weight from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close conv1_weight file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed conv1_weight file\n\r");
	}

	return 0;
}
//-----------parse conv_last_weight-------------
int parse_conv_last_weight_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening conv_last_weight file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened conv_last_weight file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("conv_last_weight Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("conv_last_weight Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***conv_last_weight), 512*192*1*1*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv_last_weight from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv_last_weight from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close conv_last_weight file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed conv_last_weight file\n\r");
	}

	return 0;
}
//-----------parse conv_last_weight-------------
int parse_conv_fc_weight_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening fc_weight file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened fc_weight file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("fc_weight Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("fc_weight Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(*fc_weight), 10*512*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read fc_weight from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read fc_weight from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close fc_weight file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed fc_weight file\n\r");
	}

	return 0;
}

int main(int argc, char **argv)
{
	cout<<"Starting shufflenet\n\r";

	cout<<"Mounting SD\n\r";
	FRESULT Res;
	TCHAR *Path = "0:/";
    Res = f_mount(&fatfs, Path, 0);
	if (Res != FR_OK)
	{
		xil_printf("Failed to open filesystem\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Mounted card!!!\n\r");
	}
//-----------Timer----------
	int status;

	//Timer variables to measure time
	u32 timerCount_Stop;
	u32 timerCount_Start;

	//AXI device object for AXI Timer
	XTmrCtr timer;

	status = XTmrCtr_Initialize(&timer, TMRCTR_DEVICE_ID);

	if (status != XST_SUCCESS)
	{
		xil_printf("Timer init fail\n");
		return XST_FAILURE;
	}

	status = XTmrCtr_SelfTest(&timer, TMRCTR_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer self test fail\n");
		return XST_FAILURE;
	}
//----------Accelerator------------
	XShufflenetv2 accelerator;
	XShufflenetv2_Config *accelerator_config;
	accelerator_config = XShufflenetv2_LookupConfig(0);
	if(!accelerator_config)
	{
		xil_printf("No acc config found!\n");
		return 1;
	}
	else
	{
		xil_printf("Got acc config\n");
	}
	status = XShufflenetv2_CfgInitialize(&accelerator, accelerator_config);

	if(status != XST_SUCCESS)
	{
		xil_printf("Initialization of acc failed\n");
	}
	else
	{
		xil_printf("Initialization of acc successful\n");
	}
	/*float image[1][3][32][32] = {0};

	float fc_output[10] = {0};

	float conv1_weight[24][3][3][3] = {0};

	float conv_last_weight[512][192][1][1] = {0};

	float fc_weight[10][512] = {0};

	float bias[3618] = {0};

	float shuffle_conv_1x1[5496][24][1][1] = {0};

	float shuffle_conv_3x3[1080][1][3][3] = {0};*/



//------------new parse-----------
	cout<<"Parsing image\n\r";
	parse_pic_parameters("plane.bin");



	cout<<"Parsing shuffle_conv_1x1\n\r";
	parse_shuffle_conv_1x1_parameters("shuffle1.bin");

	cout<<"Parsing shuffle_conv_3x3\n\r";
	parse_shuffle_conv_3x3_parameters("shuffle3.bin");

	cout<<"Parsing conv1_weight\n\r";
	parse_conv1_weight_parameters("conv1.bin");

	cout<<"Parsing bias\n\r";
	parse_bias_parameters("bias.bin");

	cout<<"Parsing conv_last_weight\n\r";
	parse_conv_last_weight_parameters("convlast.bin");

	cout<<"Parsing fc_weight\n\r";
	parse_conv_fc_weight_parameters("fc.bin");

	for(int ci = 0; ci < 192; ci++){
		for(int co = 0; co < 64; co++){
			conv_last_weight_0[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	for(int ci = 0; ci < 192; ci++){
		for(int co = 64; co < 128; co++){
			conv_last_weight_1[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	for(int ci = 0; ci < 192; ci++){
		for(int co = 128; co < 192; co++){
			conv_last_weight_2[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	for(int ci = 0; ci < 192; ci++){
		for(int co = 192; co < 256; co++){
			conv_last_weight_3[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	for(int ci = 0; ci < 192; ci++){
		for(int co = 256; co < 320; co++){
			conv_last_weight_4[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	for(int ci = 0; ci < 192; ci++){
		for(int co = 320; co < 384; co++){
			conv_last_weight_5[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	for(int ci = 0; ci < 192; ci++){
		for(int co = 384; co < 448; co++){
			conv_last_weight_6[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	for(int ci = 0; ci < 192; ci++){
		for(int co = 448; co < 512; co++){
			conv_last_weight_6[ci][co][0][0] = conv_last_weight[ci][co][0][0];
		}
	}
	XShufflenetv2_Set_image_V(&accelerator, (u32)image);
	XShufflenetv2_Set_conv1_weight_V(&accelerator, (u32)conv1_weight);
	XShufflenetv2_Set_shuffle_conv_3x3_V(&accelerator, (u32)shuffle_conv_3x3);
	XShufflenetv2_Set_shuffle_conv_1x1_V(&accelerator, (u32)shuffle_conv_1x1);
	XShufflenetv2_Set_conv_last_weight_0_V(&accelerator, (u32)conv_last_weight_0);
	XShufflenetv2_Set_conv_last_weight_1_V(&accelerator, (u32)conv_last_weight_1);
	XShufflenetv2_Set_conv_last_weight_2_V(&accelerator, (u32)conv_last_weight_2);
	XShufflenetv2_Set_conv_last_weight_3_V(&accelerator, (u32)conv_last_weight_3);
	XShufflenetv2_Set_conv_last_weight_4_V(&accelerator, (u32)conv_last_weight_4);
	XShufflenetv2_Set_conv_last_weight_5_V(&accelerator, (u32)conv_last_weight_5);
	XShufflenetv2_Set_conv_last_weight_6_V(&accelerator, (u32)conv_last_weight_6);
	XShufflenetv2_Set_conv_last_weight_7_V(&accelerator, (u32)conv_last_weight_7);
	XShufflenetv2_Set_fc_weight_V(&accelerator, (u32)fc_weight);
	XShufflenetv2_Set_bias_V(&accelerator, (u32)bias);
	XShufflenetv2_Set_fc_output_V(&accelerator, (u32)fc_output);

	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);

	Xil_L1DCacheFlush();
	Xil_L2CacheFlush();
	timerCount_Start = XTmrCtr_GetValue(&timer, 0);
	XShufflenetv2_Start(&accelerator);
	while(!XShufflenetv2_IsDone(&accelerator))
	{
		int kkkk = 0;
	}


//--------stop timer-----------------------------
	timerCount_Stop = XTmrCtr_GetValue(&timer, 0);

	for(int i = 0; i < 10; i++){
	 cout<<fc_output[i]<<endl;
	}
	//Display time
	xil_printf("Time of ACC: %d\n", (timerCount_Stop - timerCount_Start));
}
