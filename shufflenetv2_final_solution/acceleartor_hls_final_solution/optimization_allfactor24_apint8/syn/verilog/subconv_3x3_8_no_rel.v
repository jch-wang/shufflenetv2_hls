// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_3x3_8_no_rel (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        weight_V_address0,
        weight_V_ce0,
        weight_V_q0,
        bias_V_address0,
        bias_V_ce0,
        bias_V_q0,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0,
        buffer1_1_48_8x8_p_V_24_address0,
        buffer1_1_48_8x8_p_V_24_ce0,
        buffer1_1_48_8x8_p_V_24_q0,
        buffer1_1_48_8x8_p_V_1_address0,
        buffer1_1_48_8x8_p_V_1_ce0,
        buffer1_1_48_8x8_p_V_1_q0,
        buffer1_1_48_8x8_p_V_2_address0,
        buffer1_1_48_8x8_p_V_2_ce0,
        buffer1_1_48_8x8_p_V_2_q0,
        buffer1_1_48_8x8_p_V_3_address0,
        buffer1_1_48_8x8_p_V_3_ce0,
        buffer1_1_48_8x8_p_V_3_q0,
        buffer1_1_48_8x8_p_V_4_address0,
        buffer1_1_48_8x8_p_V_4_ce0,
        buffer1_1_48_8x8_p_V_4_q0,
        buffer1_1_48_8x8_p_V_5_address0,
        buffer1_1_48_8x8_p_V_5_ce0,
        buffer1_1_48_8x8_p_V_5_q0,
        buffer1_1_48_8x8_p_V_6_address0,
        buffer1_1_48_8x8_p_V_6_ce0,
        buffer1_1_48_8x8_p_V_6_q0,
        buffer1_1_48_8x8_p_V_7_address0,
        buffer1_1_48_8x8_p_V_7_ce0,
        buffer1_1_48_8x8_p_V_7_q0,
        buffer1_1_48_8x8_p_V_8_address0,
        buffer1_1_48_8x8_p_V_8_ce0,
        buffer1_1_48_8x8_p_V_8_q0,
        buffer1_1_48_8x8_p_V_9_address0,
        buffer1_1_48_8x8_p_V_9_ce0,
        buffer1_1_48_8x8_p_V_9_q0,
        buffer1_1_48_8x8_p_V_10_address0,
        buffer1_1_48_8x8_p_V_10_ce0,
        buffer1_1_48_8x8_p_V_10_q0,
        buffer1_1_48_8x8_p_V_11_address0,
        buffer1_1_48_8x8_p_V_11_ce0,
        buffer1_1_48_8x8_p_V_11_q0,
        buffer1_1_48_8x8_p_V_12_address0,
        buffer1_1_48_8x8_p_V_12_ce0,
        buffer1_1_48_8x8_p_V_12_q0,
        buffer1_1_48_8x8_p_V_13_address0,
        buffer1_1_48_8x8_p_V_13_ce0,
        buffer1_1_48_8x8_p_V_13_q0,
        buffer1_1_48_8x8_p_V_14_address0,
        buffer1_1_48_8x8_p_V_14_ce0,
        buffer1_1_48_8x8_p_V_14_q0,
        buffer1_1_48_8x8_p_V_15_address0,
        buffer1_1_48_8x8_p_V_15_ce0,
        buffer1_1_48_8x8_p_V_15_q0,
        buffer1_1_48_8x8_p_V_16_address0,
        buffer1_1_48_8x8_p_V_16_ce0,
        buffer1_1_48_8x8_p_V_16_q0,
        buffer1_1_48_8x8_p_V_17_address0,
        buffer1_1_48_8x8_p_V_17_ce0,
        buffer1_1_48_8x8_p_V_17_q0,
        buffer1_1_48_8x8_p_V_18_address0,
        buffer1_1_48_8x8_p_V_18_ce0,
        buffer1_1_48_8x8_p_V_18_q0,
        buffer1_1_48_8x8_p_V_19_address0,
        buffer1_1_48_8x8_p_V_19_ce0,
        buffer1_1_48_8x8_p_V_19_q0,
        buffer1_1_48_8x8_p_V_20_address0,
        buffer1_1_48_8x8_p_V_20_ce0,
        buffer1_1_48_8x8_p_V_20_q0,
        buffer1_1_48_8x8_p_V_21_address0,
        buffer1_1_48_8x8_p_V_21_ce0,
        buffer1_1_48_8x8_p_V_21_q0,
        buffer1_1_48_8x8_p_V_22_address0,
        buffer1_1_48_8x8_p_V_22_ce0,
        buffer1_1_48_8x8_p_V_22_q0,
        buffer1_1_48_8x8_p_V_23_address0,
        buffer1_1_48_8x8_p_V_23_ce0,
        buffer1_1_48_8x8_p_V_23_q0
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] weight_V_address0;
output   weight_V_ce0;
input  [7:0] weight_V_q0;
output  [5:0] bias_V_address0;
output   bias_V_ce0;
input  [7:0] bias_V_q0;
output  [12:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [7:0] output_V_d0;
output  [7:0] buffer1_1_48_8x8_p_V_24_address0;
output   buffer1_1_48_8x8_p_V_24_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_24_q0;
output  [7:0] buffer1_1_48_8x8_p_V_1_address0;
output   buffer1_1_48_8x8_p_V_1_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_1_q0;
output  [7:0] buffer1_1_48_8x8_p_V_2_address0;
output   buffer1_1_48_8x8_p_V_2_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_2_q0;
output  [7:0] buffer1_1_48_8x8_p_V_3_address0;
output   buffer1_1_48_8x8_p_V_3_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_3_q0;
output  [7:0] buffer1_1_48_8x8_p_V_4_address0;
output   buffer1_1_48_8x8_p_V_4_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_4_q0;
output  [7:0] buffer1_1_48_8x8_p_V_5_address0;
output   buffer1_1_48_8x8_p_V_5_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_5_q0;
output  [7:0] buffer1_1_48_8x8_p_V_6_address0;
output   buffer1_1_48_8x8_p_V_6_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_6_q0;
output  [7:0] buffer1_1_48_8x8_p_V_7_address0;
output   buffer1_1_48_8x8_p_V_7_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_7_q0;
output  [7:0] buffer1_1_48_8x8_p_V_8_address0;
output   buffer1_1_48_8x8_p_V_8_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_8_q0;
output  [7:0] buffer1_1_48_8x8_p_V_9_address0;
output   buffer1_1_48_8x8_p_V_9_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_9_q0;
output  [7:0] buffer1_1_48_8x8_p_V_10_address0;
output   buffer1_1_48_8x8_p_V_10_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_10_q0;
output  [7:0] buffer1_1_48_8x8_p_V_11_address0;
output   buffer1_1_48_8x8_p_V_11_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_11_q0;
output  [7:0] buffer1_1_48_8x8_p_V_12_address0;
output   buffer1_1_48_8x8_p_V_12_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_12_q0;
output  [7:0] buffer1_1_48_8x8_p_V_13_address0;
output   buffer1_1_48_8x8_p_V_13_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_13_q0;
output  [7:0] buffer1_1_48_8x8_p_V_14_address0;
output   buffer1_1_48_8x8_p_V_14_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_14_q0;
output  [7:0] buffer1_1_48_8x8_p_V_15_address0;
output   buffer1_1_48_8x8_p_V_15_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_15_q0;
output  [7:0] buffer1_1_48_8x8_p_V_16_address0;
output   buffer1_1_48_8x8_p_V_16_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_16_q0;
output  [7:0] buffer1_1_48_8x8_p_V_17_address0;
output   buffer1_1_48_8x8_p_V_17_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_17_q0;
output  [7:0] buffer1_1_48_8x8_p_V_18_address0;
output   buffer1_1_48_8x8_p_V_18_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_18_q0;
output  [7:0] buffer1_1_48_8x8_p_V_19_address0;
output   buffer1_1_48_8x8_p_V_19_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_19_q0;
output  [7:0] buffer1_1_48_8x8_p_V_20_address0;
output   buffer1_1_48_8x8_p_V_20_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_20_q0;
output  [7:0] buffer1_1_48_8x8_p_V_21_address0;
output   buffer1_1_48_8x8_p_V_21_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_21_q0;
output  [7:0] buffer1_1_48_8x8_p_V_22_address0;
output   buffer1_1_48_8x8_p_V_22_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_22_q0;
output  [7:0] buffer1_1_48_8x8_p_V_23_address0;
output   buffer1_1_48_8x8_p_V_23_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_23_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg weight_V_ce0;
reg bias_V_ce0;
reg output_V_ce0;
reg output_V_we0;
reg buffer1_1_48_8x8_p_V_24_ce0;
reg buffer1_1_48_8x8_p_V_1_ce0;
reg buffer1_1_48_8x8_p_V_2_ce0;
reg buffer1_1_48_8x8_p_V_3_ce0;
reg buffer1_1_48_8x8_p_V_4_ce0;
reg buffer1_1_48_8x8_p_V_5_ce0;
reg buffer1_1_48_8x8_p_V_6_ce0;
reg buffer1_1_48_8x8_p_V_7_ce0;
reg buffer1_1_48_8x8_p_V_8_ce0;
reg buffer1_1_48_8x8_p_V_9_ce0;
reg buffer1_1_48_8x8_p_V_10_ce0;
reg buffer1_1_48_8x8_p_V_11_ce0;
reg buffer1_1_48_8x8_p_V_12_ce0;
reg buffer1_1_48_8x8_p_V_13_ce0;
reg buffer1_1_48_8x8_p_V_14_ce0;
reg buffer1_1_48_8x8_p_V_15_ce0;
reg buffer1_1_48_8x8_p_V_16_ce0;
reg buffer1_1_48_8x8_p_V_17_ce0;
reg buffer1_1_48_8x8_p_V_18_ce0;
reg buffer1_1_48_8x8_p_V_19_ce0;
reg buffer1_1_48_8x8_p_V_20_ce0;
reg buffer1_1_48_8x8_p_V_21_ce0;
reg buffer1_1_48_8x8_p_V_22_ce0;
reg buffer1_1_48_8x8_p_V_23_ce0;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [12:0] next_mul_fu_534_p2;
reg   [12:0] next_mul_reg_985;
wire    ap_CS_fsm_state2;
wire  signed [9:0] tmp_52_cast_fu_567_p1;
reg  signed [9:0] tmp_52_cast_reg_990;
wire   [9:0] tmp_46_fu_595_p2;
reg   [9:0] tmp_46_reg_995;
wire   [5:0] co_2_fu_607_p2;
reg   [5:0] co_2_reg_1003;
reg   [5:0] bias_V_addr_reg_1008;
wire   [0:0] exitcond5_fu_601_p2;
wire   [31:0] arrayNo_cast_fu_633_p1;
reg   [31:0] arrayNo_cast_reg_1013;
wire   [9:0] tmp_49_fu_671_p2;
reg   [9:0] tmp_49_reg_1018;
wire   [13:0] tmp_53_fu_710_p2;
reg   [13:0] tmp_53_reg_1023;
wire    ap_CS_fsm_state3;
reg   [12:0] output_V_addr_reg_1031;
wire    ap_CS_fsm_state4;
wire   [3:0] h_2_fu_742_p2;
wire   [0:0] exitcond7_fu_736_p2;
wire   [9:0] tmp_57_fu_763_p2;
reg   [9:0] tmp_57_reg_1044;
wire    ap_CS_fsm_state5;
wire   [1:0] m_2_fu_775_p2;
reg   [1:0] m_2_reg_1052;
wire   [3:0] tmp_s_fu_791_p2;
reg   [3:0] tmp_s_reg_1057;
wire   [0:0] exitcond8_fu_769_p2;
wire   [8:0] tmp_61_fu_829_p2;
reg   [8:0] tmp_61_reg_1062;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire   [1:0] n_2_fu_855_p2;
reg   [1:0] n_2_reg_1075;
wire   [8:0] tmp_63_fu_881_p2;
reg   [8:0] tmp_63_reg_1080;
wire   [0:0] exitcond_fu_849_p2;
wire    ap_CS_fsm_state8;
reg  signed [7:0] weight_V_load_reg_1205;
wire  signed [7:0] tmp_fu_913_p26;
reg  signed [7:0] tmp_reg_1210;
wire    ap_CS_fsm_state9;
wire  signed [7:0] grp_fu_979_p3;
wire    ap_CS_fsm_state10;
wire   [3:0] w_2_fu_973_p2;
wire    ap_CS_fsm_state11;
reg   [5:0] co_reg_442;
wire   [0:0] exitcond6_fu_716_p2;
reg   [12:0] phi_mul_reg_453;
reg   [3:0] h_reg_464;
reg   [3:0] w_reg_476;
reg   [7:0] p_s_reg_488;
reg   [1:0] m_reg_500;
reg   [7:0] p_09_1_reg_511;
reg   [1:0] n_reg_523;
wire   [31:0] co_cast7_fu_540_p1;
wire   [31:0] tmp_67_cast_fu_731_p1;
wire   [31:0] tmp_75_cast_fu_844_p1;
wire   [31:0] tmp_76_cast_fu_886_p1;
wire   [7:0] tmp_42_fu_549_p3;
wire   [8:0] p_shl2_cast_fu_557_p1;
wire   [8:0] co_cast7_cast_fu_545_p1;
wire   [8:0] tmp_43_fu_561_p2;
wire   [8:0] tmp_44_fu_571_p3;
wire   [6:0] tmp_45_fu_583_p3;
wire   [9:0] p_shl1_cast_fu_591_p1;
wire   [9:0] p_shl_cast_fu_579_p1;
wire   [0:0] tmp_47_fu_613_p2;
wire   [5:0] tmp_48_fu_619_p2;
wire   [5:0] arrayNo_fu_625_p3;
wire   [1:0] tmp_39_fu_637_p4;
wire   [4:0] tmp_40_fu_647_p3;
wire   [2:0] tmp_41_fu_659_p3;
wire   [9:0] p_shl3_cast_fu_655_p1;
wire   [9:0] p_shl4_cast_fu_667_p1;
wire   [9:0] h_cast6_cast_fu_677_p1;
wire   [9:0] tmp_50_fu_681_p2;
wire   [12:0] tmp_51_fu_686_p3;
wire   [10:0] tmp_52_fu_698_p3;
wire   [13:0] p_shl5_cast_fu_694_p1;
wire   [13:0] p_shl6_cast_fu_706_p1;
wire   [13:0] w_cast5_cast_fu_722_p1;
wire   [13:0] tmp_54_fu_726_p2;
wire   [9:0] m_cast4_cast_fu_748_p1;
wire   [9:0] tmp_55_fu_752_p2;
wire   [9:0] tmp_56_fu_757_p2;
wire   [1:0] tmp1_fu_781_p2;
wire  signed [3:0] tmp1_cast_fu_787_p1;
wire   [9:0] tmp_cast_cast_fu_797_p1;
wire   [9:0] tmp_58_fu_800_p2;
wire   [5:0] tmp_59_fu_805_p1;
wire   [7:0] tmp_60_fu_817_p1;
wire   [8:0] p_shl8_cast_fu_809_p3;
wire   [8:0] p_shl9_cast_fu_821_p3;
wire   [9:0] n_cast3_cast_fu_835_p1;
wire   [9:0] tmp_62_fu_839_p2;
wire   [1:0] tmp2_fu_861_p2;
wire  signed [3:0] tmp2_cast_fu_867_p1;
wire   [3:0] tmp_2_fu_871_p2;
wire   [8:0] tmp_2_cast_cast_fu_877_p1;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
end

ShuffleNetV2_mux_g8j #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .din10_WIDTH( 8 ),
    .din11_WIDTH( 8 ),
    .din12_WIDTH( 8 ),
    .din13_WIDTH( 8 ),
    .din14_WIDTH( 8 ),
    .din15_WIDTH( 8 ),
    .din16_WIDTH( 8 ),
    .din17_WIDTH( 8 ),
    .din18_WIDTH( 8 ),
    .din19_WIDTH( 8 ),
    .din20_WIDTH( 8 ),
    .din21_WIDTH( 8 ),
    .din22_WIDTH( 8 ),
    .din23_WIDTH( 8 ),
    .din24_WIDTH( 8 ),
    .din25_WIDTH( 32 ),
    .dout_WIDTH( 8 ))
