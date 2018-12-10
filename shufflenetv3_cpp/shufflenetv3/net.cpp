
#include <cstddef>  // this is to fix the bug for <'::max_align_t’ has not been declared>
#include <iostream>
#include <fstream>
#include <math.h>

using namespace std;
/**prelayers**/
void conv1(float input[1][3][32][32],
	float weight[24][3][3][3],
	float bias[24],
	float output[1][24][32][32]){
	for(int co = 0;co<24;co++){
		
		for(int h = 0;h<32;h++){
			for(int w = 0;w<32;w++){
				float sum = 0;
				for(int ci = 0;ci<3;ci++){
					for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][ci][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 32 && w+n-1 < 32) ?input[0][ci][h+m-1][w+n-1]:0);
						}
					}
				}
				float result = sum + bias[co];
				output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}



/**unit0**/

void subconv_1x1_32(float input[1][24][32][32],
	float weight[24][24][1][1],
	float bias[24],
	float output[1][24][32][32]){

	for(int co = 0;co<24;co++){
		for(int h = 0;h<32;h++){
			for(int w = 0;w<32;w++){
				float sum = 0;
				for(int ci = 0;ci<24;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}

}

void subconv_1x1_16(float input[1][24][16][16],
	float weight[24][24][1][1],
	float bias[24],
	float output[1][24][16][16]){


	for(int co = 0;co<24;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int ci = 0;ci<24;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];




				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void subconv_3x3_32_stride_no_relu(float input[1][24][32][32],
	float weight[24][1][3][3],
	float bias[24],
	float output[1][24][16][16]){
	for(int co = 0;co<24;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h*2+m-1 >= 0 && w*2+n-1 >= 0 && h*2+m-1 < 32 && w*2+n-1 < 32) ?input[0][co][h*2+m-1][w*2+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}

}


void subconv_3x3_16_no_relu(float input[1][24][16][16],
	float weight[24][1][3][3],
	float bias[24],
	float output[1][24][16][16]){
	for(int co = 0;co<24;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 16 && w+n-1 < 16) ?input[0][co][h+m-1][w+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}
}

void shuffle_24(float left[1][24][16][16],float right[1][24][16][16],float output[1][48][16][16]){
	for(int co = 0;co <48;co ++){
		for(int h=0;h<16;h++){
			for(int w = 0;w<16;w++){
				if (co%2 == 0)output[0][co][h][w] = left[0][co/2][h][w];
				else output[0][co][h][w] = right[0][co/2][h][w];
			}
		}
	}
}


void DownsampleUnit0(float input[1][24][32][32],
	float conv1r_weight[24][24][1][1],
	float conv1r_bias[24],
	float conv2r_weight[24][1][3][3],
	float conv2r_bias[24],
	float conv3r_weight[24][24][1][1],
	float conv3r_bias[24],
	float conv1l_weight[24][1][3][3],
	float conv1l_bias[24],
	float conv2l_weight[24][24][1][1],
	float conv2l_bias[24],
	float output[1][48][16][16]){

	float conv1r_output[1][24][32][32]={0};
	float conv2r_ourput[1][24][16][16]={0};
	float conv3r_ourput[1][24][16][16]={0};
	float conv1l_output[1][24][16][16]={0};
	float conv2l_output[1][24][16][16]={0};


	//conv1r
	subconv_1x1_32(input,conv1r_weight,conv1r_bias,conv1r_output);
	//conv2r
	subconv_3x3_32_stride_no_relu(conv1r_output,conv2r_weight,conv2r_bias,conv2r_ourput);
	//conv3r
	subconv_1x1_16(conv2r_ourput,conv3r_weight,conv3r_bias,conv3r_ourput);
	//conv1l
	subconv_3x3_32_stride_no_relu(input,conv1l_weight,conv1l_bias,conv1l_output);
	//conv2l
	subconv_1x1_16(conv1l_output,conv2l_weight,conv2l_bias,conv2l_output);

	//shuffle
	shuffle_24(conv3r_ourput,conv2l_output,output);
}



void ShuffleUnit0(float input[1][48][16][16],
	float conv1_weight[24][24][1][1],
	float conv1_bias[24],
	float conv2_weight[24][1][3][3],
	float conv2_bias[24],
	float conv3_weight[24][24][1][1],
	float conv3_bias[24],
	float output[1][48][16][16]
	){
	float left_part[1][24][16][16] = {0};
	float right_part[1][24][16][16] = {0};
	float conv1_output[1][24][16][16] = {0};
	float conv2_output[1][24][16][16] = {0};
	float conv3_output[1][24][16][16] = {0};
	//right
	for(int co = 0;co <24;co ++){
		for(int h=0;h<16;h++){
			for(int w = 0;w<16;w++){
				right_part[0][co][h][w] = input[0][24+co][h][w];
				left_part[0][co][h][w] = input[0][co][h][w];
			}
		}
	}
	//conv1
	subconv_1x1_16(right_part,conv1_weight,conv1_bias,conv1_output);
	//conv2
	subconv_3x3_16_no_relu(conv1_output,conv2_weight,conv2_bias,conv2_output);
	//conv3
	subconv_1x1_16(conv2_output,conv3_weight,conv3_bias,conv3_output);

	shuffle_24(left_part,conv3_output,output);
}

/**unit1**/

void subconv_1x1_16p(float input[1][48][16][16],
	float weight[48][48][1][1],
	float bias[48],
	float output[1][48][16][16]){

	for(int co = 0;co<48;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int ci = 0;ci<48;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];




				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}

}

void subconv_1x1_8(float input[1][48][8][8],
	float weight[48][48][1][1],
	float bias[48],
	float output[1][48][8][8]){


	for(int co = 0;co<48;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int ci = 0;ci<48;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}


void subconv_3x3_16_stride_no_relu(float input[1][48][16][16],
	float weight[48][1][3][3],
	float bias[48],
	float output[1][48][8][8]){
	for(int co = 0;co<48;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h*2+m-1 >= 0 && w*2+n-1 >= 0 && h*2+m-1 < 16 && w*2+n-1 < 16) ?input[0][co][h*2+m-1][w*2+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}
}


void subconv_3x3_8_no_relu(float input[1][48][8][8],
	float weight[48][1][3][3],
	float bias[48],
	float output[1][48][8][8]){
	for(int co = 0;co<48;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 8 && w+n-1 < 8) ?input[0][co][h+m-1][w+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;
			}
		}
	}
}

void shuffle_48(float left[1][48][8][8],float right[1][48][8][8],float output[1][96][8][8]){
	for(int co = 0;co <96;co ++){
		for(int h=0;h<8;h++){
			for(int w = 0;w<8;w++){
				if (co%2 == 0)output[0][co][h][w] = left[0][co/2][h][w];
				else output[0][co][h][w] = right[0][co/2][h][w];
			}
		}
	}
}


void DownsampleUnit1(float input[1][48][16][16],
	float conv1r_weight[48][48][1][1],
	float conv1r_bias[48],
	float conv2r_weight[48][1][3][3],
	float conv2r_bias[48],
	float conv3r_weight[48][48][1][1],
	float conv3r_bias[48],
	float conv1l_weight[48][1][3][3],
	float conv1l_bias[48],
	float conv2l_weight[48][48][1][1],
	float conv2l_bias[48],
	float output[1][96][8][8]){

	float conv1r_output[1][48][16][16]={0};
	float conv2r_ourput[1][48][8][8]={0};
	float conv3r_ourput[1][48][8][8]={0};
	float conv1l_output[1][48][8][8]={0};
	float conv2l_output[1][48][8][8]={0};


	//conv1r
	subconv_1x1_16p(input,conv1r_weight,conv1r_bias,conv1r_output);
	//conv2r
	subconv_3x3_16_stride_no_relu(conv1r_output,conv2r_weight,conv2r_bias,conv2r_ourput);
	//conv3r
	subconv_1x1_8(conv2r_ourput,conv3r_weight,conv3r_bias,conv3r_ourput);
	//conv1l
	subconv_3x3_16_stride_no_relu(input,conv1l_weight,conv1l_bias,conv1l_output);
	//conv2l
	subconv_1x1_8(conv1l_output,conv2l_weight,conv2l_bias,conv2l_output);

	//shuffle
	shuffle_48(conv3r_ourput,conv2l_output,output);

	
}


void ShuffleUnit1(float input[1][96][8][8],
	float conv1_weight[48][48][1][1],
	float conv1_bias[48],
	float conv2_weight[48][1][3][3],
	float conv2_bias[48],
	float conv3_weight[48][48][1][1],
	float conv3_bias[48],
	float output[1][96][8][8]
	){
	float left_part[1][48][8][8] = {0};
	float right_part[1][48][8][8] = {0};
	float conv1_output[1][48][8][8] = {0};
	float conv2_output[1][48][8][8] = {0};
	float conv3_output[1][48][8][8] = {0};

	//right
	for(int co = 0;co <48;co ++){
		for(int h=0;h<8;h++){
			for(int w = 0;w<8;w++){
				right_part[0][co][h][w] = input[0][48+co][h][w];
				left_part[0][co][h][w] = input[0][co][h][w];
			}
		}
	}
	//conv1
	subconv_1x1_8(right_part,conv1_weight,conv1_bias,conv1_output);

	
	//conv2
	subconv_3x3_8_no_relu(conv1_output,conv2_weight,conv2_bias,conv2_output);
	//conv3
	subconv_1x1_8(conv2_output,conv3_weight,conv3_bias,conv3_output);

	shuffle_48(left_part,conv3_output,output);
}


/**unit2**/
void subconv_1x1_8p(float input[1][96][8][8],
	float weight[96][96][1][1],
	float bias[96],
	float output[1][96][8][8]){

	for(int co = 0;co<96;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int ci = 0;ci<96;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void subconv_1x1_4(float input[1][96][4][4],
	float weight[96][96][1][1],
	float bias[96],
	float output[1][96][4][4]){


	for(int co = 0;co<96;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int ci = 0;ci<96;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void subconv_3x3_8_stride_no_relu(float input[1][96][8][8],
	float weight[96][1][3][3],
	float bias[96],
	float output[1][96][4][4]){
	for(int co = 0;co<96;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h*2+m-1 >= 0 && w*2+n-1 >= 0 && h*2+m-1 < 8 && w*2+n-1 < 8) ?input[0][co][h*2+m-1][w*2+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}
}


void subconv_3x3_4_no_relu(float input[1][96][4][4],
	float weight[96][1][3][3],
	float bias[96],
	float output[1][96][4][4]){
	for(int co = 0;co<96;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 4 && w+n-1 < 4) ?input[0][co][h+m-1][w+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;
			}
		}
	}
}


void shuffle_96(float left[1][96][4][4],float right[1][96][4][4],float output[1][192][4][4]){
	for(int co = 0;co <192;co ++){
		for(int h=0;h<4;h++){
			for(int w = 0;w<4;w++){
				if (co%2 == 0)output[0][co][h][w] = left[0][co/2][h][w];
				else output[0][co][h][w] = right[0][co/2][h][w];
			}
		}
	}
}


void DownsampleUnit2(float input[1][96][8][8],
	float conv1r_weight[96][96][1][1],
	float conv1r_bias[96],
	float conv2r_weight[96][1][3][3],
	float conv2r_bias[96],
	float conv3r_weight[96][96][1][1],
	float conv3r_bias[96],
	float conv1l_weight[96][1][3][3],
	float conv1l_bias[96],
	float conv2l_weight[96][96][1][1],
	float conv2l_bias[96],
	float output[1][192][4][4]){

	float conv1r_output[1][96][8][8]={0};
	float conv2r_ourput[1][96][4][4]={0};
	float conv3r_ourput[1][96][4][4]={0};
	float conv1l_output[1][96][4][4]={0};
	float conv2l_output[1][96][4][4]={0};


	//conv1r
	subconv_1x1_8p(input,conv1r_weight,conv1r_bias,conv1r_output);
	//conv2r
	subconv_3x3_8_stride_no_relu(conv1r_output,conv2r_weight,conv2r_bias,conv2r_ourput);
	//conv3r
	subconv_1x1_4(conv2r_ourput,conv3r_weight,conv3r_bias,conv3r_ourput);
	//conv1l
	subconv_3x3_8_stride_no_relu(input,conv1l_weight,conv1l_bias,conv1l_output);
	//conv2l
	subconv_1x1_4(conv1l_output,conv2l_weight,conv2l_bias,conv2l_output);

	//shuffle
	shuffle_96(conv3r_ourput,conv2l_output,output);

	
}

void ShuffleUnit2(float input[1][192][4][4],
	float conv1_weight[96][96][1][1],
	float conv1_bias[96],
	float conv2_weight[96][1][3][3],
	float conv2_bias[96],
	float conv3_weight[96][96][1][1],
	float conv3_bias[96],
	float output[1][192][4][4]
	){
	float left_part[1][96][4][4] = {0};
	float right_part[1][96][4][4] = {0};
	float conv1_output[1][96][4][4] = {0};
	float conv2_output[1][96][4][4] = {0};
	float conv3_output[1][96][4][4] = {0};

	//right
	for(int co = 0;co <96;co ++){
		for(int h=0;h<4;h++){
			for(int w = 0;w<4;w++){
				right_part[0][co][h][w] = input[0][96+co][h][w];
				left_part[0][co][h][w] = input[0][co][h][w];
			}
		}
	}
	//conv1
	subconv_1x1_4(right_part,conv1_weight,conv1_bias,conv1_output);

	
	//conv2
	subconv_3x3_4_no_relu(conv1_output,conv2_weight,conv2_bias,conv2_output);
	//conv3
	subconv_1x1_4(conv2_output,conv3_weight,conv3_bias,conv3_output);

	shuffle_96(left_part,conv3_output,output);
}


void conv_last(float input[1][192][4][4],
	float weight[512][192][1][1],
	float bias[512],
	float output[1][512][4][4]){

	for(int co = 0;co<512;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int ci = 0;ci<192;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void avgpool(float input[1][512][4][4],
	float output[512]){

	for(int co = 0;co<512;co++){
		float sum = 0;
		for(int h = 0;h<4;h++){
			for(int w=0;w<4;w++){
				sum += input[0][co][h][w];
			}
		}
		output[co] = sum/16;
	}
}

void fc(float input[512],
	float weight[10][512],
	float bias[10],
	float output[10]){
	
	for(int co = 0;co<10;co++){
		float sum = 0;
		for(int ci = 0;ci<512;ci++){
			sum += weight[co][ci] * input[ci];

		}
		float result = sum + bias[co];
		output[co] = result;
	}
}

int main(){
	/**featuremaps**/
	auto image = new float[1][3][32][32];
	auto conv1_output = new float[1][24][32][32];
    
	auto downsampleunit0_output = new float[1][48][16][16];
	auto shuffleunit0_0_output = new float[1][48][16][16];
	auto shuffleunit0_1_output = new float[1][48][16][16];
	auto shuffleunit0_2_output = new float[1][48][16][16];
	auto downsampleunit1_output = new float[1][96][8][8];
	auto shuffleunit1_0_output = new float[1][96][8][8];
	auto shuffleunit1_1_output = new float[1][96][8][8];
	auto shuffleunit1_2_output = new float[1][96][8][8];
	auto shuffleunit1_3_output = new float[1][96][8][8];
	auto shuffleunit1_4_output = new float[1][96][8][8];
	auto shuffleunit1_5_output = new float[1][96][8][8];
	auto shuffleunit1_6_output = new float[1][96][8][8];
	auto shuffleunit1_7_output = new float[1][96][8][8];
	auto downsampleunit2_output = new float[1][192][4][4];
	auto shuffleunit2_0_output = new float[1][192][4][4];
	auto shuffleunit2_1_output = new float[1][192][4][4];
	auto shuffleunit2_2_output = new float[1][192][4][4];
	auto conv_last_output = new float[1][512][4][4];
	auto avgpool_output = new float[512];
	auto fc_output = new float[10];
	/**weights**/
    
	auto conv1_weight = new float[24][3][3][3];
	auto conv1_bias = new float[24];
	
    auto ShuffleConvs_0_DownsampleUnit_conv1r_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_DownsampleUnit_conv1r_bias = new float[24];
	auto ShuffleConvs_0_DownsampleUnit_conv2r_weight = new float[24][1][3][3];
	auto ShuffleConvs_0_DownsampleUnit_conv2r_bias = new float[24];
	auto ShuffleConvs_0_DownsampleUnit_conv3r_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_DownsampleUnit_conv3r_bias = new float[24];
	auto ShuffleConvs_0_DownsampleUnit_conv1l_weight = new float[24][1][3][3];
	auto ShuffleConvs_0_DownsampleUnit_conv1l_bias = new float[24];
	auto ShuffleConvs_0_DownsampleUnit_conv2l_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_DownsampleUnit_conv2l_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_0_conv1_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_ShuffleUnit0_0_conv1_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_0_conv2_weight = new float[24][1][3][3];
	auto ShuffleConvs_0_ShuffleUnit0_0_conv2_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_0_conv3_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_ShuffleUnit0_0_conv3_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_1_conv1_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_ShuffleUnit0_1_conv1_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_1_conv2_weight = new float[24][1][3][3];
	auto ShuffleConvs_0_ShuffleUnit0_1_conv2_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_1_conv3_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_ShuffleUnit0_1_conv3_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_2_conv1_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_ShuffleUnit0_2_conv1_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_2_conv2_weight = new float[24][1][3][3];
	auto ShuffleConvs_0_ShuffleUnit0_2_conv2_bias = new float[24];
	auto ShuffleConvs_0_ShuffleUnit0_2_conv3_weight = new float[24][24][1][1];
	auto ShuffleConvs_0_ShuffleUnit0_2_conv3_bias = new float[24]; 
	auto ShuffleConvs_1_DownsampleUnit_conv1r_weight = new float[48][48][1][1]; 
	auto ShuffleConvs_1_DownsampleUnit_conv1r_bias = new float[48];
	auto ShuffleConvs_1_DownsampleUnit_conv2r_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_DownsampleUnit_conv2r_bias = new float[48];
	auto ShuffleConvs_1_DownsampleUnit_conv3r_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_DownsampleUnit_conv3r_bias = new float[48];
	auto ShuffleConvs_1_DownsampleUnit_conv1l_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_DownsampleUnit_conv1l_bias = new float[48];
	auto ShuffleConvs_1_DownsampleUnit_conv2l_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_DownsampleUnit_conv2l_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_0_conv1_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_0_conv1_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_0_conv2_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_0_conv2_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_0_conv3_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_0_conv3_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_1_conv1_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_1_conv1_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_1_conv2_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_1_conv2_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_1_conv3_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_1_conv3_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_2_conv1_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_2_conv1_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_2_conv2_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_2_conv2_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_2_conv3_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_2_conv3_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_3_conv1_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_3_conv1_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_3_conv2_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_3_conv2_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_3_conv3_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_3_conv3_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_4_conv1_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_4_conv1_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_4_conv2_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_4_conv2_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_4_conv3_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_4_conv3_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_5_conv1_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_5_conv1_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_5_conv2_weight = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_5_conv2_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_5_conv3_weight = new float[48][48][1][1]; 
	auto ShuffleConvs_1_ShuffleUnit1_5_conv3_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_6_conv1_weight  = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_6_conv1_bias  = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_6_conv2_weight  = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_6_conv2_bias   = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_6_conv3_weight = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_6_conv3_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_7_conv1_weight  = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_7_conv1_bias = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_7_conv2_weight   = new float[48][1][3][3];
	auto ShuffleConvs_1_ShuffleUnit1_7_conv2_bias  = new float[48];
	auto ShuffleConvs_1_ShuffleUnit1_7_conv3_weight   = new float[48][48][1][1];
	auto ShuffleConvs_1_ShuffleUnit1_7_conv3_bias = new float[48];
	auto ShuffleConvs_2_DownsampleUnit_conv1r_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_DownsampleUnit_conv1r_bias = new float[96];
	auto ShuffleConvs_2_DownsampleUnit_conv2r_weight = new float[96][1][3][3];
	auto ShuffleConvs_2_DownsampleUnit_conv2r_bias = new float[96];
	auto ShuffleConvs_2_DownsampleUnit_conv3r_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_DownsampleUnit_conv3r_bias = new float[96];
	auto ShuffleConvs_2_DownsampleUnit_conv1l_weight = new float[96][1][3][3];
	auto ShuffleConvs_2_DownsampleUnit_conv1l_bias = new float[96];
	auto ShuffleConvs_2_DownsampleUnit_conv2l_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_DownsampleUnit_conv2l_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_0_conv1_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_ShuffleUnit2_0_conv1_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_0_conv2_weight = new float[96][1][3][3];
	auto ShuffleConvs_2_ShuffleUnit2_0_conv2_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_0_conv3_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_ShuffleUnit2_0_conv3_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_1_conv1_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_ShuffleUnit2_1_conv1_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_1_conv2_weight = new float[96][1][3][3];
	auto ShuffleConvs_2_ShuffleUnit2_1_conv2_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_1_conv3_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_ShuffleUnit2_1_conv3_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_2_conv1_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_ShuffleUnit2_2_conv1_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_2_conv2_weight = new float[96][1][3][3];
	auto ShuffleConvs_2_ShuffleUnit2_2_conv2_bias = new float[96];
	auto ShuffleConvs_2_ShuffleUnit2_2_conv3_weight = new float[96][96][1][1];
	auto ShuffleConvs_2_ShuffleUnit2_2_conv3_bias = new float[96];
    
	auto conv_last_weight = new float[512][192][1][1];
    
	auto conv_last_bias = new float[512];
	
    auto fc_weight = new float[10][512];
	
    auto fc_bias = new float[10];

    
    auto bias = new float[3618];
    
    auto shuffle_conv_1x1 = new float[5496][24][1][1];
    
    auto shuffle_conv_3x3 = new float[1080][1][3][3];
    
    

    
	string img_path = "plane.bin";
    
    string bias_path = "bias.bin";
    
    string shuffle_conv_1x1_path = "shuffle_conv_1x1.bin";
    
    string shuffle_conv_3x3_path = "shuffle_conv_3x3.bin";

    string conv1_weight_path = "conv1_weight.bin";
    
    string conv_last_weight_path = "conv_last_weight.bin";
    
    string fc_weight_path = "fc_weight.bin";
    
    
/** initialize weights and image **/

	cout<<"initialize pic"<<endl;
	ifstream ifs_image_raw(img_path, ios::in | ios::binary);
	ifs_image_raw.read((char*)(***image), 1*3*36*36*sizeof(float));
    ifs_image_raw.close();
    
    
    cout<<"initialize bias"<<endl;
    ifstream ifs_bias(bias_path, ios::in | ios::binary);
    ifs_bias.read((char*)(bias), 3618*sizeof(float));
    ifs_bias.close();
    
    cout<<"initialize shuffle_conv_1x1"<<endl;
    ifstream ifs_shuffle_conv_1x1(shuffle_conv_1x1_path, ios::in | ios::binary);
    ifs_shuffle_conv_1x1.read((char*)(***shuffle_conv_1x1), 5496*24*1*1*sizeof(float));
    ifs_shuffle_conv_1x1.close();

    cout<<"initialize shuffle_conv_3x3"<<endl;
    ifstream ifs_shuffle_conv_3x3(shuffle_conv_3x3_path, ios::in | ios::binary);
    ifs_shuffle_conv_3x3.read((char*)(***shuffle_conv_3x3), 1080*1*3*3*sizeof(float));
    ifs_shuffle_conv_3x3.close();
    
    cout<<"initialize conv1_weight"<<endl;
    ifstream ifs_conv1_weight(conv1_weight_path, ios::in | ios::binary);
    ifs_conv1_weight.read((char*)(***conv1_weight), 24*3*3*3*sizeof(float));
    ifs_conv1_weight.close();
    
    cout<<"initialize conv_last_weight"<<endl;
    ifstream ifs_conv_last_weight(conv_last_weight_path, ios::in | ios::binary);
    ifs_conv_last_weight.read((char*)(***conv_last_weight), 512*192*1*1*sizeof(float));
    ifs_conv_last_weight.close();
    
    cout<<"initialize fc_weight"<<endl;
    ifstream ifs_fc_weight(fc_weight_path, ios::in | ios::binary);
    ifs_fc_weight.read((char*)(*fc_weight), 10*512*sizeof(float));
    ifs_fc_weight.close();
    
    cout<<"copy weights"<<endl;
//3x3
    for(int co = 0; co < 24; co ++){
        for(int ci = 0; ci <24; ci ++){
            ShuffleConvs_0_DownsampleUnit_conv1r_weight[co][ci][0][0] = shuffle_conv_1x1[co][ci][0][0];
            ShuffleConvs_0_DownsampleUnit_conv3r_weight[co][ci][0][0] = shuffle_conv_1x1[co+24][ci][0][0];
            ShuffleConvs_0_DownsampleUnit_conv2l_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*2][ci][0][0];
            ShuffleConvs_0_ShuffleUnit0_0_conv1_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*3][ci][0][0];
            ShuffleConvs_0_ShuffleUnit0_0_conv3_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*4][ci][0][0];
            ShuffleConvs_0_ShuffleUnit0_1_conv1_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*5][ci][0][0];
            ShuffleConvs_0_ShuffleUnit0_1_conv3_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*6][ci][0][0];
            ShuffleConvs_0_ShuffleUnit0_2_conv1_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*7][ci][0][0];
            ShuffleConvs_0_ShuffleUnit0_2_conv3_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*8][ci][0][0];
            
            for(int i = 0; i < 4; i ++ ){
            ShuffleConvs_1_DownsampleUnit_conv1r_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*9 + 24 *i][ci][0][0];
            ShuffleConvs_1_DownsampleUnit_conv3r_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*13 + 24 *i][ci][0][0];
            ShuffleConvs_1_DownsampleUnit_conv2l_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*17 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_0_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*21 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_0_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*25 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_1_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*29 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_1_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*33 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_2_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*37 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_2_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*41 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_3_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*45 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_3_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*49 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_4_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*53 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_4_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*57 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_5_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*61 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_5_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*65 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_6_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*69 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_6_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*73 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_7_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*77 + 24 *i][ci][0][0];
            ShuffleConvs_1_ShuffleUnit1_7_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*81 + 24 *i][ci][0][0];
            }
            
            for(int i = 0; i < 16;i++){
                ShuffleConvs_2_DownsampleUnit_conv1r_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*85 + 24 * i][ci][0][0];
                ShuffleConvs_2_DownsampleUnit_conv3r_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*101 + 24 * i][ci][0][0];
                ShuffleConvs_2_DownsampleUnit_conv2l_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*117 + 24 * i][ci][0][0];
                ShuffleConvs_2_ShuffleUnit2_0_conv1_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*133 + 24 * i][ci][0][0];
                ShuffleConvs_2_ShuffleUnit2_0_conv3_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*149 + 24 * i][ci][0][0];
                ShuffleConvs_2_ShuffleUnit2_1_conv1_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*165 + 24 * i][ci][0][0];
                ShuffleConvs_2_ShuffleUnit2_1_conv3_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*181 + 24 * i][ci][0][0];
                ShuffleConvs_2_ShuffleUnit2_2_conv1_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*197 + 24 * i][ci][0][0];
                ShuffleConvs_2_ShuffleUnit2_2_conv3_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*213 + 24 * i][ci][0][0];
            }
        }
    }
