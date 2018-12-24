// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_3x3_32_strid_1 (
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
        ShuffleConvs_0_Downs_23_address0,
        ShuffleConvs_0_Downs_23_ce0,
        ShuffleConvs_0_Downs_23_q0,
        ShuffleConvs_0_Downs_22_address0,
        ShuffleConvs_0_Downs_22_ce0,
        ShuffleConvs_0_Downs_22_q0,
        ShuffleConvs_0_Downs_11_address0,
        ShuffleConvs_0_Downs_11_ce0,
        ShuffleConvs_0_Downs_11_q0,
        ShuffleConvs_0_Downs_6_address0,
        ShuffleConvs_0_Downs_6_ce0,
        ShuffleConvs_0_Downs_6_q0,
        ShuffleConvs_0_Downs_5_address0,
        ShuffleConvs_0_Downs_5_ce0,
        ShuffleConvs_0_Downs_5_q0,
        ShuffleConvs_0_Downs_4_address0,
        ShuffleConvs_0_Downs_4_ce0,
        ShuffleConvs_0_Downs_4_q0,
        ShuffleConvs_0_Downs_3_address0,
        ShuffleConvs_0_Downs_3_ce0,
        ShuffleConvs_0_Downs_3_q0,
        ShuffleConvs_0_Downs_2_address0,
        ShuffleConvs_0_Downs_2_ce0,
        ShuffleConvs_0_Downs_2_q0,
        ShuffleConvs_0_Downs_1_address0,
        ShuffleConvs_0_Downs_1_ce0,
        ShuffleConvs_0_Downs_1_q0,
        ShuffleConvs_0_Downs_address0,
        ShuffleConvs_0_Downs_ce0,
        ShuffleConvs_0_Downs_q0,
        ShuffleConvs_0_Downs_21_address0,
        ShuffleConvs_0_Downs_21_ce0,
        ShuffleConvs_0_Downs_21_q0,
        ShuffleConvs_0_Downs_20_address0,
        ShuffleConvs_0_Downs_20_ce0,
        ShuffleConvs_0_Downs_20_q0,
        ShuffleConvs_0_Downs_19_address0,
        ShuffleConvs_0_Downs_19_ce0,
        ShuffleConvs_0_Downs_19_q0,
        ShuffleConvs_0_Downs_18_address0,
        ShuffleConvs_0_Downs_18_ce0,
        ShuffleConvs_0_Downs_18_q0,
        ShuffleConvs_0_Downs_17_address0,
        ShuffleConvs_0_Downs_17_ce0,
        ShuffleConvs_0_Downs_17_q0,
        ShuffleConvs_0_Downs_16_address0,
        ShuffleConvs_0_Downs_16_ce0,
        ShuffleConvs_0_Downs_16_q0,
        ShuffleConvs_0_Downs_15_address0,
        ShuffleConvs_0_Downs_15_ce0,
        ShuffleConvs_0_Downs_15_q0,
        ShuffleConvs_0_Downs_14_address0,
        ShuffleConvs_0_Downs_14_ce0,
        ShuffleConvs_0_Downs_14_q0,
        ShuffleConvs_0_Downs_13_address0,
        ShuffleConvs_0_Downs_13_ce0,
        ShuffleConvs_0_Downs_13_q0,
        ShuffleConvs_0_Downs_12_address0,
        ShuffleConvs_0_Downs_12_ce0,
        ShuffleConvs_0_Downs_12_q0,
        ShuffleConvs_0_Downs_10_address0,
        ShuffleConvs_0_Downs_10_ce0,
        ShuffleConvs_0_Downs_10_q0,
        ShuffleConvs_0_Downs_9_address0,
        ShuffleConvs_0_Downs_9_ce0,
        ShuffleConvs_0_Downs_9_q0,
        ShuffleConvs_0_Downs_8_address0,
        ShuffleConvs_0_Downs_8_ce0,
        ShuffleConvs_0_Downs_8_q0,
        ShuffleConvs_0_Downs_7_address0,
        ShuffleConvs_0_Downs_7_ce0,
        ShuffleConvs_0_Downs_7_q0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

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
output  [10:0] ShuffleConvs_0_Downs_23_address0;
output   ShuffleConvs_0_Downs_23_ce0;
input  [7:0] ShuffleConvs_0_Downs_23_q0;
output  [10:0] ShuffleConvs_0_Downs_22_address0;
output   ShuffleConvs_0_Downs_22_ce0;
input  [7:0] ShuffleConvs_0_Downs_22_q0;
output  [10:0] ShuffleConvs_0_Downs_11_address0;
output   ShuffleConvs_0_Downs_11_ce0;
input  [7:0] ShuffleConvs_0_Downs_11_q0;
output  [10:0] ShuffleConvs_0_Downs_6_address0;
output   ShuffleConvs_0_Downs_6_ce0;
input  [7:0] ShuffleConvs_0_Downs_6_q0;
output  [10:0] ShuffleConvs_0_Downs_5_address0;
output   ShuffleConvs_0_Downs_5_ce0;
input  [7:0] ShuffleConvs_0_Downs_5_q0;
output  [10:0] ShuffleConvs_0_Downs_4_address0;
output   ShuffleConvs_0_Downs_4_ce0;
input  [7:0] ShuffleConvs_0_Downs_4_q0;
output  [10:0] ShuffleConvs_0_Downs_3_address0;
output   ShuffleConvs_0_Downs_3_ce0;
input  [7:0] ShuffleConvs_0_Downs_3_q0;
output  [10:0] ShuffleConvs_0_Downs_2_address0;
output   ShuffleConvs_0_Downs_2_ce0;
input  [7:0] ShuffleConvs_0_Downs_2_q0;
output  [10:0] ShuffleConvs_0_Downs_1_address0;
output   ShuffleConvs_0_Downs_1_ce0;
input  [7:0] ShuffleConvs_0_Downs_1_q0;
output  [10:0] ShuffleConvs_0_Downs_address0;
output   ShuffleConvs_0_Downs_ce0;
input  [7:0] ShuffleConvs_0_Downs_q0;
output  [10:0] ShuffleConvs_0_Downs_21_address0;
output   ShuffleConvs_0_Downs_21_ce0;
input  [7:0] ShuffleConvs_0_Downs_21_q0;
output  [10:0] ShuffleConvs_0_Downs_20_address0;
output   ShuffleConvs_0_Downs_20_ce0;
input  [7:0] ShuffleConvs_0_Downs_20_q0;
output  [10:0] ShuffleConvs_0_Downs_19_address0;
output   ShuffleConvs_0_Downs_19_ce0;
input  [7:0] ShuffleConvs_0_Downs_19_q0;
output  [10:0] ShuffleConvs_0_Downs_18_address0;
output   ShuffleConvs_0_Downs_18_ce0;
input  [7:0] ShuffleConvs_0_Downs_18_q0;
output  [10:0] ShuffleConvs_0_Downs_17_address0;
output   ShuffleConvs_0_Downs_17_ce0;
input  [7:0] ShuffleConvs_0_Downs_17_q0;
output  [10:0] ShuffleConvs_0_Downs_16_address0;
output   ShuffleConvs_0_Downs_16_ce0;
input  [7:0] ShuffleConvs_0_Downs_16_q0;
output  [10:0] ShuffleConvs_0_Downs_15_address0;
output   ShuffleConvs_0_Downs_15_ce0;
input  [7:0] ShuffleConvs_0_Downs_15_q0;
output  [10:0] ShuffleConvs_0_Downs_14_address0;
output   ShuffleConvs_0_Downs_14_ce0;
input  [7:0] ShuffleConvs_0_Downs_14_q0;
output  [10:0] ShuffleConvs_0_Downs_13_address0;
output   ShuffleConvs_0_Downs_13_ce0;
input  [7:0] ShuffleConvs_0_Downs_13_q0;
output  [10:0] ShuffleConvs_0_Downs_12_address0;
output   ShuffleConvs_0_Downs_12_ce0;
input  [7:0] ShuffleConvs_0_Downs_12_q0;
output  [10:0] ShuffleConvs_0_Downs_10_address0;
output   ShuffleConvs_0_Downs_10_ce0;
input  [7:0] ShuffleConvs_0_Downs_10_q0;
output  [10:0] ShuffleConvs_0_Downs_9_address0;
output   ShuffleConvs_0_Downs_9_ce0;
input  [7:0] ShuffleConvs_0_Downs_9_q0;
output  [10:0] ShuffleConvs_0_Downs_8_address0;
output   ShuffleConvs_0_Downs_8_ce0;
input  [7:0] ShuffleConvs_0_Downs_8_q0;
output  [10:0] ShuffleConvs_0_Downs_7_address0;
output   ShuffleConvs_0_Downs_7_ce0;
input  [7:0] ShuffleConvs_0_Downs_7_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg weight_V_ce0;
reg bias_V_ce0;
reg output_V_ce0;
reg output_V_we0;
reg ShuffleConvs_0_Downs_23_ce0;
reg ShuffleConvs_0_Downs_22_ce0;
reg ShuffleConvs_0_Downs_11_ce0;
reg ShuffleConvs_0_Downs_6_ce0;
reg ShuffleConvs_0_Downs_5_ce0;
reg ShuffleConvs_0_Downs_4_ce0;
reg ShuffleConvs_0_Downs_3_ce0;
reg ShuffleConvs_0_Downs_2_ce0;
reg ShuffleConvs_0_Downs_1_ce0;
reg ShuffleConvs_0_Downs_ce0;
reg ShuffleConvs_0_Downs_21_ce0;
reg ShuffleConvs_0_Downs_20_ce0;
reg ShuffleConvs_0_Downs_19_ce0;
reg ShuffleConvs_0_Downs_18_ce0;
reg ShuffleConvs_0_Downs_17_ce0;
reg ShuffleConvs_0_Downs_16_ce0;
reg ShuffleConvs_0_Downs_15_ce0;
reg ShuffleConvs_0_Downs_14_ce0;
reg ShuffleConvs_0_Downs_13_ce0;
reg ShuffleConvs_0_Downs_12_ce0;
reg ShuffleConvs_0_Downs_10_ce0;
reg ShuffleConvs_0_Downs_9_ce0;
reg ShuffleConvs_0_Downs_8_ce0;
reg ShuffleConvs_0_Downs_7_ce0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [8:0] tmp_102_cast_fu_535_p1;
reg  signed [8:0] tmp_102_cast_reg_893;
wire    ap_CS_fsm_state2;
wire   [9:0] tmp_88_fu_563_p2;
reg   [9:0] tmp_88_reg_898;
wire   [4:0] co_4_fu_575_p2;
reg   [4:0] co_4_reg_906;
reg   [4:0] bias_V_addr_reg_911;
wire   [0:0] exitcond4_fu_569_p2;
wire   [13:0] tmp_90_fu_610_p2;
reg   [13:0] tmp_90_reg_916;
wire    ap_CS_fsm_state3;
wire   [5:0] tmp_fu_622_p3;
reg   [5:0] tmp_reg_924;
wire   [0:0] exitcond5_fu_616_p2;
reg   [12:0] output_V_addr_reg_929;
wire    ap_CS_fsm_state4;
wire   [5:0] tmp_s_fu_650_p3;
reg   [5:0] tmp_s_reg_937;
wire   [0:0] exitcond6_fu_644_p2;
wire   [4:0] h_4_fu_658_p2;
wire   [8:0] tmp_93_fu_679_p2;
reg   [8:0] tmp_93_reg_947;
wire    ap_CS_fsm_state5;
wire   [1:0] m_4_fu_691_p2;
reg   [1:0] m_4_reg_955;
wire   [11:0] tmp_96_fu_736_p2;
reg   [11:0] tmp_96_reg_960;
wire   [0:0] exitcond7_fu_685_p2;
wire   [4:0] w_4_fu_742_p2;
reg   [4:0] w_4_reg_965;
wire    ap_CS_fsm_state6;
wire   [1:0] n_4_fu_768_p2;
reg   [1:0] n_4_reg_978;
wire   [0:0] exitcond_fu_762_p2;
reg  signed [7:0] weight_V_load_reg_1103;
wire    ap_CS_fsm_state7;
wire  signed [7:0] tmp_3_fu_826_p26;
reg  signed [7:0] tmp_3_reg_1108;
wire  signed [7:0] grp_fu_887_p3;
wire    ap_CS_fsm_state8;
reg   [4:0] co_reg_426;
reg   [4:0] h_reg_438;
reg   [4:0] w_reg_450;
wire    ap_CS_fsm_state9;
reg   [7:0] p_s_reg_462;
reg   [1:0] m_reg_474;
reg   [7:0] p_09_1_reg_485;
reg   [1:0] n_reg_497;
wire   [31:0] co_cast7_fu_508_p1;
wire   [31:0] tmp_110_cast_fu_639_p1;
wire   [31:0] tmp_117_cast_fu_757_p1;
wire   [31:0] tmp_118_cast_fu_798_p1;
wire   [6:0] tmp_84_fu_517_p3;
wire   [7:0] p_shl2_cast_fu_525_p1;
wire   [7:0] co_cast7_cast_fu_513_p1;
wire   [7:0] tmp_85_fu_529_p2;
wire   [8:0] tmp_86_fu_539_p3;
wire   [5:0] tmp_87_fu_551_p3;
wire   [9:0] p_shl1_cast_fu_559_p1;
wire   [9:0] p_shl_cast_fu_547_p1;
wire   [9:0] h_cast6_cast_fu_581_p1;
wire   [9:0] tmp_89_fu_585_p2;
wire   [10:0] tmp_81_fu_598_p3;
wire   [13:0] p_shl3_cast_fu_590_p3;
wire   [13:0] p_shl4_cast_fu_606_p1;
wire   [13:0] w_cast5_cast_fu_630_p1;
wire   [13:0] tmp_91_fu_634_p2;
wire   [8:0] m_cast4_cast_fu_664_p1;
wire   [8:0] tmp_92_fu_668_p2;
wire   [8:0] tmp_82_fu_673_p2;
wire   [1:0] tmp1_fu_697_p2;
wire  signed [5:0] tmp1_cast_fu_703_p1;
wire   [5:0] tmp_8_fu_707_p2;
wire   [10:0] tmp_94_fu_712_p3;
wire   [6:0] tmp_95_fu_724_p3;
wire   [11:0] p_shl7_cast_fu_732_p1;
wire   [11:0] p_shl6_cast_fu_720_p1;
wire   [8:0] n_cast3_cast_fu_748_p1;
wire   [8:0] tmp_97_fu_752_p2;
wire   [1:0] tmp2_fu_774_p2;
wire  signed [5:0] tmp2_cast_fu_780_p1;
wire   [5:0] tmp_1_fu_784_p2;
wire   [11:0] tmp_1_cast_cast_fu_789_p1;
wire   [11:0] tmp_98_fu_793_p2;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
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
ShuffleNetV2_mux_eOg_x_U62(
    .din1(ShuffleConvs_0_Downs_23_q0),
    .din2(ShuffleConvs_0_Downs_22_q0),
    .din3(ShuffleConvs_0_Downs_11_q0),
    .din4(ShuffleConvs_0_Downs_6_q0),
    .din5(ShuffleConvs_0_Downs_5_q0),
    .din6(ShuffleConvs_0_Downs_4_q0),
    .din7(ShuffleConvs_0_Downs_3_q0),
    .din8(ShuffleConvs_0_Downs_2_q0),
    .din9(ShuffleConvs_0_Downs_1_q0),
    .din10(ShuffleConvs_0_Downs_q0),
    .din11(ShuffleConvs_0_Downs_21_q0),
    .din12(ShuffleConvs_0_Downs_20_q0),
    .din13(ShuffleConvs_0_Downs_19_q0),
    .din14(ShuffleConvs_0_Downs_18_q0),
    .din15(ShuffleConvs_0_Downs_17_q0),
    .din16(ShuffleConvs_0_Downs_16_q0),
    .din17(ShuffleConvs_0_Downs_15_q0),
    .din18(ShuffleConvs_0_Downs_14_q0),
    .din19(ShuffleConvs_0_Downs_13_q0),
    .din20(ShuffleConvs_0_Downs_12_q0),
    .din21(ShuffleConvs_0_Downs_10_q0),
    .din22(ShuffleConvs_0_Downs_9_q0),
    .din23(ShuffleConvs_0_Downs_8_q0),
    .din24(ShuffleConvs_0_Downs_7_q0),
    .din25(co_reg_426),
    .dout(tmp_3_fu_826_p26)
);

