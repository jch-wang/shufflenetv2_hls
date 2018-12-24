// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_3x3_16_strid_1 (
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
        shuffleunit0_2_outpu_address0,
        shuffleunit0_2_outpu_ce0,
        shuffleunit0_2_outpu_q0
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

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
output  [13:0] shuffleunit0_2_outpu_address0;
output   shuffleunit0_2_outpu_ce0;
input  [7:0] shuffleunit0_2_outpu_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg weight_V_ce0;
reg bias_V_ce0;
reg output_V_ce0;
reg output_V_we0;
reg shuffleunit0_2_outpu_ce0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] co_5_fu_230_p2;
reg   [5:0] co_5_reg_863;
wire    ap_CS_fsm_state2;
wire  signed [9:0] tmp_131_cast_fu_263_p1;
reg  signed [9:0] tmp_131_cast_reg_868;
wire   [0:0] exitcond8_fu_224_p2;
wire   [9:0] tmp_121_fu_295_p2;
reg   [9:0] tmp_121_reg_873;
wire   [10:0] tmp_123_fu_313_p2;
reg   [10:0] tmp_123_reg_878;
reg   [5:0] bias_V_addr_reg_883;
wire   [4:0] tmp_s_fu_325_p3;
reg   [4:0] tmp_s_reg_891;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond9_fu_319_p2;
wire   [13:0] tmp_127_fu_366_p2;
reg   [13:0] tmp_127_reg_896;
wire   [4:0] tmp_79_fu_378_p3;
reg   [4:0] tmp_79_reg_904;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond3_fu_372_p2;
wire   [3:0] h_5_fu_386_p2;
wire   [1:0] m_5_fu_398_p2;
reg   [1:0] m_5_reg_917;
wire    ap_CS_fsm_state5;
wire   [9:0] tmp_131_fu_419_p2;
reg   [9:0] tmp_131_reg_922;
wire   [0:0] exitcond4_fu_392_p2;
wire   [14:0] tmp_134_fu_469_p2;
reg   [14:0] tmp_134_reg_927;
wire   [13:0] tmp_128_fu_479_p2;
reg   [13:0] tmp_128_reg_932;
wire   [3:0] w_5_fu_484_p2;
reg   [3:0] w_5_reg_937;
wire   [1:0] n_5_fu_496_p2;
reg   [1:0] n_5_reg_945;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond_fu_490_p2;
reg   [7:0] weight_V_load_reg_960;
wire    ap_CS_fsm_state7;
reg   [7:0] shuffleunit0_2_outpu_1_reg_965;
wire   [15:0] p_Val2_5_fu_551_p2;
reg   [15:0] p_Val2_5_reg_970;
wire    ap_CS_fsm_state8;
reg   [0:0] tmp_138_reg_975;
wire   [15:0] p_Val2_36_fu_577_p2;
reg   [15:0] p_Val2_36_reg_980;
wire    ap_CS_fsm_state9;
reg   [0:0] signbit_reg_985;
wire   [7:0] p_Val2_38_fu_611_p2;
reg   [7:0] p_Val2_38_reg_992;
wire   [0:0] newsignbit_fu_617_p3;
reg   [0:0] newsignbit_reg_998;
wire   [0:0] carry_fu_631_p2;
reg   [0:0] carry_reg_1004;
reg   [1:0] tmp_93_reg_1011;
wire   [0:0] p_38_i_i_fu_689_p2;
reg   [0:0] p_38_i_i_reg_1017;
wire    ap_CS_fsm_state10;
wire   [0:0] tmp_95_fu_705_p2;
reg   [0:0] tmp_95_reg_1022;
wire   [0:0] brmerge40_demorgan_i_fu_716_p2;
reg   [0:0] brmerge40_demorgan_i_reg_1027;
wire   [0:0] underflow_fu_733_p2;
reg   [0:0] underflow_reg_1032;
wire   [0:0] brmerge_i_i_i_fu_738_p2;
reg   [0:0] brmerge_i_i_i_reg_1037;
wire   [7:0] sum_V_fu_765_p3;
wire    ap_CS_fsm_state11;
reg   [0:0] isneg_reg_1047;
wire    ap_CS_fsm_state12;
wire   [7:0] result_V_fu_795_p2;
reg   [7:0] result_V_reg_1054;
reg   [0:0] newsignbit_6_reg_1060;
reg   [5:0] co_reg_143;
reg   [3:0] h_reg_154;
reg   [3:0] w_reg_166;
wire    ap_CS_fsm_state13;
reg   [7:0] p_Val2_s_reg_178;
reg   [1:0] m_reg_190;
reg   [7:0] p_Val2_35_reg_201;
reg   [1:0] n_reg_213;
wire   [63:0] tmp_fu_236_p1;
wire   [63:0] tmp_150_cast_fu_511_p1;
wire   [63:0] tmp_151_cast_fu_540_p1;
wire   [63:0] tmp_142_cast_fu_856_p1;
wire   [7:0] tmp_117_fu_245_p3;
wire   [8:0] p_shl4_cast_fu_253_p1;
wire   [8:0] tmp_cast_fu_241_p1;
wire   [8:0] tmp_118_fu_257_p2;
wire   [8:0] tmp_119_fu_267_p3;
wire   [6:0] tmp_120_fu_279_p3;
wire   [9:0] p_shl3_cast_fu_291_p1;
wire   [9:0] p_shl2_cast_fu_275_p1;
wire   [9:0] tmp_122_fu_301_p3;
wire   [10:0] p_shl3_cast1_fu_287_p1;
wire   [10:0] p_shl_cast_fu_309_p1;
wire   [9:0] tmp_78_cast_fu_333_p1;
wire   [9:0] tmp_124_fu_337_p2;
wire   [12:0] tmp_125_fu_342_p3;
wire   [10:0] tmp_126_fu_354_p3;
wire   [13:0] p_shl6_cast_fu_362_p1;
wire   [13:0] p_shl5_cast_fu_350_p1;
wire   [9:0] tmp_84_cast_fu_404_p1;
wire   [9:0] tmp_129_fu_408_p2;
wire   [9:0] tmp_130_fu_413_p2;
wire   [1:0] tmp2_fu_425_p2;
wire  signed [4:0] tmp2_cast_fu_431_p1;
wire   [4:0] tmp_85_fu_435_p2;
wire   [10:0] tmp_86_cast_fu_440_p1;
wire   [10:0] tmp_132_fu_444_p2;
wire   [11:0] tmp_133_fu_457_p3;
wire   [14:0] p_shl8_cast_fu_465_p1;
wire   [14:0] p_shl7_cast_fu_449_p3;
wire   [13:0] tmp_83_cast_fu_475_p1;
wire   [9:0] tmp_87_cast_fu_502_p1;
wire   [9:0] tmp_135_fu_506_p2;
wire   [1:0] tmp3_fu_516_p2;
wire  signed [4:0] tmp3_cast_fu_522_p1;
wire   [4:0] tmp_88_fu_526_p2;
wire   [14:0] tmp_89_cast_fu_531_p1;
wire   [14:0] tmp_136_fu_535_p2;
wire  signed [7:0] p_Val2_5_fu_551_p0;
wire  signed [7:0] p_Val2_5_fu_551_p1;
wire   [13:0] tmp_90_fu_565_p3;
wire  signed [15:0] tmp_137_cast_fu_573_p1;
wire   [7:0] p_Val2_37_fu_590_p4;
wire   [7:0] tmp_91_fu_600_p1;
wire   [0:0] tmp_139_fu_603_p3;
wire   [0:0] tmp_92_fu_625_p2;
wire   [0:0] Range1_all_ones_fu_654_p2;
wire   [0:0] Range1_all_zeros_fu_659_p2;
wire   [0:0] tmp_141_fu_647_p3;
wire   [0:0] tmp_94_fu_671_p2;
wire   [0:0] p_41_i_i_fu_677_p2;
wire   [0:0] deleted_zeros_fu_664_p3;
wire   [0:0] p_not_i_i_fu_694_p2;
wire   [0:0] brmerge_i_i5_fu_700_p2;
wire   [0:0] deleted_ones_fu_682_p3;
wire   [0:0] tmp4_demorgan_fu_721_p2;
wire   [0:0] tmp4_fu_727_p2;
wire   [0:0] overflow_fu_710_p2;
wire   [0:0] tmp5_fu_744_p2;
wire   [0:0] underflow_not_fu_748_p2;
wire   [7:0] p_Val2_40_mux_fu_753_p3;
wire   [7:0] p_Val2_s_50_fu_759_p3;
wire  signed [8:0] tmp_80_fu_773_p1;
wire  signed [8:0] tmp_81_fu_777_p1;
wire   [8:0] p_Val2_33_fu_781_p2;
wire   [0:0] tmp_82_fu_809_p2;
wire   [0:0] isneg_not_fu_823_p2;
wire   [0:0] brmerge_i_i_fu_819_p2;
wire   [0:0] underflow_6_fu_814_p2;
wire   [0:0] brmerge9_fu_828_p2;
wire   [7:0] result_V_mux_fu_833_p3;
wire   [7:0] p_result_V_fu_840_p3;
reg   [12:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond9_fu_319_p2 == 1'd1))) begin
        co_reg_143 <= co_5_reg_863;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_143 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond8_fu_224_p2 == 1'd0))) begin
        h_reg_154 <= 4'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond3_fu_372_p2 == 1'd1))) begin
        h_reg_154 <= h_5_fu_386_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_490_p2))) begin
        m_reg_190 <= m_5_reg_917;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond3_fu_372_p2))) begin
        m_reg_190 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        n_reg_213 <= n_5_reg_945;
    end else if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond4_fu_392_p2))) begin
        n_reg_213 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        p_Val2_35_reg_201 <= sum_V_fu_765_p3;
    end else if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond4_fu_392_p2))) begin
        p_Val2_35_reg_201 <= p_Val2_s_reg_178;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_490_p2))) begin
        p_Val2_s_reg_178 <= p_Val2_35_reg_201;
    end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond3_fu_372_p2))) begin
        p_Val2_s_reg_178 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond9_fu_319_p2))) begin
        w_reg_166 <= 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        w_reg_166 <= w_5_reg_937;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond8_fu_224_p2 == 1'd0))) begin
        bias_V_addr_reg_883 <= tmp_fu_236_p1;
        tmp_121_reg_873[9 : 1] <= tmp_121_fu_295_p2[9 : 1];
        tmp_123_reg_878[10 : 1] <= tmp_123_fu_313_p2[10 : 1];
        tmp_131_cast_reg_868 <= tmp_131_cast_fu_263_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        brmerge40_demorgan_i_reg_1027 <= brmerge40_demorgan_i_fu_716_p2;
        brmerge_i_i_i_reg_1037 <= brmerge_i_i_i_fu_738_p2;
        p_38_i_i_reg_1017 <= p_38_i_i_fu_689_p2;
        tmp_95_reg_1022 <= tmp_95_fu_705_p2;
        underflow_reg_1032 <= underflow_fu_733_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        carry_reg_1004 <= carry_fu_631_p2;
        newsignbit_reg_998 <= p_Val2_38_fu_611_p2[32'd7];
        p_Val2_36_reg_980 <= p_Val2_36_fu_577_p2;
        p_Val2_38_reg_992 <= p_Val2_38_fu_611_p2;
        signbit_reg_985 <= p_Val2_36_fu_577_p2[32'd15];
        tmp_93_reg_1011 <= {{p_Val2_36_fu_577_p2[15:14]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_5_reg_863 <= co_5_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        isneg_reg_1047 <= p_Val2_33_fu_781_p2[32'd8];
        newsignbit_6_reg_1060 <= result_V_fu_795_p2[32'd7];
        result_V_reg_1054 <= result_V_fu_795_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        m_5_reg_917 <= m_5_fu_398_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        n_5_reg_945 <= n_5_fu_496_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_Val2_5_reg_970 <= p_Val2_5_fu_551_p2;
        tmp_138_reg_975 <= p_Val2_5_fu_551_p2[32'd5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        shuffleunit0_2_outpu_1_reg_965 <= shuffleunit0_2_outpu_q0;
        weight_V_load_reg_960 <= weight_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond9_fu_319_p2))) begin
        tmp_127_reg_896[13 : 1] <= tmp_127_fu_366_p2[13 : 1];
        tmp_s_reg_891[4 : 1] <= tmp_s_fu_325_p3[4 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd1 == exitcond4_fu_392_p2))) begin
        tmp_128_reg_932 <= tmp_128_fu_479_p2;
        w_5_reg_937 <= w_5_fu_484_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond4_fu_392_p2))) begin
        tmp_131_reg_922 <= tmp_131_fu_419_p2;
        tmp_134_reg_927[14 : 1] <= tmp_134_fu_469_p2[14 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond3_fu_372_p2))) begin
        tmp_79_reg_904[4 : 1] <= tmp_79_fu_378_p3[4 : 1];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond8_fu_224_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond8_fu_224_p2 == 1'd1))) begin
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
    if ((1'b1 == ap_CS_fsm_state13)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        shuffleunit0_2_outpu_ce0 = 1'b1;
    end else begin
        shuffleunit0_2_outpu_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond8_fu_224_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond9_fu_319_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond3_fu_372_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'd0 == exitcond4_fu_392_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'd1 == exitcond_fu_490_p2))) begin
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
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_fu_654_p2 = ((tmp_93_reg_1011 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_659_p2 = ((tmp_93_reg_1011 == 2'd0) ? 1'b1 : 1'b0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bias_V_address0 = bias_V_addr_reg_883;

assign brmerge40_demorgan_i_fu_716_p2 = (newsignbit_reg_998 & deleted_ones_fu_682_p3);

assign brmerge9_fu_828_p2 = (newsignbit_6_reg_1060 | isneg_not_fu_823_p2);

assign brmerge_i_i5_fu_700_p2 = (newsignbit_reg_998 | p_not_i_i_fu_694_p2);

assign brmerge_i_i_fu_819_p2 = (isneg_reg_1047 ^ newsignbit_6_reg_1060);

assign brmerge_i_i_i_fu_738_p2 = (underflow_fu_733_p2 | overflow_fu_710_p2);

assign carry_fu_631_p2 = (tmp_139_fu_603_p3 & tmp_92_fu_625_p2);

assign co_5_fu_230_p2 = (co_reg_143 + 6'd1);

assign deleted_ones_fu_682_p3 = ((carry_reg_1004[0:0] === 1'b1) ? p_41_i_i_fu_677_p2 : Range1_all_ones_fu_654_p2);

assign deleted_zeros_fu_664_p3 = ((carry_reg_1004[0:0] === 1'b1) ? Range1_all_ones_fu_654_p2 : Range1_all_zeros_fu_659_p2);

assign exitcond3_fu_372_p2 = ((w_reg_166 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond4_fu_392_p2 = ((m_reg_190 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond8_fu_224_p2 = ((co_reg_143 == 6'd48) ? 1'b1 : 1'b0);

assign exitcond9_fu_319_p2 = ((h_reg_154 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond_fu_490_p2 = ((n_reg_213 == 2'd3) ? 1'b1 : 1'b0);

assign h_5_fu_386_p2 = (h_reg_154 + 4'd1);

assign isneg_not_fu_823_p2 = (isneg_reg_1047 ^ 1'd1);

assign m_5_fu_398_p2 = (m_reg_190 + 2'd1);

assign n_5_fu_496_p2 = (n_reg_213 + 2'd1);

assign newsignbit_fu_617_p3 = p_Val2_38_fu_611_p2[32'd7];

assign output_V_address0 = tmp_142_cast_fu_856_p1;

assign output_V_d0 = ((brmerge9_fu_828_p2[0:0] === 1'b1) ? result_V_mux_fu_833_p3 : p_result_V_fu_840_p3);

assign overflow_fu_710_p2 = (brmerge_i_i5_fu_700_p2 & tmp_95_fu_705_p2);

assign p_38_i_i_fu_689_p2 = (carry_reg_1004 & Range1_all_ones_fu_654_p2);

assign p_41_i_i_fu_677_p2 = (signbit_reg_985 & tmp_94_fu_671_p2);

assign p_Val2_33_fu_781_p2 = ($signed(tmp_80_fu_773_p1) + $signed(tmp_81_fu_777_p1));

assign p_Val2_36_fu_577_p2 = ($signed(tmp_137_cast_fu_573_p1) + $signed(p_Val2_5_reg_970));

assign p_Val2_37_fu_590_p4 = {{p_Val2_36_fu_577_p2[13:6]}};

assign p_Val2_38_fu_611_p2 = (p_Val2_37_fu_590_p4 + tmp_91_fu_600_p1);

assign p_Val2_40_mux_fu_753_p3 = ((brmerge_i_i_i_reg_1037[0:0] === 1'b1) ? 8'd127 : p_Val2_38_reg_992);

assign p_Val2_5_fu_551_p0 = weight_V_load_reg_960;

assign p_Val2_5_fu_551_p1 = shuffleunit0_2_outpu_1_reg_965;

assign p_Val2_5_fu_551_p2 = ($signed(p_Val2_5_fu_551_p0) * $signed(p_Val2_5_fu_551_p1));

assign p_Val2_s_50_fu_759_p3 = ((underflow_reg_1032[0:0] === 1'b1) ? 8'd128 : p_Val2_38_reg_992);

assign p_not_i_i_fu_694_p2 = (deleted_zeros_fu_664_p3 ^ 1'd1);

assign p_result_V_fu_840_p3 = ((underflow_6_fu_814_p2[0:0] === 1'b1) ? 8'd128 : result_V_reg_1054);

assign p_shl2_cast_fu_275_p1 = tmp_119_fu_267_p3;

assign p_shl3_cast1_fu_287_p1 = tmp_120_fu_279_p3;

assign p_shl3_cast_fu_291_p1 = tmp_120_fu_279_p3;

assign p_shl4_cast_fu_253_p1 = tmp_117_fu_245_p3;

assign p_shl5_cast_fu_350_p1 = tmp_125_fu_342_p3;

assign p_shl6_cast_fu_362_p1 = tmp_126_fu_354_p3;

assign p_shl7_cast_fu_449_p3 = {{tmp_132_fu_444_p2}, {4'd0}};

assign p_shl8_cast_fu_465_p1 = tmp_133_fu_457_p3;

assign p_shl_cast_fu_309_p1 = tmp_122_fu_301_p3;

assign result_V_fu_795_p2 = (p_Val2_s_reg_178 + bias_V_q0);

assign result_V_mux_fu_833_p3 = ((brmerge_i_i_fu_819_p2[0:0] === 1'b1) ? 8'd127 : result_V_reg_1054);

assign shuffleunit0_2_outpu_address0 = tmp_151_cast_fu_540_p1;

assign sum_V_fu_765_p3 = ((underflow_not_fu_748_p2[0:0] === 1'b1) ? p_Val2_40_mux_fu_753_p3 : p_Val2_s_50_fu_759_p3);

assign tmp2_cast_fu_431_p1 = $signed(tmp2_fu_425_p2);

assign tmp2_fu_425_p2 = (m_reg_190 ^ 2'd2);

assign tmp3_cast_fu_522_p1 = $signed(tmp3_fu_516_p2);

assign tmp3_fu_516_p2 = (n_reg_213 ^ 2'd2);

assign tmp4_demorgan_fu_721_p2 = (p_38_i_i_fu_689_p2 | brmerge40_demorgan_i_fu_716_p2);

assign tmp4_fu_727_p2 = (tmp4_demorgan_fu_721_p2 ^ 1'd1);

assign tmp5_fu_744_p2 = (brmerge40_demorgan_i_reg_1027 | tmp_95_reg_1022);

assign tmp_117_fu_245_p3 = {{co_reg_143}, {2'd0}};

assign tmp_118_fu_257_p2 = (p_shl4_cast_fu_253_p1 - tmp_cast_fu_241_p1);

assign tmp_119_fu_267_p3 = {{co_reg_143}, {3'd0}};

assign tmp_120_fu_279_p3 = {{co_reg_143}, {1'd0}};

assign tmp_121_fu_295_p2 = (p_shl3_cast_fu_291_p1 + p_shl2_cast_fu_275_p1);

assign tmp_122_fu_301_p3 = {{co_reg_143}, {4'd0}};

assign tmp_123_fu_313_p2 = (p_shl3_cast1_fu_287_p1 + p_shl_cast_fu_309_p1);

assign tmp_124_fu_337_p2 = (tmp_121_reg_873 + tmp_78_cast_fu_333_p1);

assign tmp_125_fu_342_p3 = {{tmp_124_fu_337_p2}, {3'd0}};

assign tmp_126_fu_354_p3 = {{tmp_124_fu_337_p2}, {1'd0}};

assign tmp_127_fu_366_p2 = (p_shl6_cast_fu_362_p1 + p_shl5_cast_fu_350_p1);

assign tmp_128_fu_479_p2 = (tmp_127_reg_896 + tmp_83_cast_fu_475_p1);

assign tmp_129_fu_408_p2 = ($signed(tmp_131_cast_reg_868) + $signed(tmp_84_cast_fu_404_p1));

assign tmp_130_fu_413_p2 = tmp_129_fu_408_p2 << 10'd2;

assign tmp_131_cast_fu_263_p1 = $signed(tmp_118_fu_257_p2);

assign tmp_131_fu_419_p2 = (tmp_130_fu_413_p2 - tmp_129_fu_408_p2);

assign tmp_132_fu_444_p2 = (tmp_123_reg_878 + tmp_86_cast_fu_440_p1);

assign tmp_133_fu_457_p3 = {{tmp_132_fu_444_p2}, {1'd0}};

assign tmp_134_fu_469_p2 = (p_shl8_cast_fu_465_p1 + p_shl7_cast_fu_449_p3);

assign tmp_135_fu_506_p2 = (tmp_87_cast_fu_502_p1 + tmp_131_reg_922);

assign tmp_136_fu_535_p2 = (tmp_89_cast_fu_531_p1 + tmp_134_reg_927);

assign tmp_137_cast_fu_573_p1 = $signed(tmp_90_fu_565_p3);

assign tmp_139_fu_603_p3 = p_Val2_36_fu_577_p2[32'd13];

assign tmp_141_fu_647_p3 = p_Val2_36_reg_980[32'd14];

assign tmp_142_cast_fu_856_p1 = tmp_128_reg_932;

assign tmp_150_cast_fu_511_p1 = tmp_135_fu_506_p2;

assign tmp_151_cast_fu_540_p1 = tmp_136_fu_535_p2;

assign tmp_78_cast_fu_333_p1 = h_reg_154;

assign tmp_79_fu_378_p3 = {{w_reg_166}, {1'd0}};

assign tmp_80_fu_773_p1 = $signed(p_Val2_s_reg_178);

assign tmp_81_fu_777_p1 = $signed(bias_V_q0);

assign tmp_82_fu_809_p2 = (newsignbit_6_reg_1060 ^ 1'd1);

assign tmp_83_cast_fu_475_p1 = w_reg_166;

assign tmp_84_cast_fu_404_p1 = m_reg_190;

assign tmp_85_fu_435_p2 = ($signed(tmp_s_reg_891) + $signed(tmp2_cast_fu_431_p1));

assign tmp_86_cast_fu_440_p1 = tmp_85_fu_435_p2;

assign tmp_87_cast_fu_502_p1 = n_reg_213;

assign tmp_88_fu_526_p2 = ($signed(tmp3_cast_fu_522_p1) + $signed(tmp_79_reg_904));

assign tmp_89_cast_fu_531_p1 = tmp_88_fu_526_p2;

assign tmp_90_fu_565_p3 = {{p_Val2_35_reg_201}, {6'd0}};

assign tmp_91_fu_600_p1 = tmp_138_reg_975;

assign tmp_92_fu_625_p2 = (newsignbit_fu_617_p3 ^ 1'd1);

assign tmp_94_fu_671_p2 = (tmp_141_fu_647_p3 ^ 1'd1);

assign tmp_95_fu_705_p2 = (signbit_reg_985 ^ 1'd1);

assign tmp_cast_fu_241_p1 = co_reg_143;

assign tmp_fu_236_p1 = co_reg_143;

assign tmp_s_fu_325_p3 = {{h_reg_154}, {1'd0}};

assign underflow_6_fu_814_p2 = (isneg_reg_1047 & tmp_82_fu_809_p2);

assign underflow_fu_733_p2 = (signbit_reg_985 & tmp4_fu_727_p2);

assign underflow_not_fu_748_p2 = (tmp5_fu_744_p2 | p_38_i_i_reg_1017);

assign w_5_fu_484_p2 = (w_reg_166 + 4'd1);

assign weight_V_address0 = tmp_150_cast_fu_511_p1;

always @ (posedge ap_clk) begin
    tmp_121_reg_873[0] <= 1'b0;
    tmp_123_reg_878[0] <= 1'b0;
    tmp_s_reg_891[0] <= 1'b0;
    tmp_127_reg_896[0] <= 1'b0;
    tmp_79_reg_904[0] <= 1'b0;
    tmp_134_reg_927[0] <= 1'b0;
end

endmodule //subconv_3x3_16_strid_1
