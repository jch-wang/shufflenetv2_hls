set moduleName subconv_1x1_16_p
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {subconv_1x1_16_p}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V int 8 regular {array 7776 { 1 3 } 1 1 }  }
	{ weight_0_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ weight_1_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ weight_2_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ weight_3_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ weight_4_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ weight_5_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ weight_6_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ weight_7_V int 8 regular {array 72 { 1 3 } 1 1 }  }
	{ bias_V int 8 regular {array 24 { 1 3 } 1 1 }  }
	{ buffer1_1_24_16x16_p_7 int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
	{ buffer1_1_24_16x16_p_6 int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
	{ buffer1_1_24_16x16_p_5 int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
	{ buffer1_1_24_16x16_p_4 int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
	{ buffer1_1_24_16x16_p_3 int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
	{ buffer1_1_24_16x16_p_2 int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
	{ buffer1_1_24_16x16_p_1 int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
	{ buffer1_1_24_16x16_p int 8 regular {array 972 { 2 0 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bias_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buffer1_1_24_16x16_p_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 16,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "buffer1_1_24_16x16_p_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 1,"up" : 17,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "buffer1_1_24_16x16_p_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 2,"up" : 18,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "buffer1_1_24_16x16_p_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 3,"up" : 19,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "buffer1_1_24_16x16_p_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 4,"up" : 20,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "buffer1_1_24_16x16_p_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 5,"up" : 21,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "buffer1_1_24_16x16_p_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 6,"up" : 22,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "buffer1_1_24_16x16_p", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buffer1_1_24_16x16_p.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 7,"up" : 23,"step" : 8},{"low" : 0,"up" : 17,"step" : 1},{"low" : 0,"up" : 17,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 108
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V_address0 sc_out sc_lv 13 signal 0 } 
	{ input_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_V_q0 sc_in sc_lv 8 signal 0 } 
	{ weight_0_V_address0 sc_out sc_lv 7 signal 1 } 
	{ weight_0_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight_0_V_q0 sc_in sc_lv 8 signal 1 } 
	{ weight_1_V_address0 sc_out sc_lv 7 signal 2 } 
	{ weight_1_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ weight_1_V_q0 sc_in sc_lv 8 signal 2 } 
	{ weight_2_V_address0 sc_out sc_lv 7 signal 3 } 
	{ weight_2_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ weight_2_V_q0 sc_in sc_lv 8 signal 3 } 
	{ weight_3_V_address0 sc_out sc_lv 7 signal 4 } 
	{ weight_3_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ weight_3_V_q0 sc_in sc_lv 8 signal 4 } 
	{ weight_4_V_address0 sc_out sc_lv 7 signal 5 } 
	{ weight_4_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ weight_4_V_q0 sc_in sc_lv 8 signal 5 } 
	{ weight_5_V_address0 sc_out sc_lv 7 signal 6 } 
	{ weight_5_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ weight_5_V_q0 sc_in sc_lv 8 signal 6 } 
	{ weight_6_V_address0 sc_out sc_lv 7 signal 7 } 
	{ weight_6_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ weight_6_V_q0 sc_in sc_lv 8 signal 7 } 
	{ weight_7_V_address0 sc_out sc_lv 7 signal 8 } 
	{ weight_7_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ weight_7_V_q0 sc_in sc_lv 8 signal 8 } 
	{ bias_V_address0 sc_out sc_lv 5 signal 9 } 
	{ bias_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ bias_V_q0 sc_in sc_lv 8 signal 9 } 
	{ buffer1_1_24_16x16_p_7_address0 sc_out sc_lv 10 signal 10 } 
	{ buffer1_1_24_16x16_p_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ buffer1_1_24_16x16_p_7_we0 sc_out sc_logic 1 signal 10 } 
	{ buffer1_1_24_16x16_p_7_d0 sc_out sc_lv 8 signal 10 } 
	{ buffer1_1_24_16x16_p_7_q0 sc_in sc_lv 8 signal 10 } 
	{ buffer1_1_24_16x16_p_7_address1 sc_out sc_lv 10 signal 10 } 
	{ buffer1_1_24_16x16_p_7_ce1 sc_out sc_logic 1 signal 10 } 
	{ buffer1_1_24_16x16_p_7_we1 sc_out sc_logic 1 signal 10 } 
	{ buffer1_1_24_16x16_p_7_d1 sc_out sc_lv 8 signal 10 } 
	{ buffer1_1_24_16x16_p_6_address0 sc_out sc_lv 10 signal 11 } 
	{ buffer1_1_24_16x16_p_6_ce0 sc_out sc_logic 1 signal 11 } 
	{ buffer1_1_24_16x16_p_6_we0 sc_out sc_logic 1 signal 11 } 
	{ buffer1_1_24_16x16_p_6_d0 sc_out sc_lv 8 signal 11 } 
	{ buffer1_1_24_16x16_p_6_q0 sc_in sc_lv 8 signal 11 } 
	{ buffer1_1_24_16x16_p_6_address1 sc_out sc_lv 10 signal 11 } 
	{ buffer1_1_24_16x16_p_6_ce1 sc_out sc_logic 1 signal 11 } 
	{ buffer1_1_24_16x16_p_6_we1 sc_out sc_logic 1 signal 11 } 
	{ buffer1_1_24_16x16_p_6_d1 sc_out sc_lv 8 signal 11 } 
	{ buffer1_1_24_16x16_p_5_address0 sc_out sc_lv 10 signal 12 } 
	{ buffer1_1_24_16x16_p_5_ce0 sc_out sc_logic 1 signal 12 } 
	{ buffer1_1_24_16x16_p_5_we0 sc_out sc_logic 1 signal 12 } 
	{ buffer1_1_24_16x16_p_5_d0 sc_out sc_lv 8 signal 12 } 
	{ buffer1_1_24_16x16_p_5_q0 sc_in sc_lv 8 signal 12 } 
	{ buffer1_1_24_16x16_p_5_address1 sc_out sc_lv 10 signal 12 } 
	{ buffer1_1_24_16x16_p_5_ce1 sc_out sc_logic 1 signal 12 } 
	{ buffer1_1_24_16x16_p_5_we1 sc_out sc_logic 1 signal 12 } 
	{ buffer1_1_24_16x16_p_5_d1 sc_out sc_lv 8 signal 12 } 
	{ buffer1_1_24_16x16_p_4_address0 sc_out sc_lv 10 signal 13 } 
	{ buffer1_1_24_16x16_p_4_ce0 sc_out sc_logic 1 signal 13 } 
	{ buffer1_1_24_16x16_p_4_we0 sc_out sc_logic 1 signal 13 } 
	{ buffer1_1_24_16x16_p_4_d0 sc_out sc_lv 8 signal 13 } 
	{ buffer1_1_24_16x16_p_4_q0 sc_in sc_lv 8 signal 13 } 
	{ buffer1_1_24_16x16_p_4_address1 sc_out sc_lv 10 signal 13 } 
	{ buffer1_1_24_16x16_p_4_ce1 sc_out sc_logic 1 signal 13 } 
	{ buffer1_1_24_16x16_p_4_we1 sc_out sc_logic 1 signal 13 } 
	{ buffer1_1_24_16x16_p_4_d1 sc_out sc_lv 8 signal 13 } 
	{ buffer1_1_24_16x16_p_3_address0 sc_out sc_lv 10 signal 14 } 
	{ buffer1_1_24_16x16_p_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ buffer1_1_24_16x16_p_3_we0 sc_out sc_logic 1 signal 14 } 
	{ buffer1_1_24_16x16_p_3_d0 sc_out sc_lv 8 signal 14 } 
	{ buffer1_1_24_16x16_p_3_q0 sc_in sc_lv 8 signal 14 } 
	{ buffer1_1_24_16x16_p_3_address1 sc_out sc_lv 10 signal 14 } 
	{ buffer1_1_24_16x16_p_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ buffer1_1_24_16x16_p_3_we1 sc_out sc_logic 1 signal 14 } 
	{ buffer1_1_24_16x16_p_3_d1 sc_out sc_lv 8 signal 14 } 
	{ buffer1_1_24_16x16_p_2_address0 sc_out sc_lv 10 signal 15 } 
	{ buffer1_1_24_16x16_p_2_ce0 sc_out sc_logic 1 signal 15 } 
	{ buffer1_1_24_16x16_p_2_we0 sc_out sc_logic 1 signal 15 } 
	{ buffer1_1_24_16x16_p_2_d0 sc_out sc_lv 8 signal 15 } 
	{ buffer1_1_24_16x16_p_2_q0 sc_in sc_lv 8 signal 15 } 
	{ buffer1_1_24_16x16_p_2_address1 sc_out sc_lv 10 signal 15 } 
	{ buffer1_1_24_16x16_p_2_ce1 sc_out sc_logic 1 signal 15 } 
	{ buffer1_1_24_16x16_p_2_we1 sc_out sc_logic 1 signal 15 } 
	{ buffer1_1_24_16x16_p_2_d1 sc_out sc_lv 8 signal 15 } 
	{ buffer1_1_24_16x16_p_1_address0 sc_out sc_lv 10 signal 16 } 
	{ buffer1_1_24_16x16_p_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ buffer1_1_24_16x16_p_1_we0 sc_out sc_logic 1 signal 16 } 
	{ buffer1_1_24_16x16_p_1_d0 sc_out sc_lv 8 signal 16 } 
	{ buffer1_1_24_16x16_p_1_q0 sc_in sc_lv 8 signal 16 } 
	{ buffer1_1_24_16x16_p_1_address1 sc_out sc_lv 10 signal 16 } 
	{ buffer1_1_24_16x16_p_1_ce1 sc_out sc_logic 1 signal 16 } 
	{ buffer1_1_24_16x16_p_1_we1 sc_out sc_logic 1 signal 16 } 
	{ buffer1_1_24_16x16_p_1_d1 sc_out sc_lv 8 signal 16 } 
	{ buffer1_1_24_16x16_p_address0 sc_out sc_lv 10 signal 17 } 
	{ buffer1_1_24_16x16_p_ce0 sc_out sc_logic 1 signal 17 } 
	{ buffer1_1_24_16x16_p_we0 sc_out sc_logic 1 signal 17 } 
	{ buffer1_1_24_16x16_p_d0 sc_out sc_lv 8 signal 17 } 
	{ buffer1_1_24_16x16_p_q0 sc_in sc_lv 8 signal 17 } 
	{ buffer1_1_24_16x16_p_address1 sc_out sc_lv 10 signal 17 } 
	{ buffer1_1_24_16x16_p_ce1 sc_out sc_logic 1 signal 17 } 
	{ buffer1_1_24_16x16_p_we1 sc_out sc_logic 1 signal 17 } 
	{ buffer1_1_24_16x16_p_d1 sc_out sc_lv 8 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "input_V", "role": "address0" }} , 
 	{ "name": "input_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V", "role": "ce0" }} , 
 	{ "name": "input_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_V", "role": "q0" }} , 
 	{ "name": "weight_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_0_V", "role": "address0" }} , 
 	{ "name": "weight_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_0_V", "role": "ce0" }} , 
 	{ "name": "weight_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_0_V", "role": "q0" }} , 
 	{ "name": "weight_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_1_V", "role": "address0" }} , 
 	{ "name": "weight_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_1_V", "role": "ce0" }} , 
 	{ "name": "weight_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_1_V", "role": "q0" }} , 
 	{ "name": "weight_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_2_V", "role": "address0" }} , 
 	{ "name": "weight_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_2_V", "role": "ce0" }} , 
 	{ "name": "weight_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_2_V", "role": "q0" }} , 
 	{ "name": "weight_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_3_V", "role": "address0" }} , 
 	{ "name": "weight_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_3_V", "role": "ce0" }} , 
 	{ "name": "weight_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_3_V", "role": "q0" }} , 
 	{ "name": "weight_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_4_V", "role": "address0" }} , 
 	{ "name": "weight_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_4_V", "role": "ce0" }} , 
 	{ "name": "weight_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_4_V", "role": "q0" }} , 
 	{ "name": "weight_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_5_V", "role": "address0" }} , 
 	{ "name": "weight_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_5_V", "role": "ce0" }} , 
 	{ "name": "weight_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_5_V", "role": "q0" }} , 
 	{ "name": "weight_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_6_V", "role": "address0" }} , 
 	{ "name": "weight_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_6_V", "role": "ce0" }} , 
 	{ "name": "weight_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_6_V", "role": "q0" }} , 
 	{ "name": "weight_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "weight_7_V", "role": "address0" }} , 
 	{ "name": "weight_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_7_V", "role": "ce0" }} , 
 	{ "name": "weight_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_7_V", "role": "q0" }} , 
 	{ "name": "bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias_V", "role": "address0" }} , 
 	{ "name": "bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_V", "role": "ce0" }} , 
 	{ "name": "bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bias_V", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_7", "role": "d1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_6", "role": "d1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_5", "role": "d1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_4", "role": "d1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_3", "role": "d1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_2", "role": "d1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p_1", "role": "d1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "address0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "ce0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "we0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "d0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "q0" }} , 
 	{ "name": "buffer1_1_24_16x16_p_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "address1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "ce1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "we1" }} , 
 	{ "name": "buffer1_1_24_16x16_p_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buffer1_1_24_16x16_p", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "subconv_1x1_16_p",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "input_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_6_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_7_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buffer1_1_24_16x16_p_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buffer1_1_24_16x16_p_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buffer1_1_24_16x16_p_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buffer1_1_24_16x16_p_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buffer1_1_24_16x16_p_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buffer1_1_24_16x16_p_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buffer1_1_24_16x16_p_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buffer1_1_24_16x16_p", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ShuffleNetV2_mux_jbC_x_U88", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	subconv_1x1_16_p {
		input_V {Type I LastRead 6 FirstWrite -1}
		weight_0_V {Type I LastRead 7 FirstWrite -1}
		weight_1_V {Type I LastRead 7 FirstWrite -1}
		weight_2_V {Type I LastRead 7 FirstWrite -1}
		weight_3_V {Type I LastRead 7 FirstWrite -1}
		weight_4_V {Type I LastRead 7 FirstWrite -1}
		weight_5_V {Type I LastRead 7 FirstWrite -1}
		weight_6_V {Type I LastRead 7 FirstWrite -1}
		weight_7_V {Type I LastRead 7 FirstWrite -1}
		bias_V {Type I LastRead 2 FirstWrite -1}
		buffer1_1_24_16x16_p_7 {Type IO LastRead 7 FirstWrite 3}
		buffer1_1_24_16x16_p_6 {Type IO LastRead 7 FirstWrite 3}
		buffer1_1_24_16x16_p_5 {Type IO LastRead 7 FirstWrite 3}
		buffer1_1_24_16x16_p_4 {Type IO LastRead 7 FirstWrite 3}
		buffer1_1_24_16x16_p_3 {Type IO LastRead 7 FirstWrite 3}
		buffer1_1_24_16x16_p_2 {Type IO LastRead 7 FirstWrite 3}
		buffer1_1_24_16x16_p_1 {Type IO LastRead 7 FirstWrite 3}
		buffer1_1_24_16x16_p {Type IO LastRead 7 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "135720", "Max" : "135720"}
	, {"Name" : "Interval", "Min" : "135720", "Max" : "135720"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	input_V { ap_memory {  { input_V_address0 mem_address 1 13 }  { input_V_ce0 mem_ce 1 1 }  { input_V_q0 mem_dout 0 8 } } }
	weight_0_V { ap_memory {  { weight_0_V_address0 mem_address 1 7 }  { weight_0_V_ce0 mem_ce 1 1 }  { weight_0_V_q0 mem_dout 0 8 } } }
	weight_1_V { ap_memory {  { weight_1_V_address0 mem_address 1 7 }  { weight_1_V_ce0 mem_ce 1 1 }  { weight_1_V_q0 mem_dout 0 8 } } }
	weight_2_V { ap_memory {  { weight_2_V_address0 mem_address 1 7 }  { weight_2_V_ce0 mem_ce 1 1 }  { weight_2_V_q0 mem_dout 0 8 } } }
	weight_3_V { ap_memory {  { weight_3_V_address0 mem_address 1 7 }  { weight_3_V_ce0 mem_ce 1 1 }  { weight_3_V_q0 mem_dout 0 8 } } }
	weight_4_V { ap_memory {  { weight_4_V_address0 mem_address 1 7 }  { weight_4_V_ce0 mem_ce 1 1 }  { weight_4_V_q0 mem_dout 0 8 } } }
	weight_5_V { ap_memory {  { weight_5_V_address0 mem_address 1 7 }  { weight_5_V_ce0 mem_ce 1 1 }  { weight_5_V_q0 mem_dout 0 8 } } }
	weight_6_V { ap_memory {  { weight_6_V_address0 mem_address 1 7 }  { weight_6_V_ce0 mem_ce 1 1 }  { weight_6_V_q0 mem_dout 0 8 } } }
	weight_7_V { ap_memory {  { weight_7_V_address0 mem_address 1 7 }  { weight_7_V_ce0 mem_ce 1 1 }  { weight_7_V_q0 mem_dout 0 8 } } }
	bias_V { ap_memory {  { bias_V_address0 mem_address 1 5 }  { bias_V_ce0 mem_ce 1 1 }  { bias_V_q0 mem_dout 0 8 } } }
	buffer1_1_24_16x16_p_7 { ap_memory {  { buffer1_1_24_16x16_p_7_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_7_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_7_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_7_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_7_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_7_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_7_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_7_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_7_d1 mem_din 1 8 } } }
	buffer1_1_24_16x16_p_6 { ap_memory {  { buffer1_1_24_16x16_p_6_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_6_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_6_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_6_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_6_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_6_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_6_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_6_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_6_d1 mem_din 1 8 } } }
	buffer1_1_24_16x16_p_5 { ap_memory {  { buffer1_1_24_16x16_p_5_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_5_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_5_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_5_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_5_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_5_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_5_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_5_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_5_d1 mem_din 1 8 } } }
	buffer1_1_24_16x16_p_4 { ap_memory {  { buffer1_1_24_16x16_p_4_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_4_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_4_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_4_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_4_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_4_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_4_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_4_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_4_d1 mem_din 1 8 } } }
	buffer1_1_24_16x16_p_3 { ap_memory {  { buffer1_1_24_16x16_p_3_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_3_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_3_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_3_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_3_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_3_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_3_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_3_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_3_d1 mem_din 1 8 } } }
	buffer1_1_24_16x16_p_2 { ap_memory {  { buffer1_1_24_16x16_p_2_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_2_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_2_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_2_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_2_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_2_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_2_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_2_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_2_d1 mem_din 1 8 } } }
	buffer1_1_24_16x16_p_1 { ap_memory {  { buffer1_1_24_16x16_p_1_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_1_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_1_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_1_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_1_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_1_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_1_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_1_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_1_d1 mem_din 1 8 } } }
	buffer1_1_24_16x16_p { ap_memory {  { buffer1_1_24_16x16_p_address0 mem_address 1 10 }  { buffer1_1_24_16x16_p_ce0 mem_ce 1 1 }  { buffer1_1_24_16x16_p_we0 mem_we 1 1 }  { buffer1_1_24_16x16_p_d0 mem_din 1 8 }  { buffer1_1_24_16x16_p_q0 mem_dout 0 8 }  { buffer1_1_24_16x16_p_address1 mem_address 1 10 }  { buffer1_1_24_16x16_p_ce1 mem_ce 1 1 }  { buffer1_1_24_16x16_p_we1 mem_we 1 1 }  { buffer1_1_24_16x16_p_d1 mem_din 1 8 } } }
}