ShuffleNetV2_mac_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
ShuffleNetV2_mac_cud_x_U63(
    .din0(tmp_3_reg_1108),
    .din1(weight_V_load_reg_1103),
    .din2(p_09_1_reg_485),
    .dout(grp_fu_887_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond5_fu_616_p2 == 1'd1))) begin
        co_reg_426 <= co_4_reg_906;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_426 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_569_p2 == 1'd0))) begin
        h_reg_438 <= 5'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond6_fu_644_p2 == 1'd1))) begin
        h_reg_438 <= h_4_fu_658_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_762_p2))) begin
        m_reg_474 <= m_4_reg_955;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond6_fu_644_p2))) begin
        m_reg_474 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond7_fu_685_p2))) begin
        n_reg_497 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        n_reg_497 <= n_4_reg_978;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond7_fu_685_p2))) begin
        p_09_1_reg_485 <= p_s_reg_462;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        p_09_1_reg_485 <= grp_fu_887_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_762_p2))) begin
        p_s_reg_462 <= p_09_1_reg_485;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond6_fu_644_p2))) begin
        p_s_reg_462 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond5_fu_616_p2))) begin
        w_reg_450 <= 5'd1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        w_reg_450 <= w_4_reg_965;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_569_p2 == 1'd0))) begin
        bias_V_addr_reg_911 <= co_cast7_fu_508_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_4_reg_906 <= co_4_fu_575_p2;
        tmp_102_cast_reg_893 <= tmp_102_cast_fu_535_p1;
        tmp_88_reg_898[9 : 1] <= tmp_88_fu_563_p2[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_4_reg_955 <= m_4_fu_691_p2;
        tmp_93_reg_947 <= tmp_93_fu_679_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_4_reg_978 <= n_4_fu_768_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        output_V_addr_reg_929 <= tmp_110_cast_fu_639_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_1108 <= tmp_3_fu_826_p26;
        weight_V_load_reg_1103 <= weight_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_90_reg_916[13 : 1] <= tmp_90_fu_610_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond7_fu_685_p2))) begin
        tmp_96_reg_960[11 : 1] <= tmp_96_fu_736_p2[11 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond5_fu_616_p2))) begin
        tmp_reg_924[5 : 1] <= tmp_fu_622_p3[5 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond6_fu_644_p2))) begin
        tmp_s_reg_937[5 : 1] <= tmp_s_fu_650_p3[5 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond7_fu_685_p2))) begin
        w_4_reg_965 <= w_4_fu_742_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_10_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_11_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_12_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_13_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_14_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_15_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_16_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_17_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_17_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_18_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_18_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_19_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_19_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_1_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_20_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_21_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_21_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_22_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_23_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_23_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_2_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_3_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_4_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_5_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_6_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_7_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_8_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_9_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ShuffleConvs_0_Downs_ce0 = 1'b1;
    end else begin
        ShuffleConvs_0_Downs_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_569_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_569_p2 == 1'd1))) begin
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond4_fu_569_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond5_fu_616_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond6_fu_644_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond7_fu_685_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_762_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ShuffleConvs_0_Downs_10_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_11_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_12_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_13_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_14_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_15_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_16_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_17_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_18_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_19_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_1_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_20_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_21_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_22_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_23_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_2_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_3_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_4_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_5_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_6_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_7_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_8_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_9_address0 = tmp_118_cast_fu_798_p1;

