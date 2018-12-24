// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_3x3_16_no_re (
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
        buffer1_1_24_16x16_p_23_address0,
        buffer1_1_24_16x16_p_23_ce0,
        buffer1_1_24_16x16_p_23_q0,
        buffer1_1_24_16x16_p_22_address0,
        buffer1_1_24_16x16_p_22_ce0,
        buffer1_1_24_16x16_p_22_q0,
        buffer1_1_24_16x16_p_11_address0,
        buffer1_1_24_16x16_p_11_ce0,
        buffer1_1_24_16x16_p_11_q0,
        buffer1_1_24_16x16_p_6_address0,
        buffer1_1_24_16x16_p_6_ce0,
        buffer1_1_24_16x16_p_6_q0,
        buffer1_1_24_16x16_p_5_address0,
        buffer1_1_24_16x16_p_5_ce0,
        buffer1_1_24_16x16_p_5_q0,
        buffer1_1_24_16x16_p_4_address0,
        buffer1_1_24_16x16_p_4_ce0,
        buffer1_1_24_16x16_p_4_q0,
        buffer1_1_24_16x16_p_3_address0,
        buffer1_1_24_16x16_p_3_ce0,
        buffer1_1_24_16x16_p_3_q0,
        buffer1_1_24_16x16_p_2_address0,
        buffer1_1_24_16x16_p_2_ce0,
        buffer1_1_24_16x16_p_2_q0,
        buffer1_1_24_16x16_p_1_address0,
        buffer1_1_24_16x16_p_1_ce0,
        buffer1_1_24_16x16_p_1_q0,
        buffer1_1_24_16x16_p_address0,
        buffer1_1_24_16x16_p_ce0,
        buffer1_1_24_16x16_p_q0,
        buffer1_1_24_16x16_p_21_address0,
        buffer1_1_24_16x16_p_21_ce0,
        buffer1_1_24_16x16_p_21_q0,
        buffer1_1_24_16x16_p_20_address0,
        buffer1_1_24_16x16_p_20_ce0,
        buffer1_1_24_16x16_p_20_q0,
        buffer1_1_24_16x16_p_19_address0,
        buffer1_1_24_16x16_p_19_ce0,
        buffer1_1_24_16x16_p_19_q0,
        buffer1_1_24_16x16_p_18_address0,
        buffer1_1_24_16x16_p_18_ce0,
        buffer1_1_24_16x16_p_18_q0,
        buffer1_1_24_16x16_p_17_address0,
        buffer1_1_24_16x16_p_17_ce0,
        buffer1_1_24_16x16_p_17_q0,
        buffer1_1_24_16x16_p_16_address0,
        buffer1_1_24_16x16_p_16_ce0,
        buffer1_1_24_16x16_p_16_q0,
        buffer1_1_24_16x16_p_15_address0,
        buffer1_1_24_16x16_p_15_ce0,
        buffer1_1_24_16x16_p_15_q0,
        buffer1_1_24_16x16_p_14_address0,
        buffer1_1_24_16x16_p_14_ce0,
        buffer1_1_24_16x16_p_14_q0,
        buffer1_1_24_16x16_p_13_address0,
        buffer1_1_24_16x16_p_13_ce0,
        buffer1_1_24_16x16_p_13_q0,
        buffer1_1_24_16x16_p_12_address0,
        buffer1_1_24_16x16_p_12_ce0,
        buffer1_1_24_16x16_p_12_q0,
        buffer1_1_24_16x16_p_10_address0,
        buffer1_1_24_16x16_p_10_ce0,
        buffer1_1_24_16x16_p_10_q0,
        buffer1_1_24_16x16_p_9_address0,
        buffer1_1_24_16x16_p_9_ce0,
        buffer1_1_24_16x16_p_9_q0,
        buffer1_1_24_16x16_p_8_address0,
        buffer1_1_24_16x16_p_8_ce0,
        buffer1_1_24_16x16_p_8_q0,
        buffer1_1_24_16x16_p_7_address0,
        buffer1_1_24_16x16_p_7_ce0,
        buffer1_1_24_16x16_p_7_q0
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weight_V_address0;
output   weight_V_ce0;
input  [7:0] weight_V_q0;
output  [4:0] bias_V_address0;
output   bias_V_ce0;
input  [7:0] bias_V_q0;
output  [12:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [7:0] output_V_d0;
output  [8:0] buffer1_1_24_16x16_p_23_address0;
output   buffer1_1_24_16x16_p_23_ce0;
input  [7:0] buffer1_1_24_16x16_p_23_q0;
output  [8:0] buffer1_1_24_16x16_p_22_address0;
output   buffer1_1_24_16x16_p_22_ce0;
input  [7:0] buffer1_1_24_16x16_p_22_q0;
output  [8:0] buffer1_1_24_16x16_p_11_address0;
output   buffer1_1_24_16x16_p_11_ce0;
input  [7:0] buffer1_1_24_16x16_p_11_q0;
output  [8:0] buffer1_1_24_16x16_p_6_address0;
output   buffer1_1_24_16x16_p_6_ce0;
input  [7:0] buffer1_1_24_16x16_p_6_q0;
output  [8:0] buffer1_1_24_16x16_p_5_address0;
output   buffer1_1_24_16x16_p_5_ce0;
input  [7:0] buffer1_1_24_16x16_p_5_q0;
output  [8:0] buffer1_1_24_16x16_p_4_address0;
output   buffer1_1_24_16x16_p_4_ce0;
input  [7:0] buffer1_1_24_16x16_p_4_q0;
output  [8:0] buffer1_1_24_16x16_p_3_address0;
output   buffer1_1_24_16x16_p_3_ce0;
input  [7:0] buffer1_1_24_16x16_p_3_q0;
output  [8:0] buffer1_1_24_16x16_p_2_address0;
output   buffer1_1_24_16x16_p_2_ce0;
input  [7:0] buffer1_1_24_16x16_p_2_q0;
output  [8:0] buffer1_1_24_16x16_p_1_address0;
output   buffer1_1_24_16x16_p_1_ce0;
input  [7:0] buffer1_1_24_16x16_p_1_q0;
output  [8:0] buffer1_1_24_16x16_p_address0;
output   buffer1_1_24_16x16_p_ce0;
input  [7:0] buffer1_1_24_16x16_p_q0;
output  [8:0] buffer1_1_24_16x16_p_21_address0;
output   buffer1_1_24_16x16_p_21_ce0;
input  [7:0] buffer1_1_24_16x16_p_21_q0;
output  [8:0] buffer1_1_24_16x16_p_20_address0;
output   buffer1_1_24_16x16_p_20_ce0;
input  [7:0] buffer1_1_24_16x16_p_20_q0;
output  [8:0] buffer1_1_24_16x16_p_19_address0;
output   buffer1_1_24_16x16_p_19_ce0;
input  [7:0] buffer1_1_24_16x16_p_19_q0;
output  [8:0] buffer1_1_24_16x16_p_18_address0;
output   buffer1_1_24_16x16_p_18_ce0;
input  [7:0] buffer1_1_24_16x16_p_18_q0;
output  [8:0] buffer1_1_24_16x16_p_17_address0;
output   buffer1_1_24_16x16_p_17_ce0;
input  [7:0] buffer1_1_24_16x16_p_17_q0;
output  [8:0] buffer1_1_24_16x16_p_16_address0;
output   buffer1_1_24_16x16_p_16_ce0;
input  [7:0] buffer1_1_24_16x16_p_16_q0;
output  [8:0] buffer1_1_24_16x16_p_15_address0;
output   buffer1_1_24_16x16_p_15_ce0;
input  [7:0] buffer1_1_24_16x16_p_15_q0;
output  [8:0] buffer1_1_24_16x16_p_14_address0;
output   buffer1_1_24_16x16_p_14_ce0;
input  [7:0] buffer1_1_24_16x16_p_14_q0;
output  [8:0] buffer1_1_24_16x16_p_13_address0;
output   buffer1_1_24_16x16_p_13_ce0;
input  [7:0] buffer1_1_24_16x16_p_13_q0;
output  [8:0] buffer1_1_24_16x16_p_12_address0;
output   buffer1_1_24_16x16_p_12_ce0;
input  [7:0] buffer1_1_24_16x16_p_12_q0;
output  [8:0] buffer1_1_24_16x16_p_10_address0;
output   buffer1_1_24_16x16_p_10_ce0;
input  [7:0] buffer1_1_24_16x16_p_10_q0;
output  [8:0] buffer1_1_24_16x16_p_9_address0;
output   buffer1_1_24_16x16_p_9_ce0;
input  [7:0] buffer1_1_24_16x16_p_9_q0;
output  [8:0] buffer1_1_24_16x16_p_8_address0;
output   buffer1_1_24_16x16_p_8_ce0;
input  [7:0] buffer1_1_24_16x16_p_8_q0;
output  [8:0] buffer1_1_24_16x16_p_7_address0;
output   buffer1_1_24_16x16_p_7_ce0;
input  [7:0] buffer1_1_24_16x16_p_7_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg weight_V_ce0;
reg bias_V_ce0;
reg output_V_ce0;
reg output_V_we0;
reg buffer1_1_24_16x16_p_23_ce0;
reg buffer1_1_24_16x16_p_22_ce0;
reg buffer1_1_24_16x16_p_11_ce0;
reg buffer1_1_24_16x16_p_6_ce0;
reg buffer1_1_24_16x16_p_5_ce0;
reg buffer1_1_24_16x16_p_4_ce0;
reg buffer1_1_24_16x16_p_3_ce0;
reg buffer1_1_24_16x16_p_2_ce0;
reg buffer1_1_24_16x16_p_1_ce0;
reg buffer1_1_24_16x16_p_ce0;
reg buffer1_1_24_16x16_p_21_ce0;
reg buffer1_1_24_16x16_p_20_ce0;
reg buffer1_1_24_16x16_p_19_ce0;
reg buffer1_1_24_16x16_p_18_ce0;
reg buffer1_1_24_16x16_p_17_ce0;
reg buffer1_1_24_16x16_p_16_ce0;
reg buffer1_1_24_16x16_p_15_ce0;
reg buffer1_1_24_16x16_p_14_ce0;
reg buffer1_1_24_16x16_p_13_ce0;
reg buffer1_1_24_16x16_p_12_ce0;
reg buffer1_1_24_16x16_p_10_ce0;
reg buffer1_1_24_16x16_p_9_ce0;
reg buffer1_1_24_16x16_p_8_ce0;
reg buffer1_1_24_16x16_p_7_ce0;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [8:0] tmp_162_cast_fu_528_p1;
reg  signed [8:0] tmp_162_cast_reg_871;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_133_fu_556_p2;
reg   [9:0] tmp_133_reg_876;
wire   [4:0] co_6_fu_568_p2;
reg   [4:0] co_6_reg_884;
reg   [4:0] bias_V_addr_reg_889;
wire   [0:0] exitcond5_fu_562_p2;
wire   [13:0] tmp_135_fu_603_p2;
reg   [13:0] tmp_135_reg_894;
wire    ap_CS_fsm_state3;
reg   [12:0] output_V_addr_reg_902;
wire    ap_CS_fsm_state4;
wire   [4:0] h_6_fu_635_p2;
wire   [0:0] exitcond7_fu_629_p2;
wire   [8:0] tmp_138_fu_656_p2;
reg   [8:0] tmp_138_reg_915;
wire    ap_CS_fsm_state5;
wire   [1:0] m_6_fu_668_p2;
reg   [1:0] m_6_reg_923;
wire   [9:0] tmp_141_fu_714_p2;
reg   [9:0] tmp_141_reg_928;
wire   [0:0] exitcond8_fu_662_p2;
reg   [7:0] weight_V_addr_reg_933;
wire    ap_CS_fsm_state6;
wire   [1:0] n_6_fu_740_p2;
reg   [1:0] n_6_reg_941;
wire   [9:0] tmp_143_fu_766_p2;
reg   [9:0] tmp_143_reg_946;
wire   [0:0] exitcond_fu_734_p2;
wire    ap_CS_fsm_state7;
reg  signed [7:0] weight_V_load_reg_1071;
wire    ap_CS_fsm_state8;
wire  signed [7:0] tmp_fu_798_p26;
reg  signed [7:0] tmp_reg_1076;
wire  signed [7:0] grp_fu_865_p3;
wire    ap_CS_fsm_state9;
wire   [4:0] w_6_fu_859_p2;
wire    ap_CS_fsm_state10;
reg   [4:0] co_reg_419;
wire   [0:0] exitcond6_fu_609_p2;
reg   [4:0] h_reg_431;
reg   [4:0] w_reg_443;
reg   [7:0] p_s_reg_455;
reg   [1:0] m_reg_467;
reg   [7:0] p_09_1_reg_478;
reg   [1:0] n_reg_490;
wire   [31:0] co_cast7_fu_501_p1;
wire   [31:0] tmp_170_cast_fu_624_p1;
wire   [31:0] tmp_177_cast_fu_729_p1;
wire   [31:0] tmp_178_cast_fu_771_p1;
wire   [6:0] tmp_129_fu_510_p3;
wire   [7:0] p_shl2_cast_fu_518_p1;
wire   [7:0] co_cast7_cast_fu_506_p1;
wire   [7:0] tmp_130_fu_522_p2;
wire   [8:0] tmp_131_fu_532_p3;
wire   [5:0] tmp_132_fu_544_p3;
wire   [9:0] p_shl1_cast_fu_552_p1;
wire   [9:0] p_shl_cast_fu_540_p1;
wire   [9:0] h_cast6_cast_fu_574_p1;
wire   [9:0] tmp_134_fu_578_p2;
wire   [10:0] tmp_39_fu_591_p3;
wire   [13:0] p_shl3_cast_fu_583_p3;
wire   [13:0] p_shl4_cast_fu_599_p1;
wire   [13:0] w_cast5_cast_fu_615_p1;
wire   [13:0] tmp_136_fu_619_p2;
wire   [8:0] m_cast4_cast_fu_641_p1;
wire   [8:0] tmp_137_fu_645_p2;
wire   [8:0] tmp_40_fu_650_p2;
wire   [1:0] tmp1_fu_674_p2;
wire  signed [4:0] tmp1_cast_fu_680_p1;
wire   [4:0] tmp_s_fu_684_p2;
wire   [8:0] tmp_139_fu_690_p3;
wire   [5:0] tmp_140_fu_702_p3;
wire   [9:0] p_shl7_cast_fu_710_p1;
wire   [9:0] p_shl6_cast_fu_698_p1;
wire   [8:0] n_cast3_cast_fu_720_p1;
wire   [8:0] tmp_142_fu_724_p2;
wire   [1:0] tmp2_fu_746_p2;
wire  signed [4:0] tmp2_cast_fu_752_p1;
wire   [4:0] tmp_1_fu_756_p2;
wire   [9:0] tmp_11_cast_cast_fu_762_p1;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
end

ShuffleNetV2_mux_eOg #(
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
    .din25_WIDTH( 5 ),
    .dout_WIDTH( 8 ))