ShuffleNetV2_mux_g8j_x_U449(
    .din1(buffer1_1_48_8x8_p_V_24_q0),
    .din2(buffer1_1_48_8x8_p_V_1_q0),
    .din3(buffer1_1_48_8x8_p_V_2_q0),
    .din4(buffer1_1_48_8x8_p_V_3_q0),
    .din5(buffer1_1_48_8x8_p_V_4_q0),
    .din6(buffer1_1_48_8x8_p_V_5_q0),
    .din7(buffer1_1_48_8x8_p_V_6_q0),
    .din8(buffer1_1_48_8x8_p_V_7_q0),
    .din9(buffer1_1_48_8x8_p_V_8_q0),
    .din10(buffer1_1_48_8x8_p_V_9_q0),
    .din11(buffer1_1_48_8x8_p_V_10_q0),
    .din12(buffer1_1_48_8x8_p_V_11_q0),
    .din13(buffer1_1_48_8x8_p_V_12_q0),
    .din14(buffer1_1_48_8x8_p_V_13_q0),
    .din15(buffer1_1_48_8x8_p_V_14_q0),
    .din16(buffer1_1_48_8x8_p_V_15_q0),
    .din17(buffer1_1_48_8x8_p_V_16_q0),
    .din18(buffer1_1_48_8x8_p_V_17_q0),
    .din19(buffer1_1_48_8x8_p_V_18_q0),
    .din20(buffer1_1_48_8x8_p_V_19_q0),
    .din21(buffer1_1_48_8x8_p_V_20_q0),
    .din22(buffer1_1_48_8x8_p_V_21_q0),
    .din23(buffer1_1_48_8x8_p_V_22_q0),
    .din24(buffer1_1_48_8x8_p_V_23_q0),
    .din25(arrayNo_cast_reg_1013),
    .dout(tmp_fu_913_p26)
);