//1x1
    for(int co = 0;co<24;co++){
        for(int w = 0; w <3; w++){
            for(int h = 0; h <3;h++){
                
                ShuffleConvs_0_DownsampleUnit_conv2r_weight[co][0][w][h] = shuffle_conv_3x3[co][0][w][h];
                ShuffleConvs_0_DownsampleUnit_conv1l_weight[co][0][w][h] = shuffle_conv_3x3[co+24][0][w][h];
                ShuffleConvs_0_ShuffleUnit0_0_conv2_weight[co][0][w][h] = shuffle_conv_3x3[co+24*2][0][w][h];
                ShuffleConvs_0_ShuffleUnit0_1_conv2_weight[co][0][w][h] = shuffle_conv_3x3[co+24*3][0][w][h];
                ShuffleConvs_0_ShuffleUnit0_2_conv2_weight[co][0][w][h] = shuffle_conv_3x3[co+24*4][0][w][h];
                
                for(int i = 0; i < 2; i++){
                    ShuffleConvs_1_DownsampleUnit_conv2r_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*5+ i*24][0][w][h];
                    ShuffleConvs_1_DownsampleUnit_conv1l_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*7+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_0_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*9+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_1_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*11+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_2_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*13+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_3_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*15+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_4_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*17+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_5_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*19+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_6_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*21+ i*24][0][w][h];
                    ShuffleConvs_1_ShuffleUnit1_7_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*23+ i*24][0][w][h];
                }
                
                for(int i = 0; i < 4; i++){
                    ShuffleConvs_2_DownsampleUnit_conv2r_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*25+ i*24][0][w][h];
                    ShuffleConvs_2_DownsampleUnit_conv1l_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*29+ i*24][0][w][h];
                    ShuffleConvs_2_ShuffleUnit2_0_conv2_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*33+ i*24][0][w][h];
                    ShuffleConvs_2_ShuffleUnit2_1_conv2_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*37+ i*24][0][w][h];
                    ShuffleConvs_2_ShuffleUnit2_2_conv2_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*41+ i*24][0][w][h];
                }
            }
        }
        
    }
