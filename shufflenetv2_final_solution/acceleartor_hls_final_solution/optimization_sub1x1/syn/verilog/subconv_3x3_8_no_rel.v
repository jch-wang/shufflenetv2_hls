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
        buffer1_1_48_8x8_p_V_8_address0,
        buffer1_1_48_8x8_p_V_8_ce0,
        buffer1_1_48_8x8_p_V_8_q0,
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
        buffer1_1_48_8x8_p_V_7_q0
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;

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
output  [9:0] buffer1_1_48_8x8_p_V_8_address0;
output   buffer1_1_48_8x8_p_V_8_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_8_q0;
output  [9:0] buffer1_1_48_8x8_p_V_1_address0;
output   buffer1_1_48_8x8_p_V_1_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_1_q0;
output  [9:0] buffer1_1_48_8x8_p_V_2_address0;
output   buffer1_1_48_8x8_p_V_2_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_2_q0;
output  [9:0] buffer1_1_48_8x8_p_V_3_address0;
output   buffer1_1_48_8x8_p_V_3_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_3_q0;
output  [9:0] buffer1_1_48_8x8_p_V_4_address0;
output   buffer1_1_48_8x8_p_V_4_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_4_q0;
output  [9:0] buffer1_1_48_8x8_p_V_5_address0;
output   buffer1_1_48_8x8_p_V_5_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_5_q0;
output  [9:0] buffer1_1_48_8x8_p_V_6_address0;
output   buffer1_1_48_8x8_p_V_6_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_6_q0;
output  [9:0] buffer1_1_48_8x8_p_V_7_address0;
output   buffer1_1_48_8x8_p_V_7_ce0;
input  [7:0] buffer1_1_48_8x8_p_V_7_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg weight_V_ce0;
reg bias_V_ce0;
reg output_V_ce0;
reg output_V_we0;
reg buffer1_1_48_8x8_p_V_8_ce0;
reg buffer1_1_48_8x8_p_V_1_ce0;
reg buffer1_1_48_8x8_p_V_2_ce0;
reg buffer1_1_48_8x8_p_V_3_ce0;
reg buffer1_1_48_8x8_p_V_4_ce0;
reg buffer1_1_48_8x8_p_V_5_ce0;
reg buffer1_1_48_8x8_p_V_6_ce0;
reg buffer1_1_48_8x8_p_V_7_ce0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] co_2_fu_330_p2;
reg   [5:0] co_2_reg_999;
wire    ap_CS_fsm_state2;
wire  signed [9:0] tmp_64_cast_fu_363_p1;
reg  signed [9:0] tmp_64_cast_reg_1004;
wire   [0:0] exitcond5_fu_324_p2;
wire   [9:0] tmp_56_fu_391_p2;
reg   [9:0] tmp_56_reg_1009;
wire   [2:0] tmp_58_fu_397_p1;
reg   [2:0] tmp_58_reg_1014;
wire   [6:0] tmp_60_fu_435_p2;
reg   [6:0] tmp_60_reg_1019;
reg   [5:0] bias_V_addr_reg_1024;
wire   [13:0] tmp_64_fu_480_p2;
reg   [13:0] tmp_64_reg_1032;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond6_fu_441_p2;
wire   [3:0] h_2_fu_492_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond7_fu_486_p2;
wire   [1:0] m_2_fu_504_p2;
reg   [1:0] m_2_reg_1048;
wire    ap_CS_fsm_state5;
wire   [9:0] tmp_66_fu_514_p2;
reg   [9:0] tmp_66_reg_1053;
wire   [0:0] exitcond8_fu_498_p2;
wire   [6:0] tmp_69_fu_539_p2;
reg   [6:0] tmp_69_reg_1059;
wire   [9:0] tmp_68_fu_549_p2;
reg   [9:0] tmp_68_reg_1065;
wire    ap_CS_fsm_state6;
wire   [10:0] tmp_72_fu_576_p2;
reg   [10:0] tmp_72_reg_1070;
wire   [1:0] n_2_fu_588_p2;
reg   [1:0] n_2_reg_1078;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond_fu_582_p2;
wire   [10:0] tmp_74_fu_628_p2;
reg   [10:0] tmp_74_reg_1088;
wire    ap_CS_fsm_state8;
reg   [7:0] weight_V_load_reg_1133;
wire   [7:0] tmp_25_fu_644_p10;
reg   [7:0] tmp_25_reg_1138;
wire    ap_CS_fsm_state9;
wire   [15:0] p_Val2_1_fu_671_p2;
reg   [15:0] p_Val2_1_reg_1143;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_76_reg_1148;
wire   [15:0] p_Val2_15_fu_697_p2;
reg   [15:0] p_Val2_15_reg_1153;
wire    ap_CS_fsm_state11;
reg   [0:0] signbit_reg_1158;
wire   [7:0] p_Val2_17_fu_731_p2;
reg   [7:0] p_Val2_17_reg_1165;
wire   [0:0] newsignbit_fu_737_p3;
reg   [0:0] newsignbit_reg_1171;
wire   [0:0] carry_fu_751_p2;
reg   [0:0] carry_reg_1177;
reg   [1:0] tmp_39_reg_1184;
wire   [0:0] p_38_i_i_fu_809_p2;
reg   [0:0] p_38_i_i_reg_1190;
wire    ap_CS_fsm_state12;
wire   [0:0] tmp_41_fu_825_p2;
reg   [0:0] tmp_41_reg_1195;
wire   [0:0] brmerge40_demorgan_i_fu_836_p2;
reg   [0:0] brmerge40_demorgan_i_reg_1200;
wire   [0:0] underflow_fu_853_p2;
reg   [0:0] underflow_reg_1205;
wire   [0:0] brmerge_i_i_i_fu_858_p2;
reg   [0:0] brmerge_i_i_i_reg_1210;
wire   [7:0] sum_V_fu_885_p3;
wire    ap_CS_fsm_state13;
reg   [0:0] isneg_reg_1220;
wire    ap_CS_fsm_state14;
wire   [7:0] result_V_fu_915_p2;
reg   [7:0] result_V_reg_1227;
reg   [0:0] newsignbit_3_reg_1233;
wire   [3:0] w_2_fu_990_p2;
wire    ap_CS_fsm_state15;
reg   [5:0] co_reg_243;
reg   [3:0] h_reg_254;
reg   [3:0] w_reg_266;
reg   [7:0] p_Val2_s_reg_278;
reg   [1:0] m_reg_290;
reg   [7:0] p_Val2_14_reg_301;
reg   [1:0] n_reg_313;
wire   [63:0] tmp_fu_336_p1;
wire   [63:0] tmp_83_cast_fu_603_p1;
wire   [63:0] tmp_84_cast_fu_633_p1;
wire   [63:0] tmp_75_cast_fu_985_p1;
wire   [7:0] tmp_s_fu_345_p3;
wire   [8:0] p_shl4_cast_fu_353_p1;
wire   [8:0] tmp_cast_fu_341_p1;
wire   [8:0] tmp_53_fu_357_p2;
wire   [8:0] tmp_54_fu_367_p3;
wire   [6:0] tmp_55_fu_379_p3;
wire   [9:0] p_shl2_cast_fu_375_p1;
wire   [9:0] p_shl3_cast_fu_387_p1;
wire   [2:0] newIndex_fu_401_p4;
wire   [5:0] tmp_57_fu_411_p3;
wire   [3:0] tmp_59_fu_423_p3;
wire   [6:0] p_shl_cast_fu_419_p1;
wire   [6:0] p_shl1_cast_fu_431_p1;
wire   [9:0] tmp_cast_30_fu_447_p1;
wire   [9:0] tmp_61_fu_451_p2;
wire   [12:0] tmp_62_fu_456_p3;
wire   [10:0] tmp_63_fu_468_p3;
wire   [13:0] p_shl5_cast_fu_464_p1;
wire   [13:0] p_shl6_cast_fu_476_p1;
wire   [9:0] tmp_30_cast_fu_510_p1;
wire   [1:0] tmp2_fu_519_p2;
wire  signed [3:0] tmp2_cast_fu_525_p1;
wire   [3:0] tmp_31_fu_529_p2;
wire   [6:0] tmp_32_cast_fu_535_p1;
wire   [9:0] tmp_67_fu_544_p2;
wire   [9:0] tmp_70_fu_554_p3;
wire   [7:0] tmp_71_fu_565_p3;
wire   [10:0] p_shl8_cast_fu_572_p1;
wire   [10:0] p_shl7_cast_fu_561_p1;
wire   [9:0] tmp_33_cast_fu_594_p1;
wire   [9:0] tmp_73_fu_598_p2;
wire   [1:0] tmp3_fu_608_p2;
wire  signed [3:0] tmp3_cast_fu_614_p1;
wire   [3:0] tmp_34_fu_618_p2;
wire   [10:0] tmp_35_cast_fu_624_p1;
wire  signed [7:0] p_Val2_1_fu_671_p0;
wire  signed [7:0] p_Val2_1_fu_671_p1;
wire   [13:0] tmp_36_fu_685_p3;
wire  signed [15:0] tmp_43_cast_fu_693_p1;
wire   [7:0] p_Val2_16_fu_710_p4;
wire   [7:0] tmp_37_fu_720_p1;
wire   [0:0] tmp_77_fu_723_p3;
wire   [0:0] tmp_38_fu_745_p2;
wire   [0:0] Range1_all_ones_fu_774_p2;
wire   [0:0] Range1_all_zeros_fu_779_p2;
wire   [0:0] tmp_79_fu_767_p3;
wire   [0:0] tmp_40_fu_791_p2;
wire   [0:0] p_41_i_i_fu_797_p2;
wire   [0:0] deleted_zeros_fu_784_p3;
wire   [0:0] p_not_i_i_fu_814_p2;
wire   [0:0] brmerge_i_i2_fu_820_p2;
wire   [0:0] deleted_ones_fu_802_p3;
wire   [0:0] tmp4_demorgan_fu_841_p2;
wire   [0:0] tmp4_fu_847_p2;
wire   [0:0] overflow_fu_830_p2;
wire   [0:0] tmp5_fu_864_p2;
wire   [0:0] underflow_not_fu_868_p2;
wire   [7:0] p_Val2_16_mux_fu_873_p3;
wire   [7:0] p_Val2_s_34_fu_879_p3;
wire  signed [8:0] tmp_26_fu_893_p1;
wire  signed [8:0] tmp_27_fu_897_p1;
wire   [8:0] p_Val2_12_fu_901_p2;
wire   [0:0] tmp_28_fu_929_p2;
wire   [0:0] isneg_not_fu_943_p2;
wire   [0:0] brmerge_i_i_fu_939_p2;
wire   [0:0] underflow_3_fu_934_p2;
wire   [0:0] brmerge9_fu_948_p2;
wire   [7:0] result_V_mux_fu_953_p3;
wire   [7:0] p_result_V_fu_960_p3;
wire   [13:0] tmp_29_cast_fu_976_p1;
wire   [13:0] tmp_65_fu_980_p2;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
end