ShuffleNetV2_mac_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
ShuffleNetV2_mac_cud_x_U450(
    .din0(tmp_reg_1210),
    .din1(weight_V_load_reg_1205),
    .din2(p_09_1_reg_511),
    .dout(grp_fu_979_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond6_fu_716_p2))) begin
        co_reg_442 <= co_2_reg_1003;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_442 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_601_p2 == 1'd0))) begin
        h_reg_464 <= 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond7_fu_736_p2 == 1'd1))) begin
        h_reg_464 <= h_2_fu_742_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond7_fu_736_p2))) begin
        m_reg_500 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_849_p2))) begin
        m_reg_500 <= m_2_reg_1052;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_reg_523 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        n_reg_523 <= n_2_reg_1075;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_09_1_reg_511 <= p_s_reg_488;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        p_09_1_reg_511 <= grp_fu_979_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond7_fu_736_p2))) begin
        p_s_reg_488 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_849_p2))) begin
        p_s_reg_488 <= p_09_1_reg_511;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond6_fu_716_p2))) begin
        phi_mul_reg_453 <= next_mul_reg_985;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul_reg_453 <= 13'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond6_fu_716_p2))) begin
        w_reg_476 <= 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        w_reg_476 <= w_2_fu_973_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_601_p2 == 1'd0))) begin
        arrayNo_cast_reg_1013[5 : 0] <= arrayNo_cast_fu_633_p1[5 : 0];
        bias_V_addr_reg_1008 <= co_cast7_fu_540_p1;
        tmp_49_reg_1018[9 : 1] <= tmp_49_fu_671_p2[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_2_reg_1003 <= co_2_fu_607_p2;
        next_mul_reg_985 <= next_mul_fu_534_p2;
        tmp_46_reg_995[9 : 1] <= tmp_46_fu_595_p2[9 : 1];
        tmp_52_cast_reg_990 <= tmp_52_cast_fu_567_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_2_reg_1052 <= m_2_fu_775_p2;
        tmp_57_reg_1044 <= tmp_57_fu_763_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_2_reg_1075 <= n_2_fu_855_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_V_addr_reg_1031 <= tmp_67_cast_fu_731_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_53_reg_1023[13 : 1] <= tmp_53_fu_710_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_61_reg_1062[8 : 1] <= tmp_61_fu_829_p2[8 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (1'd0 == exitcond_fu_849_p2))) begin
        tmp_63_reg_1080 <= tmp_63_fu_881_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_reg_1210 <= tmp_fu_913_p26;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond8_fu_769_p2))) begin
        tmp_s_reg_1057 <= tmp_s_fu_791_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        weight_V_load_reg_1205 <= weight_V_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_601_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_601_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bias_V_ce0 = 1'b1;
    end else begin
        bias_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_10_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_11_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_12_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_13_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_14_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_15_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_16_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_17_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_17_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_18_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_18_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_19_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_19_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_1_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_20_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_21_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_21_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_22_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_23_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_23_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_24_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_24_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_2_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_3_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_4_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_5_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_6_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_7_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_8_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buffer1_1_48_8x8_p_V_9_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        weight_V_ce0 = 1'b1;
    end else begin
        weight_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_601_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond6_fu_716_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond7_fu_736_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond8_fu_769_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_849_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign arrayNo_cast_fu_633_p1 = arrayNo_fu_625_p3;