//bias
    
    for(int i = 0; i<24; i++){
        conv1_bias[i] = bias[i];
        ShuffleConvs_0_DownsampleUnit_conv1r_bias[i] = bias[i+24];
        ShuffleConvs_0_DownsampleUnit_conv2r_bias[i] = bias[i+24*2];
        ShuffleConvs_0_DownsampleUnit_conv3r_bias[i] = bias[i+24*3];
        ShuffleConvs_0_DownsampleUnit_conv1l_bias[i] = bias[i+24*4];
        ShuffleConvs_0_DownsampleUnit_conv2l_bias[i] = bias[i+24*5];
        ShuffleConvs_0_ShuffleUnit0_0_conv1_bias[i] = bias[i+24*6];
        ShuffleConvs_0_ShuffleUnit0_0_conv2_bias[i] = bias[i+24*7];
        ShuffleConvs_0_ShuffleUnit0_0_conv3_bias[i] = bias[i+24*8];
        ShuffleConvs_0_ShuffleUnit0_1_conv1_bias[i] = bias[i+24*9];
        ShuffleConvs_0_ShuffleUnit0_1_conv2_bias[i] = bias[i+24*10];
        ShuffleConvs_0_ShuffleUnit0_1_conv3_bias[i] = bias[i+24*11];
        ShuffleConvs_0_ShuffleUnit0_2_conv1_bias[i] = bias[i+24*12];
        ShuffleConvs_0_ShuffleUnit0_2_conv2_bias[i] = bias[i+24*13];
        ShuffleConvs_0_ShuffleUnit0_2_conv3_bias[i] = bias[i+24*14];
        for(int k = 0;k < 2;k++){
            ShuffleConvs_1_DownsampleUnit_conv1r_bias[i+k*24] = bias[i+24*15+k*24];
            ShuffleConvs_1_DownsampleUnit_conv2r_bias[i+k*24] = bias[i+24*17+k*24];
            ShuffleConvs_1_DownsampleUnit_conv3r_bias[i+k*24] = bias[i+24*19+k*24];
            ShuffleConvs_1_DownsampleUnit_conv1l_bias[i+k*24] = bias[i+24*21+k*24];
            ShuffleConvs_1_DownsampleUnit_conv2l_bias[i+k*24] = bias[i+24*23+k*24];
            ShuffleConvs_1_ShuffleUnit1_0_conv1_bias[i+k*24] = bias[i+24*25+k*24];
            ShuffleConvs_1_ShuffleUnit1_0_conv2_bias[i+k*24] = bias[i+24*27+k*24];
            ShuffleConvs_1_ShuffleUnit1_0_conv3_bias[i+k*24] = bias[i+24*29+k*24];
            ShuffleConvs_1_ShuffleUnit1_1_conv1_bias[i+k*24] = bias[i+24*31+k*24];
            ShuffleConvs_1_ShuffleUnit1_1_conv2_bias[i+k*24] = bias[i+24*33+k*24];
            ShuffleConvs_1_ShuffleUnit1_1_conv3_bias[i+k*24] = bias[i+24*35+k*24];
            ShuffleConvs_1_ShuffleUnit1_2_conv1_bias[i+k*24] = bias[i+24*37+k*24];
            ShuffleConvs_1_ShuffleUnit1_2_conv2_bias[i+k*24] = bias[i+24*39+k*24];
            ShuffleConvs_1_ShuffleUnit1_2_conv3_bias[i+k*24] = bias[i+24*41+k*24];
            ShuffleConvs_1_ShuffleUnit1_3_conv1_bias[i+k*24] = bias[i+24*43+k*24];
            ShuffleConvs_1_ShuffleUnit1_3_conv2_bias[i+k*24] = bias[i+24*45+k*24];
            ShuffleConvs_1_ShuffleUnit1_3_conv3_bias[i+k*24] = bias[i+24*47+k*24];
            ShuffleConvs_1_ShuffleUnit1_4_conv1_bias[i+k*24] = bias[i+24*49+k*24];
            ShuffleConvs_1_ShuffleUnit1_4_conv2_bias[i+k*24] = bias[i+24*51+k*24];
            ShuffleConvs_1_ShuffleUnit1_4_conv3_bias[i+k*24] = bias[i+24*53+k*24];
            ShuffleConvs_1_ShuffleUnit1_5_conv1_bias[i+k*24] = bias[i+24*55+k*24];
            ShuffleConvs_1_ShuffleUnit1_5_conv2_bias[i+k*24] = bias[i+24*57+k*24];
            ShuffleConvs_1_ShuffleUnit1_5_conv3_bias[i+k*24] = bias[i+24*59+k*24];
            ShuffleConvs_1_ShuffleUnit1_6_conv1_bias[i+k*24] = bias[i+24*61+k*24];
            ShuffleConvs_1_ShuffleUnit1_6_conv2_bias[i+k*24] = bias[i+24*63+k*24];
            ShuffleConvs_1_ShuffleUnit1_6_conv3_bias[i+k*24] = bias[i+24*65+k*24];
            ShuffleConvs_1_ShuffleUnit1_7_conv1_bias[i+k*24] = bias[i+24*67+k*24];
            ShuffleConvs_1_ShuffleUnit1_7_conv2_bias[i+k*24] = bias[i+24*69+k*24];
            ShuffleConvs_1_ShuffleUnit1_7_conv3_bias[i+k*24] = bias[i+24*71+k*24];
        }
        
        for(int k = 0;k < 4;k++){
        ShuffleConvs_2_DownsampleUnit_conv1r_bias[i+k*24] = bias[i+24*73+k*24];
        ShuffleConvs_2_DownsampleUnit_conv2r_bias[i+k*24] = bias[i+24*77+k*24];
        ShuffleConvs_2_DownsampleUnit_conv3r_bias[i+k*24] = bias[i+24*81+k*24];
        ShuffleConvs_2_DownsampleUnit_conv1l_bias[i+k*24] = bias[i+24*85+k*24];
        ShuffleConvs_2_DownsampleUnit_conv2l_bias[i+k*24] = bias[i+24*89+k*24];
        ShuffleConvs_2_ShuffleUnit2_0_conv1_bias[i+k*24] = bias[i+24*93+k*24];
        ShuffleConvs_2_ShuffleUnit2_0_conv2_bias[i+k*24] = bias[i+24*97+k*24];
        ShuffleConvs_2_ShuffleUnit2_0_conv3_bias[i+k*24] = bias[i+24*101+k*24];
        ShuffleConvs_2_ShuffleUnit2_1_conv1_bias[i+k*24] = bias[i+24*105+k*24];
        ShuffleConvs_2_ShuffleUnit2_1_conv2_bias[i+k*24] = bias[i+24*109+k*24];
        ShuffleConvs_2_ShuffleUnit2_1_conv3_bias[i+k*24] = bias[i+24*113+k*24];
        ShuffleConvs_2_ShuffleUnit2_2_conv1_bias[i+k*24] = bias[i+24*117+k*24];
        ShuffleConvs_2_ShuffleUnit2_2_conv2_bias[i+k*24] = bias[i+24*121+k*24];
        ShuffleConvs_2_ShuffleUnit2_2_conv3_bias[i+k*24] = bias[i+24*125+k*24];
        }
    }
    for(int i = 0; i < 512 ; i++){
        conv_last_bias[i] = bias[24*129 + i];
    }
    for(int i = 0;i<10;i++){
        fc_bias[i] = bias[24*129 + 512 + i];
    }
    
    
    
    
    /** conv1 **/
    conv1(image,conv1_weight,conv1_bias,conv1_output);
    /**DownsampleUnit0**/
    DownsampleUnit0(conv1_output,
                    ShuffleConvs_0_DownsampleUnit_conv1r_weight,
                    ShuffleConvs_0_DownsampleUnit_conv1r_bias,
                    ShuffleConvs_0_DownsampleUnit_conv2r_weight,
                    ShuffleConvs_0_DownsampleUnit_conv2r_bias,
                    ShuffleConvs_0_DownsampleUnit_conv3r_weight,
                    ShuffleConvs_0_DownsampleUnit_conv3r_bias,
                    ShuffleConvs_0_DownsampleUnit_conv1l_weight,
                    ShuffleConvs_0_DownsampleUnit_conv1l_bias,
                    ShuffleConvs_0_DownsampleUnit_conv2l_weight,
                    ShuffleConvs_0_DownsampleUnit_conv2l_bias,
                    downsampleunit0_output);
    /**ShuffleUnit0_0**/
    ShuffleUnit0(downsampleunit0_output,
                 ShuffleConvs_0_ShuffleUnit0_0_conv1_weight,
                 ShuffleConvs_0_ShuffleUnit0_0_conv1_bias,
                 ShuffleConvs_0_ShuffleUnit0_0_conv2_weight,
                 ShuffleConvs_0_ShuffleUnit0_0_conv2_bias,
                 ShuffleConvs_0_ShuffleUnit0_0_conv3_weight,
                 ShuffleConvs_0_ShuffleUnit0_0_conv3_bias,
                 shuffleunit0_0_output
                 );
    /**ShuffleUnit0_1**/
    ShuffleUnit0(shuffleunit0_0_output,
                 ShuffleConvs_0_ShuffleUnit0_1_conv1_weight,
                 ShuffleConvs_0_ShuffleUnit0_1_conv1_bias,
                 ShuffleConvs_0_ShuffleUnit0_1_conv2_weight,
                 ShuffleConvs_0_ShuffleUnit0_1_conv2_bias,
                 ShuffleConvs_0_ShuffleUnit0_1_conv3_weight,
                 ShuffleConvs_0_ShuffleUnit0_1_conv3_bias,
                 shuffleunit0_1_output
                 );
    /**ShuffleUnit0_2**/
    ShuffleUnit0(shuffleunit0_1_output,
                 ShuffleConvs_0_ShuffleUnit0_2_conv1_weight,
                 ShuffleConvs_0_ShuffleUnit0_2_conv1_bias,
                 ShuffleConvs_0_ShuffleUnit0_2_conv2_weight,
                 ShuffleConvs_0_ShuffleUnit0_2_conv2_bias,
                 ShuffleConvs_0_ShuffleUnit0_2_conv3_weight,
                 ShuffleConvs_0_ShuffleUnit0_2_conv3_bias,
                 shuffleunit0_2_output
                 );
    /**DownsampleUnit1**/
    DownsampleUnit1(shuffleunit0_2_output,
                    ShuffleConvs_1_DownsampleUnit_conv1r_weight,
                    ShuffleConvs_1_DownsampleUnit_conv1r_bias,
                    ShuffleConvs_1_DownsampleUnit_conv2r_weight,
                    ShuffleConvs_1_DownsampleUnit_conv2r_bias,
                    ShuffleConvs_1_DownsampleUnit_conv3r_weight,
                    ShuffleConvs_1_DownsampleUnit_conv3r_bias,
                    ShuffleConvs_1_DownsampleUnit_conv1l_weight,
                    ShuffleConvs_1_DownsampleUnit_conv1l_bias,
                    ShuffleConvs_1_DownsampleUnit_conv2l_weight,
                    ShuffleConvs_1_DownsampleUnit_conv2l_bias,
                    downsampleunit1_output);
    /**ShuffleUnit1_0**/
    ShuffleUnit1(downsampleunit1_output,
                 ShuffleConvs_1_ShuffleUnit1_0_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_0_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_0_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_0_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_0_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_0_conv3_bias,
                 shuffleunit1_0_output);
    /**ShuffleUnit1_1**/
    ShuffleUnit1(shuffleunit1_0_output,
                 ShuffleConvs_1_ShuffleUnit1_1_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_1_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_1_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_1_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_1_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_1_conv3_bias,
                 shuffleunit1_1_output);
    /**ShuffleUnit1_2**/
    ShuffleUnit1(shuffleunit1_1_output,
                 ShuffleConvs_1_ShuffleUnit1_2_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_2_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_2_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_2_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_2_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_2_conv3_bias,
                 shuffleunit1_2_output);
    /**ShuffleUnit1_3**/
    ShuffleUnit1(shuffleunit1_2_output,
                 ShuffleConvs_1_ShuffleUnit1_3_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_3_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_3_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_3_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_3_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_3_conv3_bias,
                 shuffleunit1_3_output);
    /**ShuffleUnit1_4**/
    ShuffleUnit1(shuffleunit1_3_output,
                 ShuffleConvs_1_ShuffleUnit1_4_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_4_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_4_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_4_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_4_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_4_conv3_bias,
                 shuffleunit1_4_output);
    /**ShuffleUnit1_5**/
    ShuffleUnit1(shuffleunit1_4_output,
                 ShuffleConvs_1_ShuffleUnit1_5_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_5_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_5_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_5_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_5_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_5_conv3_bias,
                 shuffleunit1_5_output);
    /**ShuffleUnit1_6**/
    ShuffleUnit1(shuffleunit1_5_output,
                 ShuffleConvs_1_ShuffleUnit1_6_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_6_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_6_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_6_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_6_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_6_conv3_bias,
                 shuffleunit1_6_output);
    /**ShuffleUnit1_7**/
    ShuffleUnit1(shuffleunit1_6_output,
                 ShuffleConvs_1_ShuffleUnit1_7_conv1_weight,
                 ShuffleConvs_1_ShuffleUnit1_7_conv1_bias,
                 ShuffleConvs_1_ShuffleUnit1_7_conv2_weight,
                 ShuffleConvs_1_ShuffleUnit1_7_conv2_bias,
                 ShuffleConvs_1_ShuffleUnit1_7_conv3_weight,
                 ShuffleConvs_1_ShuffleUnit1_7_conv3_bias,
                 shuffleunit1_7_output);
    /**DownsampleUnit2**/
    DownsampleUnit2(shuffleunit1_7_output,
                    ShuffleConvs_2_DownsampleUnit_conv1r_weight,
                    ShuffleConvs_2_DownsampleUnit_conv1r_bias,
                    ShuffleConvs_2_DownsampleUnit_conv2r_weight,
                    ShuffleConvs_2_DownsampleUnit_conv2r_bias,
                    ShuffleConvs_2_DownsampleUnit_conv3r_weight,
                    ShuffleConvs_2_DownsampleUnit_conv3r_bias,
                    ShuffleConvs_2_DownsampleUnit_conv1l_weight,
                    ShuffleConvs_2_DownsampleUnit_conv1l_bias,
                    ShuffleConvs_2_DownsampleUnit_conv2l_weight,
                    ShuffleConvs_2_DownsampleUnit_conv2l_bias,
                    downsampleunit2_output);
    /**ShuffleUnit2_0**/
    ShuffleUnit2(downsampleunit2_output,
                 ShuffleConvs_2_ShuffleUnit2_0_conv1_weight,
                 ShuffleConvs_2_ShuffleUnit2_0_conv1_bias,
                 ShuffleConvs_2_ShuffleUnit2_0_conv2_weight,
                 ShuffleConvs_2_ShuffleUnit2_0_conv2_bias,
                 ShuffleConvs_2_ShuffleUnit2_0_conv3_weight,
                 ShuffleConvs_2_ShuffleUnit2_0_conv3_bias,
                 shuffleunit2_0_output);
    /**ShuffleUnit2_1**/
    ShuffleUnit2(shuffleunit2_0_output,
                 ShuffleConvs_2_ShuffleUnit2_1_conv1_weight,
                 ShuffleConvs_2_ShuffleUnit2_1_conv1_bias,
                 ShuffleConvs_2_ShuffleUnit2_1_conv2_weight,
                 ShuffleConvs_2_ShuffleUnit2_1_conv2_bias,
                 ShuffleConvs_2_ShuffleUnit2_1_conv3_weight,
                 ShuffleConvs_2_ShuffleUnit2_1_conv3_bias,
                 shuffleunit2_1_output);
    /**ShuffleUnit2_2**/
    ShuffleUnit2(shuffleunit2_1_output,
                 ShuffleConvs_2_ShuffleUnit2_2_conv1_weight,
                 ShuffleConvs_2_ShuffleUnit2_2_conv1_bias,
                 ShuffleConvs_2_ShuffleUnit2_2_conv2_weight,
                 ShuffleConvs_2_ShuffleUnit2_2_conv2_bias,
                 ShuffleConvs_2_ShuffleUnit2_2_conv3_weight,
                 ShuffleConvs_2_ShuffleUnit2_2_conv3_bias,
                 shuffleunit2_2_output);
    
    
    
    conv_last(shuffleunit2_2_output,
              conv_last_weight,
              conv_last_bias,
              conv_last_output
              );
    
    avgpool(conv_last_output,avgpool_output);

    fc(avgpool_output,fc_weight,fc_bias,fc_output);
    
    for(int w=0;w<32;w++){
            for(int h=0;h<32;h++){
                cout<< conv1_output[0][0][w][h] <<" ";
            }cout<<endl;
    }
    for(int i = 0; i < 10; i++){
        cout<<fc_output[i]<<endl;
    }
    
}