assign ShuffleConvs_0_Downs_address0 = tmp_118_cast_fu_798_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bias_V_address0 = bias_V_addr_reg_911;

assign co_4_fu_575_p2 = (co_reg_426 + 5'd1);

assign co_cast7_cast_fu_513_p1 = co_reg_426;

assign co_cast7_fu_508_p1 = co_reg_426;

assign exitcond4_fu_569_p2 = ((co_reg_426 == 5'd24) ? 1'b1 : 1'b0);

assign exitcond5_fu_616_p2 = ((h_reg_438 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond6_fu_644_p2 = ((w_reg_450 == 5'd17) ? 1'b1 : 1'b0);

assign exitcond7_fu_685_p2 = ((m_reg_474 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_762_p2 = ((n_reg_497 == 2'd3) ? 1'b1 : 1'b0);

assign h_4_fu_658_p2 = (h_reg_438 + 5'd1);

assign h_cast6_cast_fu_581_p1 = h_reg_438;

assign m_4_fu_691_p2 = (2'd1 + m_reg_474);

assign m_cast4_cast_fu_664_p1 = m_reg_474;

assign n_4_fu_768_p2 = (n_reg_497 + 2'd1);

assign n_cast3_cast_fu_748_p1 = n_reg_497;

assign output_V_address0 = output_V_addr_reg_929;

assign output_V_d0 = (bias_V_q0 + p_s_reg_462);

assign p_shl1_cast_fu_559_p1 = tmp_87_fu_551_p3;

assign p_shl2_cast_fu_525_p1 = tmp_84_fu_517_p3;

assign p_shl3_cast_fu_590_p3 = {{tmp_89_fu_585_p2}, {4'd0}};

assign p_shl4_cast_fu_606_p1 = tmp_81_fu_598_p3;

assign p_shl6_cast_fu_720_p1 = tmp_94_fu_712_p3;

assign p_shl7_cast_fu_732_p1 = tmp_95_fu_724_p3;

assign p_shl_cast_fu_547_p1 = tmp_86_fu_539_p3;

assign tmp1_cast_fu_703_p1 = $signed(tmp1_fu_697_p2);

assign tmp1_fu_697_p2 = (m_reg_474 ^ 2'd2);

assign tmp2_cast_fu_780_p1 = $signed(tmp2_fu_774_p2);

assign tmp2_fu_774_p2 = (n_reg_497 ^ 2'd2);

assign tmp_102_cast_fu_535_p1 = $signed(tmp_85_fu_529_p2);

assign tmp_110_cast_fu_639_p1 = tmp_91_fu_634_p2;

assign tmp_117_cast_fu_757_p1 = tmp_97_fu_752_p2;

assign tmp_118_cast_fu_798_p1 = tmp_98_fu_793_p2;

assign tmp_1_cast_cast_fu_789_p1 = tmp_1_fu_784_p2;

assign tmp_1_fu_784_p2 = ($signed(tmp_s_reg_937) + $signed(tmp2_cast_fu_780_p1));

assign tmp_81_fu_598_p3 = {{tmp_89_fu_585_p2}, {1'd0}};

assign tmp_82_fu_673_p2 = tmp_92_fu_668_p2 << 9'd2;

assign tmp_84_fu_517_p3 = {{co_reg_426}, {2'd0}};

assign tmp_85_fu_529_p2 = (p_shl2_cast_fu_525_p1 - co_cast7_cast_fu_513_p1);

assign tmp_86_fu_539_p3 = {{co_reg_426}, {4'd0}};

assign tmp_87_fu_551_p3 = {{co_reg_426}, {1'd0}};

assign tmp_88_fu_563_p2 = (p_shl1_cast_fu_559_p1 + p_shl_cast_fu_547_p1);

assign tmp_89_fu_585_p2 = (h_cast6_cast_fu_581_p1 + tmp_88_reg_898);

assign tmp_8_fu_707_p2 = ($signed(tmp_reg_924) + $signed(tmp1_cast_fu_703_p1));

assign tmp_90_fu_610_p2 = (p_shl3_cast_fu_590_p3 + p_shl4_cast_fu_606_p1);

assign tmp_91_fu_634_p2 = (tmp_90_reg_916 + w_cast5_cast_fu_630_p1);

assign tmp_92_fu_668_p2 = ($signed(m_cast4_cast_fu_664_p1) + $signed(tmp_102_cast_reg_893));

assign tmp_93_fu_679_p2 = (tmp_82_fu_673_p2 - tmp_92_fu_668_p2);

assign tmp_94_fu_712_p3 = {{tmp_8_fu_707_p2}, {5'd0}};

assign tmp_95_fu_724_p3 = {{tmp_8_fu_707_p2}, {1'd0}};

assign tmp_96_fu_736_p2 = (p_shl7_cast_fu_732_p1 + p_shl6_cast_fu_720_p1);

assign tmp_97_fu_752_p2 = (tmp_93_reg_947 + n_cast3_cast_fu_748_p1);

assign tmp_98_fu_793_p2 = (tmp_96_reg_960 + tmp_1_cast_cast_fu_789_p1);

assign tmp_fu_622_p3 = {{h_reg_438}, {1'd0}};

assign tmp_s_fu_650_p3 = {{w_reg_450}, {1'd0}};

assign w_4_fu_742_p2 = (w_reg_450 + 5'd1);

assign w_cast5_cast_fu_630_p1 = w_reg_450;

assign weight_V_address0 = tmp_117_cast_fu_757_p1;

always @ (posedge ap_clk) begin
    tmp_88_reg_898[0] <= 1'b0;
    tmp_90_reg_916[0] <= 1'b0;
    tmp_reg_924[0] <= 1'b0;
    tmp_s_reg_937[0] <= 1'b0;
    tmp_96_reg_960[0] <= 1'b0;
end

endmodule //subconv_3x3_32_strid_1