ShuffleNetV2_mux_jbC #(
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
    .din9_WIDTH( 3 ),
    .dout_WIDTH( 8 ))
ShuffleNetV2_mux_jbC_x_U191(
    .din1(buffer1_1_48_8x8_p_V_8_q0),
    .din2(buffer1_1_48_8x8_p_V_1_q0),
    .din3(buffer1_1_48_8x8_p_V_2_q0),
    .din4(buffer1_1_48_8x8_p_V_3_q0),
    .din5(buffer1_1_48_8x8_p_V_4_q0),
    .din6(buffer1_1_48_8x8_p_V_5_q0),
    .din7(buffer1_1_48_8x8_p_V_6_q0),
    .din8(buffer1_1_48_8x8_p_V_7_q0),
    .din9(tmp_58_reg_1014),
    .dout(tmp_25_fu_644_p10)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond6_fu_441_p2 == 1'd1))) begin
        co_reg_243 <= co_2_reg_999;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_243 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_324_p2 == 1'd0))) begin
        h_reg_254 <= 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond7_fu_486_p2 == 1'd1))) begin
        h_reg_254 <= h_2_fu_492_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond7_fu_486_p2))) begin
        m_reg_290 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_582_p2))) begin
        m_reg_290 <= m_2_reg_1048;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        n_reg_313 <= n_2_reg_1078;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        n_reg_313 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        p_Val2_14_reg_301 <= sum_V_fu_885_p3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        p_Val2_14_reg_301 <= p_Val2_s_reg_278;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond7_fu_486_p2))) begin
        p_Val2_s_reg_278 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_582_p2))) begin
        p_Val2_s_reg_278 <= p_Val2_14_reg_301;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond6_fu_441_p2))) begin
        w_reg_266 <= 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        w_reg_266 <= w_2_fu_990_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_324_p2 == 1'd0))) begin
        bias_V_addr_reg_1024 <= tmp_fu_336_p1;
        tmp_56_reg_1009[9 : 1] <= tmp_56_fu_391_p2[9 : 1];
        tmp_58_reg_1014 <= tmp_58_fu_397_p1;
        tmp_60_reg_1019[6 : 1] <= tmp_60_fu_435_p2[6 : 1];
        tmp_64_cast_reg_1004 <= tmp_64_cast_fu_363_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        brmerge40_demorgan_i_reg_1200 <= brmerge40_demorgan_i_fu_836_p2;
        brmerge_i_i_i_reg_1210 <= brmerge_i_i_i_fu_858_p2;
        p_38_i_i_reg_1190 <= p_38_i_i_fu_809_p2;
        tmp_41_reg_1195 <= tmp_41_fu_825_p2;
        underflow_reg_1205 <= underflow_fu_853_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        carry_reg_1177 <= carry_fu_751_p2;
        newsignbit_reg_1171 <= p_Val2_17_fu_731_p2[32'd7];
        p_Val2_15_reg_1153 <= p_Val2_15_fu_697_p2;
        p_Val2_17_reg_1165 <= p_Val2_17_fu_731_p2;
        signbit_reg_1158 <= p_Val2_15_fu_697_p2[32'd15];
        tmp_39_reg_1184 <= {{p_Val2_15_fu_697_p2[15:14]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_2_reg_999 <= co_2_fu_330_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        isneg_reg_1220 <= p_Val2_12_fu_901_p2[32'd8];
        newsignbit_3_reg_1233 <= result_V_fu_915_p2[32'd7];
        result_V_reg_1227 <= result_V_fu_915_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_2_reg_1048 <= m_2_fu_504_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_2_reg_1078 <= n_2_fu_588_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_Val2_1_reg_1143 <= p_Val2_1_fu_671_p2;
        tmp_76_reg_1148 <= p_Val2_1_fu_671_p2[32'd5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_25_reg_1138 <= tmp_25_fu_644_p10;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond6_fu_441_p2))) begin
        tmp_64_reg_1032[13 : 1] <= tmp_64_fu_480_p2[13 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond8_fu_498_p2))) begin
        tmp_66_reg_1053 <= tmp_66_fu_514_p2;
        tmp_69_reg_1059 <= tmp_69_fu_539_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_68_reg_1065 <= tmp_68_fu_549_p2;
        tmp_72_reg_1070[10 : 1] <= tmp_72_fu_576_p2[10 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (1'd0 == exitcond_fu_582_p2))) begin
        tmp_74_reg_1088 <= tmp_74_fu_628_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        weight_V_load_reg_1133 <= weight_V_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_324_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_324_p2 == 1'd1))) begin
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
        buffer1_1_48_8x8_p_V_1_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_1_ce0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_state15)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_324_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond6_fu_441_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond7_fu_486_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond8_fu_498_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == exitcond_fu_582_p2))) begin
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_fu_774_p2 = ((tmp_39_reg_1184 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_779_p2 = ((tmp_39_reg_1184 == 2'd0) ? 1'b1 : 1'b0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bias_V_address0 = bias_V_addr_reg_1024;

assign brmerge40_demorgan_i_fu_836_p2 = (newsignbit_reg_1171 & deleted_ones_fu_802_p3);

assign brmerge9_fu_948_p2 = (newsignbit_3_reg_1233 | isneg_not_fu_943_p2);

assign brmerge_i_i2_fu_820_p2 = (newsignbit_reg_1171 | p_not_i_i_fu_814_p2);

assign brmerge_i_i_fu_939_p2 = (isneg_reg_1220 ^ newsignbit_3_reg_1233);

assign brmerge_i_i_i_fu_858_p2 = (underflow_fu_853_p2 | overflow_fu_830_p2);

assign buffer1_1_48_8x8_p_V_1_address0 = tmp_84_cast_fu_633_p1;

assign buffer1_1_48_8x8_p_V_2_address0 = tmp_84_cast_fu_633_p1;

assign buffer1_1_48_8x8_p_V_3_address0 = tmp_84_cast_fu_633_p1;

assign buffer1_1_48_8x8_p_V_4_address0 = tmp_84_cast_fu_633_p1;

assign buffer1_1_48_8x8_p_V_5_address0 = tmp_84_cast_fu_633_p1;

assign buffer1_1_48_8x8_p_V_6_address0 = tmp_84_cast_fu_633_p1;

assign buffer1_1_48_8x8_p_V_7_address0 = tmp_84_cast_fu_633_p1;

assign buffer1_1_48_8x8_p_V_8_address0 = tmp_84_cast_fu_633_p1;

assign carry_fu_751_p2 = (tmp_77_fu_723_p3 & tmp_38_fu_745_p2);

assign co_2_fu_330_p2 = (co_reg_243 + 6'd1);

assign deleted_ones_fu_802_p3 = ((carry_reg_1177[0:0] === 1'b1) ? p_41_i_i_fu_797_p2 : Range1_all_ones_fu_774_p2);

assign deleted_zeros_fu_784_p3 = ((carry_reg_1177[0:0] === 1'b1) ? Range1_all_ones_fu_774_p2 : Range1_all_zeros_fu_779_p2);

assign exitcond5_fu_324_p2 = ((co_reg_243 == 6'd48) ? 1'b1 : 1'b0);

assign exitcond6_fu_441_p2 = ((h_reg_254 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond7_fu_486_p2 = ((w_reg_266 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond8_fu_498_p2 = ((m_reg_290 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_582_p2 = ((n_reg_313 == 2'd3) ? 1'b1 : 1'b0);

assign h_2_fu_492_p2 = (h_reg_254 + 4'd1);

assign isneg_not_fu_943_p2 = (isneg_reg_1220 ^ 1'd1);

assign m_2_fu_504_p2 = (m_reg_290 + 2'd1);

assign n_2_fu_588_p2 = (n_reg_313 + 2'd1);

assign newIndex_fu_401_p4 = {{co_reg_243[5:3]}};

assign newsignbit_fu_737_p3 = p_Val2_17_fu_731_p2[32'd7];

assign output_V_address0 = tmp_75_cast_fu_985_p1;

assign output_V_d0 = ((brmerge9_fu_948_p2[0:0] === 1'b1) ? result_V_mux_fu_953_p3 : p_result_V_fu_960_p3);

assign overflow_fu_830_p2 = (brmerge_i_i2_fu_820_p2 & tmp_41_fu_825_p2);

assign p_38_i_i_fu_809_p2 = (carry_reg_1177 & Range1_all_ones_fu_774_p2);

assign p_41_i_i_fu_797_p2 = (signbit_reg_1158 & tmp_40_fu_791_p2);

assign p_Val2_12_fu_901_p2 = ($signed(tmp_26_fu_893_p1) + $signed(tmp_27_fu_897_p1));

assign p_Val2_15_fu_697_p2 = ($signed(tmp_43_cast_fu_693_p1) + $signed(p_Val2_1_reg_1143));

assign p_Val2_16_fu_710_p4 = {{p_Val2_15_fu_697_p2[13:6]}};

assign p_Val2_16_mux_fu_873_p3 = ((brmerge_i_i_i_reg_1210[0:0] === 1'b1) ? 8'd127 : p_Val2_17_reg_1165);

assign p_Val2_17_fu_731_p2 = (p_Val2_16_fu_710_p4 + tmp_37_fu_720_p1);

assign p_Val2_1_fu_671_p0 = weight_V_load_reg_1133;

assign p_Val2_1_fu_671_p1 = tmp_25_reg_1138;

assign p_Val2_1_fu_671_p2 = ($signed(p_Val2_1_fu_671_p0) * $signed(p_Val2_1_fu_671_p1));

assign p_Val2_s_34_fu_879_p3 = ((underflow_reg_1205[0:0] === 1'b1) ? 8'd128 : p_Val2_17_reg_1165);

assign p_not_i_i_fu_814_p2 = (deleted_zeros_fu_784_p3 ^ 1'd1);

assign p_result_V_fu_960_p3 = ((underflow_3_fu_934_p2[0:0] === 1'b1) ? 8'd128 : result_V_reg_1227);

assign p_shl1_cast_fu_431_p1 = tmp_59_fu_423_p3;

assign p_shl2_cast_fu_375_p1 = tmp_54_fu_367_p3;

assign p_shl3_cast_fu_387_p1 = tmp_55_fu_379_p3;

assign p_shl4_cast_fu_353_p1 = tmp_s_fu_345_p3;

assign p_shl5_cast_fu_464_p1 = tmp_62_fu_456_p3;

assign p_shl6_cast_fu_476_p1 = tmp_63_fu_468_p3;

assign p_shl7_cast_fu_561_p1 = tmp_70_fu_554_p3;

assign p_shl8_cast_fu_572_p1 = tmp_71_fu_565_p3;

assign p_shl_cast_fu_419_p1 = tmp_57_fu_411_p3;

assign result_V_fu_915_p2 = (p_Val2_s_reg_278 + bias_V_q0);

assign result_V_mux_fu_953_p3 = ((brmerge_i_i_fu_939_p2[0:0] === 1'b1) ? 8'd127 : result_V_reg_1227);

assign sum_V_fu_885_p3 = ((underflow_not_fu_868_p2[0:0] === 1'b1) ? p_Val2_16_mux_fu_873_p3 : p_Val2_s_34_fu_879_p3);

assign tmp2_cast_fu_525_p1 = $signed(tmp2_fu_519_p2);

assign tmp2_fu_519_p2 = ($signed(2'd3) + $signed(m_reg_290));

assign tmp3_cast_fu_614_p1 = $signed(tmp3_fu_608_p2);

assign tmp3_fu_608_p2 = ($signed(n_reg_313) + $signed(2'd3));

assign tmp4_demorgan_fu_841_p2 = (p_38_i_i_fu_809_p2 | brmerge40_demorgan_i_fu_836_p2);

assign tmp4_fu_847_p2 = (tmp4_demorgan_fu_841_p2 ^ 1'd1);

assign tmp5_fu_864_p2 = (brmerge40_demorgan_i_reg_1200 | tmp_41_reg_1195);

assign tmp_26_fu_893_p1 = $signed(p_Val2_s_reg_278);

assign tmp_27_fu_897_p1 = $signed(bias_V_q0);

assign tmp_28_fu_929_p2 = (newsignbit_3_reg_1233 ^ 1'd1);

assign tmp_29_cast_fu_976_p1 = w_reg_266;

assign tmp_30_cast_fu_510_p1 = m_reg_290;

assign tmp_31_fu_529_p2 = ($signed(h_reg_254) + $signed(tmp2_cast_fu_525_p1));

assign tmp_32_cast_fu_535_p1 = tmp_31_fu_529_p2;

assign tmp_33_cast_fu_594_p1 = n_reg_313;

assign tmp_34_fu_618_p2 = ($signed(tmp3_cast_fu_614_p1) + $signed(w_reg_266));

assign tmp_35_cast_fu_624_p1 = tmp_34_fu_618_p2;

assign tmp_36_fu_685_p3 = {{p_Val2_14_reg_301}, {6'd0}};

assign tmp_37_fu_720_p1 = tmp_76_reg_1148;

assign tmp_38_fu_745_p2 = (newsignbit_fu_737_p3 ^ 1'd1);

assign tmp_40_fu_791_p2 = (tmp_79_fu_767_p3 ^ 1'd1);

assign tmp_41_fu_825_p2 = (signbit_reg_1158 ^ 1'd1);

assign tmp_43_cast_fu_693_p1 = $signed(tmp_36_fu_685_p3);

assign tmp_53_fu_357_p2 = (p_shl4_cast_fu_353_p1 - tmp_cast_fu_341_p1);

assign tmp_54_fu_367_p3 = {{co_reg_243}, {3'd0}};

assign tmp_55_fu_379_p3 = {{co_reg_243}, {1'd0}};

assign tmp_56_fu_391_p2 = (p_shl2_cast_fu_375_p1 + p_shl3_cast_fu_387_p1);

assign tmp_57_fu_411_p3 = {{newIndex_fu_401_p4}, {3'd0}};

assign tmp_58_fu_397_p1 = co_reg_243[2:0];

assign tmp_59_fu_423_p3 = {{newIndex_fu_401_p4}, {1'd0}};

assign tmp_60_fu_435_p2 = (p_shl_cast_fu_419_p1 + p_shl1_cast_fu_431_p1);

assign tmp_61_fu_451_p2 = (tmp_cast_30_fu_447_p1 + tmp_56_reg_1009);

assign tmp_62_fu_456_p3 = {{tmp_61_fu_451_p2}, {3'd0}};

assign tmp_63_fu_468_p3 = {{tmp_61_fu_451_p2}, {1'd0}};

assign tmp_64_cast_fu_363_p1 = $signed(tmp_53_fu_357_p2);

assign tmp_64_fu_480_p2 = (p_shl5_cast_fu_464_p1 + p_shl6_cast_fu_476_p1);

assign tmp_65_fu_980_p2 = (tmp_64_reg_1032 + tmp_29_cast_fu_976_p1);

assign tmp_66_fu_514_p2 = ($signed(tmp_64_cast_reg_1004) + $signed(tmp_30_cast_fu_510_p1));

assign tmp_67_fu_544_p2 = tmp_66_reg_1053 << 10'd2;

assign tmp_68_fu_549_p2 = (tmp_67_fu_544_p2 - tmp_66_reg_1053);

assign tmp_69_fu_539_p2 = (tmp_60_reg_1019 + tmp_32_cast_fu_535_p1);

assign tmp_70_fu_554_p3 = {{tmp_69_reg_1059}, {3'd0}};

assign tmp_71_fu_565_p3 = {{tmp_69_reg_1059}, {1'd0}};

assign tmp_72_fu_576_p2 = (p_shl8_cast_fu_572_p1 + p_shl7_cast_fu_561_p1);

assign tmp_73_fu_598_p2 = (tmp_33_cast_fu_594_p1 + tmp_68_reg_1065);

assign tmp_74_fu_628_p2 = (tmp_35_cast_fu_624_p1 + tmp_72_reg_1070);

assign tmp_75_cast_fu_985_p1 = tmp_65_fu_980_p2;

assign tmp_77_fu_723_p3 = p_Val2_15_fu_697_p2[32'd13];

assign tmp_79_fu_767_p3 = p_Val2_15_reg_1153[32'd14];

assign tmp_83_cast_fu_603_p1 = tmp_73_fu_598_p2;

assign tmp_84_cast_fu_633_p1 = tmp_74_reg_1088;

assign tmp_cast_30_fu_447_p1 = h_reg_254;

assign tmp_cast_fu_341_p1 = co_reg_243;

assign tmp_fu_336_p1 = co_reg_243;

assign tmp_s_fu_345_p3 = {{co_reg_243}, {2'd0}};

assign underflow_3_fu_934_p2 = (isneg_reg_1220 & tmp_28_fu_929_p2);

assign underflow_fu_853_p2 = (signbit_reg_1158 & tmp4_fu_847_p2);

assign underflow_not_fu_868_p2 = (tmp5_fu_864_p2 | p_38_i_i_reg_1190);

assign w_2_fu_990_p2 = (w_reg_266 + 4'd1);

assign weight_V_address0 = tmp_83_cast_fu_603_p1;

always @ (posedge ap_clk) begin
    tmp_56_reg_1009[0] <= 1'b0;
    tmp_60_reg_1019[0] <= 1'b0;
    tmp_64_reg_1032[0] <= 1'b0;
    tmp_72_reg_1070[0] <= 1'b0;
end

endmodule //subconv_3x3_8_no_rel