ShuffleNetV2_mux_eOg_x_U199(
    .din1(buffer1_1_24_16x16_p_23_q0),
    .din2(buffer1_1_24_16x16_p_22_q0),
    .din3(buffer1_1_24_16x16_p_11_q0),
    .din4(buffer1_1_24_16x16_p_6_q0),
    .din5(buffer1_1_24_16x16_p_5_q0),
    .din6(buffer1_1_24_16x16_p_4_q0),
    .din7(buffer1_1_24_16x16_p_3_q0),
    .din8(buffer1_1_24_16x16_p_2_q0),
    .din9(buffer1_1_24_16x16_p_1_q0),
    .din10(buffer1_1_24_16x16_p_q0),
    .din11(buffer1_1_24_16x16_p_21_q0),
    .din12(buffer1_1_24_16x16_p_20_q0),
    .din13(buffer1_1_24_16x16_p_19_q0),
    .din14(buffer1_1_24_16x16_p_18_q0),
    .din15(buffer1_1_24_16x16_p_17_q0),
    .din16(buffer1_1_24_16x16_p_16_q0),
    .din17(buffer1_1_24_16x16_p_15_q0),
    .din18(buffer1_1_24_16x16_p_14_q0),
    .din19(buffer1_1_24_16x16_p_13_q0),
    .din20(buffer1_1_24_16x16_p_12_q0),
    .din21(buffer1_1_24_16x16_p_10_q0),
    .din22(buffer1_1_24_16x16_p_9_q0),
    .din23(buffer1_1_24_16x16_p_8_q0),
    .din24(buffer1_1_24_16x16_p_7_q0),
    .din25(co_reg_419),
    .dout(tmp_fu_798_p26)
);