assign arrayNo_fu_625_p3 = ((tmp_47_fu_613_p2[0:0] === 1'b1) ? co_reg_442 : tmp_48_fu_619_p2);

assign bias_V_address0 = bias_V_addr_reg_1008;

assign buffer1_1_48_8x8_p_V_10_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_11_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_12_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_13_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_14_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_15_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_16_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_17_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_18_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_19_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_1_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_20_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_21_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_22_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_23_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_24_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_2_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_3_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_4_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_5_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_6_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_7_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_8_address0 = tmp_76_cast_fu_886_p1;

assign buffer1_1_48_8x8_p_V_9_address0 = tmp_76_cast_fu_886_p1;

assign co_2_fu_607_p2 = (co_reg_442 + 6'd1);

assign co_cast7_cast_fu_545_p1 = co_reg_442;

assign co_cast7_fu_540_p1 = co_reg_442;

assign exitcond5_fu_601_p2 = ((co_reg_442 == 6'd48) ? 1'b1 : 1'b0);

assign exitcond6_fu_716_p2 = ((h_reg_464 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond7_fu_736_p2 = ((w_reg_476 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond8_fu_769_p2 = ((m_reg_500 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_849_p2 = ((n_reg_523 == 2'd3) ? 1'b1 : 1'b0);

assign h_2_fu_742_p2 = (h_reg_464 + 4'd1);

assign h_cast6_cast_fu_677_p1 = h_reg_464;

assign m_2_fu_775_p2 = (2'd1 + m_reg_500);

assign m_cast4_cast_fu_748_p1 = m_reg_500;

assign n_2_fu_855_p2 = (n_reg_523 + 2'd1);

assign n_cast3_cast_fu_835_p1 = n_reg_523;

assign next_mul_fu_534_p2 = (phi_mul_reg_453 + 13'd86);

assign output_V_address0 = output_V_addr_reg_1031;

assign output_V_d0 = (bias_V_q0 + p_s_reg_488);

assign p_shl1_cast_fu_591_p1 = tmp_45_fu_583_p3;

assign p_shl2_cast_fu_557_p1 = tmp_42_fu_549_p3;

assign p_shl3_cast_fu_655_p1 = tmp_40_fu_647_p3;

assign p_shl4_cast_fu_667_p1 = tmp_41_fu_659_p3;

assign p_shl5_cast_fu_694_p1 = tmp_51_fu_686_p3;

assign p_shl6_cast_fu_706_p1 = tmp_52_fu_698_p3;

assign p_shl8_cast_fu_809_p3 = {{tmp_59_fu_805_p1}, {3'd0}};

assign p_shl9_cast_fu_821_p3 = {{tmp_60_fu_817_p1}, {1'd0}};

assign p_shl_cast_fu_579_p1 = tmp_44_fu_571_p3;

assign tmp1_cast_fu_787_p1 = $signed(tmp1_fu_781_p2);

assign tmp1_fu_781_p2 = ($signed(2'd3) + $signed(m_reg_500));

assign tmp2_cast_fu_867_p1 = $signed(tmp2_fu_861_p2);

assign tmp2_fu_861_p2 = ($signed(n_reg_523) + $signed(2'd3));

assign tmp_2_cast_cast_fu_877_p1 = tmp_2_fu_871_p2;

assign tmp_2_fu_871_p2 = ($signed(w_reg_476) + $signed(tmp2_cast_fu_867_p1));

assign tmp_39_fu_637_p4 = {{phi_mul_reg_453[12:11]}};

assign tmp_40_fu_647_p3 = {{tmp_39_fu_637_p4}, {3'd0}};

assign tmp_41_fu_659_p3 = {{tmp_39_fu_637_p4}, {1'd0}};

assign tmp_42_fu_549_p3 = {{co_reg_442}, {2'd0}};

assign tmp_43_fu_561_p2 = (p_shl2_cast_fu_557_p1 - co_cast7_cast_fu_545_p1);

assign tmp_44_fu_571_p3 = {{co_reg_442}, {3'd0}};

assign tmp_45_fu_583_p3 = {{co_reg_442}, {1'd0}};

assign tmp_46_fu_595_p2 = (p_shl1_cast_fu_591_p1 + p_shl_cast_fu_579_p1);

assign tmp_47_fu_613_p2 = ((co_reg_442 < 6'd24) ? 1'b1 : 1'b0);

assign tmp_48_fu_619_p2 = ($signed(co_reg_442) + $signed(6'd40));

assign tmp_49_fu_671_p2 = (p_shl3_cast_fu_655_p1 + p_shl4_cast_fu_667_p1);

assign tmp_50_fu_681_p2 = (h_cast6_cast_fu_677_p1 + tmp_46_reg_995);

assign tmp_51_fu_686_p3 = {{tmp_50_fu_681_p2}, {3'd0}};

assign tmp_52_cast_fu_567_p1 = $signed(tmp_43_fu_561_p2);

assign tmp_52_fu_698_p3 = {{tmp_50_fu_681_p2}, {1'd0}};

assign tmp_53_fu_710_p2 = (p_shl5_cast_fu_694_p1 + p_shl6_cast_fu_706_p1);

assign tmp_54_fu_726_p2 = (tmp_53_reg_1023 + w_cast5_cast_fu_722_p1);

assign tmp_55_fu_752_p2 = ($signed(m_cast4_cast_fu_748_p1) + $signed(tmp_52_cast_reg_990));

assign tmp_56_fu_757_p2 = tmp_55_fu_752_p2 << 10'd2;

assign tmp_57_fu_763_p2 = (tmp_56_fu_757_p2 - tmp_55_fu_752_p2);

assign tmp_58_fu_800_p2 = (tmp_cast_cast_fu_797_p1 + tmp_49_reg_1018);

assign tmp_59_fu_805_p1 = tmp_58_fu_800_p2[5:0];

assign tmp_60_fu_817_p1 = tmp_58_fu_800_p2[7:0];

assign tmp_61_fu_829_p2 = (p_shl8_cast_fu_809_p3 + p_shl9_cast_fu_821_p3);

assign tmp_62_fu_839_p2 = (tmp_57_reg_1044 + n_cast3_cast_fu_835_p1);

assign tmp_63_fu_881_p2 = (tmp_61_reg_1062 + tmp_2_cast_cast_fu_877_p1);

assign tmp_67_cast_fu_731_p1 = tmp_54_fu_726_p2;

assign tmp_75_cast_fu_844_p1 = tmp_62_fu_839_p2;

assign tmp_76_cast_fu_886_p1 = tmp_63_reg_1080;

assign tmp_cast_cast_fu_797_p1 = tmp_s_reg_1057;

assign tmp_s_fu_791_p2 = ($signed(tmp1_cast_fu_787_p1) + $signed(h_reg_464));

assign w_2_fu_973_p2 = (w_reg_476 + 4'd1);

assign w_cast5_cast_fu_722_p1 = w_reg_476;

assign weight_V_address0 = tmp_75_cast_fu_844_p1;

always @ (posedge ap_clk) begin
    tmp_46_reg_995[0] <= 1'b0;
    arrayNo_cast_reg_1013[31:6] <= 26'b00000000000000000000000000;
    tmp_49_reg_1018[0] <= 1'b0;
    tmp_53_reg_1023[0] <= 1'b0;
    tmp_61_reg_1062[0] <= 1'b0;
end

endmodule //subconv_3x3_8_no_rel
