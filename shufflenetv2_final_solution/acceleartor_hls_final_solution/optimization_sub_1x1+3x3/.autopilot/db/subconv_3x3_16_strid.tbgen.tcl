set moduleName subconv_3x3_16_strid
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {subconv_3x3_16_strid}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight_V int 8 regular {array 432 { 1 3 } 1 1 }  }
	{ bias_V int 8 regular {array 48 { 1 3 } 1 1 }  }
	{ output_V int 8 regular {array 4800 { 0 3 } 0 1 }  }
	{ ShuffleConvs_1_Downs_47 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_46 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_35 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_24 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_13 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_4 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_3 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_2 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_1 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_45 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_44 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_43 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_42 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_41 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_40 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_39 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_38 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_37 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_36 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_34 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_33 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_32 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_31 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_30 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_29 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_28 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_27 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_26 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_25 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_23 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_22 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_21 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_20 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_19 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_18 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_17 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_16 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_15 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_14 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_12 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_11 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_10 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_9 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_8 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_7 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_6 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
	{ ShuffleConvs_1_Downs_5 int 8 regular {array 324 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bias_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ShuffleConvs_1_Downs_47", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_46", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_35", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_24", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_13", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 4,"up" : 4,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 5,"up" : 5,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 6,"up" : 6,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 7,"up" : 7,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 8,"up" : 8,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 9,"up" : 9,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_45", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 10,"up" : 10,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_44", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 11,"up" : 11,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_43", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 12,"up" : 12,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_42", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 13,"up" : 13,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_41", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 14,"up" : 14,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_40", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 15,"up" : 15,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_39", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 16,"up" : 16,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_38", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 17,"up" : 17,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_37", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 18,"up" : 18,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_36", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 19,"up" : 19,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_34", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 20,"up" : 20,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_33", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 21,"up" : 21,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_32", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 22,"up" : 22,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_31", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 23,"up" : 23,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_30", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 24,"up" : 24,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_29", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 25,"up" : 25,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_28", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 26,"up" : 26,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_27", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 27,"up" : 27,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_26", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 28,"up" : 28,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_25", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 29,"up" : 29,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_23", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 30,"up" : 30,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_22", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 31,"up" : 31,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_21", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 32,"up" : 32,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_20", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 33,"up" : 33,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_19", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 34,"up" : 34,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_18", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 35,"up" : 35,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_17", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 36,"up" : 36,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_16", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 37,"up" : 37,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_15", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 38,"up" : 38,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_14", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 39,"up" : 39,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_12", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 40,"up" : 40,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_11", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 41,"up" : 41,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_10", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 42,"up" : 42,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 43,"up" : 43,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 44,"up" : 44,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 45,"up" : 45,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 46,"up" : 46,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ShuffleConvs_1_Downs_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ShuffleConvs_1_DownsampleUnit__conv1r_output_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 47,"up" : 47,"step" : 2},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 160
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weight_V_address0 sc_out sc_lv 9 signal 0 } 
	{ weight_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ weight_V_q0 sc_in sc_lv 8 signal 0 } 
	{ bias_V_address0 sc_out sc_lv 6 signal 1 } 
	{ bias_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ bias_V_q0 sc_in sc_lv 8 signal 1 } 
	{ output_V_address0 sc_out sc_lv 13 signal 2 } 
	{ output_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_V_we0 sc_out sc_logic 1 signal 2 } 
	{ output_V_d0 sc_out sc_lv 8 signal 2 } 
	{ ShuffleConvs_1_Downs_47_address0 sc_out sc_lv 9 signal 3 } 
	{ ShuffleConvs_1_Downs_47_ce0 sc_out sc_logic 1 signal 3 } 
	{ ShuffleConvs_1_Downs_47_q0 sc_in sc_lv 8 signal 3 } 
	{ ShuffleConvs_1_Downs_46_address0 sc_out sc_lv 9 signal 4 } 
	{ ShuffleConvs_1_Downs_46_ce0 sc_out sc_logic 1 signal 4 } 
	{ ShuffleConvs_1_Downs_46_q0 sc_in sc_lv 8 signal 4 } 
	{ ShuffleConvs_1_Downs_35_address0 sc_out sc_lv 9 signal 5 } 
	{ ShuffleConvs_1_Downs_35_ce0 sc_out sc_logic 1 signal 5 } 
	{ ShuffleConvs_1_Downs_35_q0 sc_in sc_lv 8 signal 5 } 
	{ ShuffleConvs_1_Downs_24_address0 sc_out sc_lv 9 signal 6 } 
	{ ShuffleConvs_1_Downs_24_ce0 sc_out sc_logic 1 signal 6 } 
	{ ShuffleConvs_1_Downs_24_q0 sc_in sc_lv 8 signal 6 } 
	{ ShuffleConvs_1_Downs_13_address0 sc_out sc_lv 9 signal 7 } 
	{ ShuffleConvs_1_Downs_13_ce0 sc_out sc_logic 1 signal 7 } 
	{ ShuffleConvs_1_Downs_13_q0 sc_in sc_lv 8 signal 7 } 
	{ ShuffleConvs_1_Downs_4_address0 sc_out sc_lv 9 signal 8 } 
	{ ShuffleConvs_1_Downs_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ ShuffleConvs_1_Downs_4_q0 sc_in sc_lv 8 signal 8 } 
	{ ShuffleConvs_1_Downs_3_address0 sc_out sc_lv 9 signal 9 } 
	{ ShuffleConvs_1_Downs_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ ShuffleConvs_1_Downs_3_q0 sc_in sc_lv 8 signal 9 } 
	{ ShuffleConvs_1_Downs_2_address0 sc_out sc_lv 9 signal 10 } 
	{ ShuffleConvs_1_Downs_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ ShuffleConvs_1_Downs_2_q0 sc_in sc_lv 8 signal 10 } 
	{ ShuffleConvs_1_Downs_1_address0 sc_out sc_lv 9 signal 11 } 
	{ ShuffleConvs_1_Downs_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ ShuffleConvs_1_Downs_1_q0 sc_in sc_lv 8 signal 11 } 
	{ ShuffleConvs_1_Downs_address0 sc_out sc_lv 9 signal 12 } 
	{ ShuffleConvs_1_Downs_ce0 sc_out sc_logic 1 signal 12 } 
	{ ShuffleConvs_1_Downs_q0 sc_in sc_lv 8 signal 12 } 
	{ ShuffleConvs_1_Downs_45_address0 sc_out sc_lv 9 signal 13 } 
	{ ShuffleConvs_1_Downs_45_ce0 sc_out sc_logic 1 signal 13 } 
	{ ShuffleConvs_1_Downs_45_q0 sc_in sc_lv 8 signal 13 } 
	{ ShuffleConvs_1_Downs_44_address0 sc_out sc_lv 9 signal 14 } 
	{ ShuffleConvs_1_Downs_44_ce0 sc_out sc_logic 1 signal 14 } 
	{ ShuffleConvs_1_Downs_44_q0 sc_in sc_lv 8 signal 14 } 
	{ ShuffleConvs_1_Downs_43_address0 sc_out sc_lv 9 signal 15 } 
	{ ShuffleConvs_1_Downs_43_ce0 sc_out sc_logic 1 signal 15 } 
	{ ShuffleConvs_1_Downs_43_q0 sc_in sc_lv 8 signal 15 } 
	{ ShuffleConvs_1_Downs_42_address0 sc_out sc_lv 9 signal 16 } 
	{ ShuffleConvs_1_Downs_42_ce0 sc_out sc_logic 1 signal 16 } 
	{ ShuffleConvs_1_Downs_42_q0 sc_in sc_lv 8 signal 16 } 
	{ ShuffleConvs_1_Downs_41_address0 sc_out sc_lv 9 signal 17 } 
	{ ShuffleConvs_1_Downs_41_ce0 sc_out sc_logic 1 signal 17 } 
	{ ShuffleConvs_1_Downs_41_q0 sc_in sc_lv 8 signal 17 } 
	{ ShuffleConvs_1_Downs_40_address0 sc_out sc_lv 9 signal 18 } 
	{ ShuffleConvs_1_Downs_40_ce0 sc_out sc_logic 1 signal 18 } 
	{ ShuffleConvs_1_Downs_40_q0 sc_in sc_lv 8 signal 18 } 
	{ ShuffleConvs_1_Downs_39_address0 sc_out sc_lv 9 signal 19 } 
	{ ShuffleConvs_1_Downs_39_ce0 sc_out sc_logic 1 signal 19 } 
	{ ShuffleConvs_1_Downs_39_q0 sc_in sc_lv 8 signal 19 } 
	{ ShuffleConvs_1_Downs_38_address0 sc_out sc_lv 9 signal 20 } 
	{ ShuffleConvs_1_Downs_38_ce0 sc_out sc_logic 1 signal 20 } 
	{ ShuffleConvs_1_Downs_38_q0 sc_in sc_lv 8 signal 20 } 
	{ ShuffleConvs_1_Downs_37_address0 sc_out sc_lv 9 signal 21 } 
	{ ShuffleConvs_1_Downs_37_ce0 sc_out sc_logic 1 signal 21 } 
	{ ShuffleConvs_1_Downs_37_q0 sc_in sc_lv 8 signal 21 } 
	{ ShuffleConvs_1_Downs_36_address0 sc_out sc_lv 9 signal 22 } 
	{ ShuffleConvs_1_Downs_36_ce0 sc_out sc_logic 1 signal 22 } 
	{ ShuffleConvs_1_Downs_36_q0 sc_in sc_lv 8 signal 22 } 
	{ ShuffleConvs_1_Downs_34_address0 sc_out sc_lv 9 signal 23 } 
	{ ShuffleConvs_1_Downs_34_ce0 sc_out sc_logic 1 signal 23 } 
	{ ShuffleConvs_1_Downs_34_q0 sc_in sc_lv 8 signal 23 } 
	{ ShuffleConvs_1_Downs_33_address0 sc_out sc_lv 9 signal 24 } 
	{ ShuffleConvs_1_Downs_33_ce0 sc_out sc_logic 1 signal 24 } 
	{ ShuffleConvs_1_Downs_33_q0 sc_in sc_lv 8 signal 24 } 
	{ ShuffleConvs_1_Downs_32_address0 sc_out sc_lv 9 signal 25 } 
	{ ShuffleConvs_1_Downs_32_ce0 sc_out sc_logic 1 signal 25 } 
	{ ShuffleConvs_1_Downs_32_q0 sc_in sc_lv 8 signal 25 } 
	{ ShuffleConvs_1_Downs_31_address0 sc_out sc_lv 9 signal 26 } 
	{ ShuffleConvs_1_Downs_31_ce0 sc_out sc_logic 1 signal 26 } 
	{ ShuffleConvs_1_Downs_31_q0 sc_in sc_lv 8 signal 26 } 
	{ ShuffleConvs_1_Downs_30_address0 sc_out sc_lv 9 signal 27 } 
	{ ShuffleConvs_1_Downs_30_ce0 sc_out sc_logic 1 signal 27 } 
	{ ShuffleConvs_1_Downs_30_q0 sc_in sc_lv 8 signal 27 } 
	{ ShuffleConvs_1_Downs_29_address0 sc_out sc_lv 9 signal 28 } 
	{ ShuffleConvs_1_Downs_29_ce0 sc_out sc_logic 1 signal 28 } 
	{ ShuffleConvs_1_Downs_29_q0 sc_in sc_lv 8 signal 28 } 
	{ ShuffleConvs_1_Downs_28_address0 sc_out sc_lv 9 signal 29 } 
	{ ShuffleConvs_1_Downs_28_ce0 sc_out sc_logic 1 signal 29 } 
	{ ShuffleConvs_1_Downs_28_q0 sc_in sc_lv 8 signal 29 } 
	{ ShuffleConvs_1_Downs_27_address0 sc_out sc_lv 9 signal 30 } 
	{ ShuffleConvs_1_Downs_27_ce0 sc_out sc_logic 1 signal 30 } 
	{ ShuffleConvs_1_Downs_27_q0 sc_in sc_lv 8 signal 30 } 
	{ ShuffleConvs_1_Downs_26_address0 sc_out sc_lv 9 signal 31 } 
	{ ShuffleConvs_1_Downs_26_ce0 sc_out sc_logic 1 signal 31 } 
	{ ShuffleConvs_1_Downs_26_q0 sc_in sc_lv 8 signal 31 } 
	{ ShuffleConvs_1_Downs_25_address0 sc_out sc_lv 9 signal 32 } 
	{ ShuffleConvs_1_Downs_25_ce0 sc_out sc_logic 1 signal 32 } 
	{ ShuffleConvs_1_Downs_25_q0 sc_in sc_lv 8 signal 32 } 
	{ ShuffleConvs_1_Downs_23_address0 sc_out sc_lv 9 signal 33 } 
	{ ShuffleConvs_1_Downs_23_ce0 sc_out sc_logic 1 signal 33 } 
	{ ShuffleConvs_1_Downs_23_q0 sc_in sc_lv 8 signal 33 } 
	{ ShuffleConvs_1_Downs_22_address0 sc_out sc_lv 9 signal 34 } 
	{ ShuffleConvs_1_Downs_22_ce0 sc_out sc_logic 1 signal 34 } 
	{ ShuffleConvs_1_Downs_22_q0 sc_in sc_lv 8 signal 34 } 
	{ ShuffleConvs_1_Downs_21_address0 sc_out sc_lv 9 signal 35 } 
	{ ShuffleConvs_1_Downs_21_ce0 sc_out sc_logic 1 signal 35 } 
	{ ShuffleConvs_1_Downs_21_q0 sc_in sc_lv 8 signal 35 } 
	{ ShuffleConvs_1_Downs_20_address0 sc_out sc_lv 9 signal 36 } 
	{ ShuffleConvs_1_Downs_20_ce0 sc_out sc_logic 1 signal 36 } 
	{ ShuffleConvs_1_Downs_20_q0 sc_in sc_lv 8 signal 36 } 
	{ ShuffleConvs_1_Downs_19_address0 sc_out sc_lv 9 signal 37 } 
	{ ShuffleConvs_1_Downs_19_ce0 sc_out sc_logic 1 signal 37 } 
	{ ShuffleConvs_1_Downs_19_q0 sc_in sc_lv 8 signal 37 } 
	{ ShuffleConvs_1_Downs_18_address0 sc_out sc_lv 9 signal 38 } 
	{ ShuffleConvs_1_Downs_18_ce0 sc_out sc_logic 1 signal 38 } 
	{ ShuffleConvs_1_Downs_18_q0 sc_in sc_lv 8 signal 38 } 
	{ ShuffleConvs_1_Downs_17_address0 sc_out sc_lv 9 signal 39 } 
	{ ShuffleConvs_1_Downs_17_ce0 sc_out sc_logic 1 signal 39 } 
	{ ShuffleConvs_1_Downs_17_q0 sc_in sc_lv 8 signal 39 } 
	{ ShuffleConvs_1_Downs_16_address0 sc_out sc_lv 9 signal 40 } 
	{ ShuffleConvs_1_Downs_16_ce0 sc_out sc_logic 1 signal 40 } 
	{ ShuffleConvs_1_Downs_16_q0 sc_in sc_lv 8 signal 40 } 
	{ ShuffleConvs_1_Downs_15_address0 sc_out sc_lv 9 signal 41 } 
	{ ShuffleConvs_1_Downs_15_ce0 sc_out sc_logic 1 signal 41 } 
	{ ShuffleConvs_1_Downs_15_q0 sc_in sc_lv 8 signal 41 } 
	{ ShuffleConvs_1_Downs_14_address0 sc_out sc_lv 9 signal 42 } 
	{ ShuffleConvs_1_Downs_14_ce0 sc_out sc_logic 1 signal 42 } 
	{ ShuffleConvs_1_Downs_14_q0 sc_in sc_lv 8 signal 42 } 
	{ ShuffleConvs_1_Downs_12_address0 sc_out sc_lv 9 signal 43 } 
	{ ShuffleConvs_1_Downs_12_ce0 sc_out sc_logic 1 signal 43 } 
	{ ShuffleConvs_1_Downs_12_q0 sc_in sc_lv 8 signal 43 } 
	{ ShuffleConvs_1_Downs_11_address0 sc_out sc_lv 9 signal 44 } 
	{ ShuffleConvs_1_Downs_11_ce0 sc_out sc_logic 1 signal 44 } 
	{ ShuffleConvs_1_Downs_11_q0 sc_in sc_lv 8 signal 44 } 
	{ ShuffleConvs_1_Downs_10_address0 sc_out sc_lv 9 signal 45 } 
	{ ShuffleConvs_1_Downs_10_ce0 sc_out sc_logic 1 signal 45 } 
	{ ShuffleConvs_1_Downs_10_q0 sc_in sc_lv 8 signal 45 } 
	{ ShuffleConvs_1_Downs_9_address0 sc_out sc_lv 9 signal 46 } 
	{ ShuffleConvs_1_Downs_9_ce0 sc_out sc_logic 1 signal 46 } 
	{ ShuffleConvs_1_Downs_9_q0 sc_in sc_lv 8 signal 46 } 
	{ ShuffleConvs_1_Downs_8_address0 sc_out sc_lv 9 signal 47 } 
	{ ShuffleConvs_1_Downs_8_ce0 sc_out sc_logic 1 signal 47 } 
	{ ShuffleConvs_1_Downs_8_q0 sc_in sc_lv 8 signal 47 } 
	{ ShuffleConvs_1_Downs_7_address0 sc_out sc_lv 9 signal 48 } 
	{ ShuffleConvs_1_Downs_7_ce0 sc_out sc_logic 1 signal 48 } 
	{ ShuffleConvs_1_Downs_7_q0 sc_in sc_lv 8 signal 48 } 
	{ ShuffleConvs_1_Downs_6_address0 sc_out sc_lv 9 signal 49 } 
	{ ShuffleConvs_1_Downs_6_ce0 sc_out sc_logic 1 signal 49 } 
	{ ShuffleConvs_1_Downs_6_q0 sc_in sc_lv 8 signal 49 } 
	{ ShuffleConvs_1_Downs_5_address0 sc_out sc_lv 9 signal 50 } 
	{ ShuffleConvs_1_Downs_5_ce0 sc_out sc_logic 1 signal 50 } 
	{ ShuffleConvs_1_Downs_5_q0 sc_in sc_lv 8 signal 50 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weight_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_V", "role": "address0" }} , 
 	{ "name": "weight_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ce0" }} , 
 	{ "name": "weight_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_V", "role": "q0" }} , 
 	{ "name": "bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "bias_V", "role": "address0" }} , 
 	{ "name": "bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_V", "role": "ce0" }} , 
 	{ "name": "bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bias_V", "role": "q0" }} , 
 	{ "name": "output_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "output_V", "role": "address0" }} , 
 	{ "name": "output_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "ce0" }} , 
 	{ "name": "output_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V", "role": "we0" }} , 
 	{ "name": "output_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_V", "role": "d0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_47", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_47", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_47", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_46", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_46", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_46", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_35", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_35", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_35", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_24", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_24", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_24", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_13", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_13", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_13", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_4", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_4", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_4", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_3", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_3", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_3", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_2", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_2", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_2", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_1", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_1", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_1", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_45", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_45", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_45", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_44", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_44", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_44", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_43", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_43", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_43", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_42", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_42", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_42", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_41", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_41", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_41", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_40", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_40", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_40", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_39", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_39", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_39", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_38", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_38", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_38", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_37", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_37", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_37", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_36", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_36", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_36", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_34", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_34", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_34", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_33", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_33", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_33", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_32", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_32", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_32", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_31", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_31", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_31", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_30", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_30", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_30", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_29", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_29", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_29", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_28", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_28", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_28", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_27", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_27", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_27", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_26", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_26", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_26", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_25", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_25", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_25", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_23", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_23", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_23", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_22", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_22", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_22", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_21", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_21", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_21", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_20", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_20", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_20", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_19", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_19", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_19", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_18", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_18", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_18", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_17", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_17", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_17", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_16", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_16", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_16", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_15", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_15", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_15", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_14", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_14", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_14", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_12", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_12", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_12", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_11", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_11", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_11", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_10", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_10", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_10", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_9", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_9", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_9", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_8", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_8", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_8", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_7", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_7", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_7", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_6", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_6", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_6", "role": "q0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_5", "role": "address0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_5", "role": "ce0" }} , 
 	{ "name": "ShuffleConvs_1_Downs_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ShuffleConvs_1_Downs_5", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "subconv_3x3_16_strid",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "weight_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ShuffleConvs_1_Downs_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ShuffleConvs_1_Downs_5", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ShuffleNetV2_mux_fYi_x_U354", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ShuffleNetV2_mac_cud_x_U355", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	subconv_3x3_16_strid {
		weight_V {Type I LastRead 5 FirstWrite -1}
		bias_V {Type I LastRead 4 FirstWrite -1}
		output_V {Type O LastRead -1 FirstWrite 5}
		ShuffleConvs_1_Downs_47 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_46 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_35 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_24 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_13 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_4 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_3 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_2 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_1 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_45 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_44 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_43 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_42 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_41 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_40 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_39 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_38 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_37 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_36 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_34 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_33 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_32 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_31 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_30 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_29 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_28 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_27 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_26 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_25 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_23 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_22 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_21 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_20 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_19 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_18 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_17 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_16 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_15 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_14 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_12 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_11 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_10 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_9 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_8 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_7 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_6 {Type I LastRead 5 FirstWrite -1}
		ShuffleConvs_1_Downs_5 {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "111457", "Max" : "111457"}
	, {"Name" : "Interval", "Min" : "111457", "Max" : "111457"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weight_V { ap_memory {  { weight_V_address0 mem_address 1 9 }  { weight_V_ce0 mem_ce 1 1 }  { weight_V_q0 mem_dout 0 8 } } }
	bias_V { ap_memory {  { bias_V_address0 mem_address 1 6 }  { bias_V_ce0 mem_ce 1 1 }  { bias_V_q0 mem_dout 0 8 } } }
	output_V { ap_memory {  { output_V_address0 mem_address 1 13 }  { output_V_ce0 mem_ce 1 1 }  { output_V_we0 mem_we 1 1 }  { output_V_d0 mem_din 1 8 } } }
	ShuffleConvs_1_Downs_47 { ap_memory {  { ShuffleConvs_1_Downs_47_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_47_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_47_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_46 { ap_memory {  { ShuffleConvs_1_Downs_46_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_46_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_46_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_35 { ap_memory {  { ShuffleConvs_1_Downs_35_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_35_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_35_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_24 { ap_memory {  { ShuffleConvs_1_Downs_24_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_24_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_24_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_13 { ap_memory {  { ShuffleConvs_1_Downs_13_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_13_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_13_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_4 { ap_memory {  { ShuffleConvs_1_Downs_4_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_4_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_4_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_3 { ap_memory {  { ShuffleConvs_1_Downs_3_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_3_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_3_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_2 { ap_memory {  { ShuffleConvs_1_Downs_2_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_2_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_2_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_1 { ap_memory {  { ShuffleConvs_1_Downs_1_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_1_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_1_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs { ap_memory {  { ShuffleConvs_1_Downs_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_45 { ap_memory {  { ShuffleConvs_1_Downs_45_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_45_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_45_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_44 { ap_memory {  { ShuffleConvs_1_Downs_44_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_44_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_44_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_43 { ap_memory {  { ShuffleConvs_1_Downs_43_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_43_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_43_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_42 { ap_memory {  { ShuffleConvs_1_Downs_42_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_42_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_42_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_41 { ap_memory {  { ShuffleConvs_1_Downs_41_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_41_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_41_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_40 { ap_memory {  { ShuffleConvs_1_Downs_40_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_40_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_40_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_39 { ap_memory {  { ShuffleConvs_1_Downs_39_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_39_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_39_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_38 { ap_memory {  { ShuffleConvs_1_Downs_38_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_38_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_38_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_37 { ap_memory {  { ShuffleConvs_1_Downs_37_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_37_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_37_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_36 { ap_memory {  { ShuffleConvs_1_Downs_36_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_36_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_36_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_34 { ap_memory {  { ShuffleConvs_1_Downs_34_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_34_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_34_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_33 { ap_memory {  { ShuffleConvs_1_Downs_33_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_33_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_33_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_32 { ap_memory {  { ShuffleConvs_1_Downs_32_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_32_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_32_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_31 { ap_memory {  { ShuffleConvs_1_Downs_31_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_31_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_31_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_30 { ap_memory {  { ShuffleConvs_1_Downs_30_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_30_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_30_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_29 { ap_memory {  { ShuffleConvs_1_Downs_29_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_29_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_29_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_28 { ap_memory {  { ShuffleConvs_1_Downs_28_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_28_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_28_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_27 { ap_memory {  { ShuffleConvs_1_Downs_27_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_27_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_27_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_26 { ap_memory {  { ShuffleConvs_1_Downs_26_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_26_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_26_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_25 { ap_memory {  { ShuffleConvs_1_Downs_25_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_25_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_25_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_23 { ap_memory {  { ShuffleConvs_1_Downs_23_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_23_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_23_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_22 { ap_memory {  { ShuffleConvs_1_Downs_22_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_22_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_22_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_21 { ap_memory {  { ShuffleConvs_1_Downs_21_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_21_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_21_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_20 { ap_memory {  { ShuffleConvs_1_Downs_20_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_20_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_20_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_19 { ap_memory {  { ShuffleConvs_1_Downs_19_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_19_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_19_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_18 { ap_memory {  { ShuffleConvs_1_Downs_18_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_18_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_18_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_17 { ap_memory {  { ShuffleConvs_1_Downs_17_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_17_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_17_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_16 { ap_memory {  { ShuffleConvs_1_Downs_16_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_16_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_16_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_15 { ap_memory {  { ShuffleConvs_1_Downs_15_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_15_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_15_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_14 { ap_memory {  { ShuffleConvs_1_Downs_14_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_14_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_14_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_12 { ap_memory {  { ShuffleConvs_1_Downs_12_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_12_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_12_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_11 { ap_memory {  { ShuffleConvs_1_Downs_11_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_11_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_11_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_10 { ap_memory {  { ShuffleConvs_1_Downs_10_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_10_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_10_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_9 { ap_memory {  { ShuffleConvs_1_Downs_9_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_9_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_9_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_8 { ap_memory {  { ShuffleConvs_1_Downs_8_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_8_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_8_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_7 { ap_memory {  { ShuffleConvs_1_Downs_7_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_7_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_7_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_6 { ap_memory {  { ShuffleConvs_1_Downs_6_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_6_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_6_q0 mem_dout 0 8 } } }
	ShuffleConvs_1_Downs_5 { ap_memory {  { ShuffleConvs_1_Downs_5_address0 mem_address 1 9 }  { ShuffleConvs_1_Downs_5_ce0 mem_ce 1 1 }  { ShuffleConvs_1_Downs_5_q0 mem_dout 0 8 } } }
}