ShuffleNetV2_mac_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
ShuffleNetV2_mac_cud_x_U200(
    .din0(tmp_reg_1076),
    .din1(weight_V_load_reg_1071),
    .din2(p_09_1_reg_478),
    .dout(grp_fu_865_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond6_fu_609_p2))) begin
        co_reg_419 <= co_6_reg_884;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_419 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_562_p2 == 1'd0))) begin
        h_reg_431 <= 5'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond7_fu_629_p2 == 1'd1))) begin
        h_reg_431 <= h_6_fu_635_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond7_fu_629_p2))) begin
        m_reg_467 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_734_p2))) begin
        m_reg_467 <= m_6_reg_923;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond8_fu_662_p2))) begin
        n_reg_490 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        n_reg_490 <= n_6_reg_941;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond8_fu_662_p2))) begin
        p_09_1_reg_478 <= p_s_reg_455;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        p_09_1_reg_478 <= grp_fu_865_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond7_fu_629_p2))) begin
        p_s_reg_455 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_734_p2))) begin
        p_s_reg_455 <= p_09_1_reg_478;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond6_fu_609_p2))) begin
        w_reg_443 <= 5'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        w_reg_443 <= w_6_fu_859_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_562_p2 == 1'd0))) begin
        bias_V_addr_reg_889 <= co_cast7_fu_501_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_6_reg_884 <= co_6_fu_568_p2;
        tmp_133_reg_876[9 : 1] <= tmp_133_fu_556_p2[9 : 1];
        tmp_162_cast_reg_871 <= tmp_162_cast_fu_528_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_6_reg_923 <= m_6_fu_668_p2;
        tmp_138_reg_915 <= tmp_138_fu_656_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_6_reg_941 <= n_6_fu_740_p2;
        weight_V_addr_reg_933 <= tmp_177_cast_fu_729_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_V_addr_reg_902 <= tmp_170_cast_fu_624_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_135_reg_894[13 : 1] <= tmp_135_fu_603_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond8_fu_662_p2))) begin
        tmp_141_reg_928[9 : 1] <= tmp_141_fu_714_p2[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd0 == exitcond_fu_734_p2))) begin
        tmp_143_reg_946 <= tmp_143_fu_766_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_reg_1076 <= tmp_fu_798_p26;
        weight_V_load_reg_1071 <= weight_V_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_562_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_562_p2 == 1'd1))) begin
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_10_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_11_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_12_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_13_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_14_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_15_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_16_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_17_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_17_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_18_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_18_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_19_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_19_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_1_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_20_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_21_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_21_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_22_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_23_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_23_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_2_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_3_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_4_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_5_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_6_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_7_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_8_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_9_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        buffer1_1_24_16x16_p_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_562_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'd1 == exitcond6_fu_609_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond7_fu_629_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond8_fu_662_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_734_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bias_V_address0 = bias_V_addr_reg_889;

assign buffer1_1_24_16x16_p_10_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_11_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_12_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_13_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_14_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_15_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_16_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_17_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_18_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_19_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_1_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_20_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_21_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_22_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_23_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_2_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_3_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_4_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_5_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_6_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_7_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_8_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_9_address0 = tmp_178_cast_fu_771_p1;

assign buffer1_1_24_16x16_p_address0 = tmp_178_cast_fu_771_p1;

assign co_6_fu_568_p2 = (co_reg_419 + 5'd1);

assign co_cast7_cast_fu_506_p1 = co_reg_419;

assign co_cast7_fu_501_p1 = co_reg_419;

assign exitcond5_fu_562_p2 = ((co_reg_419 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond6_fu_609_p2 = ((h_reg_431 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond7_fu_629_p2 = ((w_reg_443 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond8_fu_662_p2 = ((m_reg_467 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_734_p2 = ((n_reg_490 == 2'd3) ? 1'b1 : 1'b0);

assign h_6_fu_635_p2 = (h_reg_431 + 5'd1);

assign h_cast6_cast_fu_574_p1 = h_reg_431;

assign m_6_fu_668_p2 = (2'd1 + m_reg_467);

assign m_cast4_cast_fu_641_p1 = m_reg_467;

assign n_6_fu_740_p2 = (n_reg_490 + 2'd1);

assign n_cast3_cast_fu_720_p1 = n_reg_490;

assign output_V_address0 = output_V_addr_reg_902;

assign output_V_d0 = (bias_V_q0 + p_s_reg_455);

assign p_shl1_cast_fu_552_p1 = tmp_132_fu_544_p3;

assign p_shl2_cast_fu_518_p1 = tmp_129_fu_510_p3;

assign p_shl3_cast_fu_583_p3 = {{tmp_134_fu_578_p2}, {4'd0}};

assign p_shl4_cast_fu_599_p1 = tmp_39_fu_591_p3;

assign p_shl6_cast_fu_698_p1 = tmp_139_fu_690_p3;

assign p_shl7_cast_fu_710_p1 = tmp_140_fu_702_p3;

assign p_shl_cast_fu_540_p1 = tmp_131_fu_532_p3;

assign tmp1_cast_fu_680_p1 = $signed(tmp1_fu_674_p2);

assign tmp1_fu_674_p2 = ($signed(m_reg_467) + $signed(2'd3));

assign tmp2_cast_fu_752_p1 = $signed(tmp2_fu_746_p2);

assign tmp2_fu_746_p2 = ($signed(n_reg_490) + $signed(2'd3));

assign tmp_11_cast_cast_fu_762_p1 = tmp_1_fu_756_p2;

assign tmp_129_fu_510_p3 = {{co_reg_419}, {2'd0}};

assign tmp_130_fu_522_p2 = (p_shl2_cast_fu_518_p1 - co_cast7_cast_fu_506_p1);

assign tmp_131_fu_532_p3 = {{co_reg_419}, {4'd0}};

assign tmp_132_fu_544_p3 = {{co_reg_419}, {1'd0}};

assign tmp_133_fu_556_p2 = (p_shl1_cast_fu_552_p1 + p_shl_cast_fu_540_p1);

assign tmp_134_fu_578_p2 = (h_cast6_cast_fu_574_p1 + tmp_133_reg_876);

assign tmp_135_fu_603_p2 = (p_shl3_cast_fu_583_p3 + p_shl4_cast_fu_599_p1);

assign tmp_136_fu_619_p2 = (tmp_135_reg_894 + w_cast5_cast_fu_615_p1);

assign tmp_137_fu_645_p2 = ($signed(m_cast4_cast_fu_641_p1) + $signed(tmp_162_cast_reg_871));

assign tmp_138_fu_656_p2 = (tmp_40_fu_650_p2 - tmp_137_fu_645_p2);

assign tmp_139_fu_690_p3 = {{tmp_s_fu_684_p2}, {4'd0}};

assign tmp_140_fu_702_p3 = {{tmp_s_fu_684_p2}, {1'd0}};

assign tmp_141_fu_714_p2 = (p_shl7_cast_fu_710_p1 + p_shl6_cast_fu_698_p1);

assign tmp_142_fu_724_p2 = (tmp_138_reg_915 + n_cast3_cast_fu_720_p1);

assign tmp_143_fu_766_p2 = (tmp_141_reg_928 + tmp_11_cast_cast_fu_762_p1);

assign tmp_162_cast_fu_528_p1 = $signed(tmp_130_fu_522_p2);

assign tmp_170_cast_fu_624_p1 = tmp_136_fu_619_p2;

assign tmp_177_cast_fu_729_p1 = tmp_142_fu_724_p2;

assign tmp_178_cast_fu_771_p1 = tmp_143_reg_946;

assign tmp_1_fu_756_p2 = ($signed(w_reg_443) + $signed(tmp2_cast_fu_752_p1));

assign tmp_39_fu_591_p3 = {{tmp_134_fu_578_p2}, {1'd0}};

assign tmp_40_fu_650_p2 = tmp_137_fu_645_p2 << 9'd2;

assign tmp_s_fu_684_p2 = ($signed(h_reg_431) + $signed(tmp1_cast_fu_680_p1));

assign w_6_fu_859_p2 = (w_reg_443 + 5'd1);

assign w_cast5_cast_fu_615_p1 = w_reg_443;

assign weight_V_address0 = weight_V_addr_reg_933;

always @ (posedge ap_clk) begin
    tmp_133_reg_876[0] <= 1'b0;
    tmp_135_reg_894[0] <= 1'b0;
    tmp_141_reg_928[0] <= 1'b0;
end

endmodule //subconv_3x3_16_no_re
