// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module subconv_1x1_8 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        weight_address0,
        weight_ce0,
        weight_q0,
        bias_address0,
        bias_ce0,
        bias_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [11:0] weight_address0;
output   weight_ce0;
input  [31:0] weight_q0;
output  [5:0] bias_address0;
output   bias_ce0;
input  [31:0] bias_q0;
output  [11:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg weight_ce0;
reg bias_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] co_8_fu_172_p2;
reg   [5:0] co_8_reg_392;
wire    ap_CS_fsm_state2;
wire   [12:0] tmp_99_fu_207_p2;
reg   [12:0] tmp_99_reg_397;
wire   [0:0] exitcond3_fu_166_p2;
wire   [9:0] tmp_142_cast_fu_221_p1;
reg   [9:0] tmp_142_cast_reg_402;
reg   [5:0] bias_addr_reg_407;
wire   [3:0] h_8_fu_231_p2;
reg   [3:0] h_8_reg_415;
wire    ap_CS_fsm_state3;
wire   [9:0] tmp_cast_fu_237_p1;
reg   [9:0] tmp_cast_reg_420;
wire   [0:0] exitcond2_fu_225_p2;
wire   [12:0] tmp_145_cast_fu_246_p3;
reg   [12:0] tmp_145_cast_reg_425;
wire   [3:0] w_8_fu_260_p2;
reg   [3:0] w_8_reg_433;
wire    ap_CS_fsm_state4;
wire   [12:0] tmp_82_cast_fu_266_p1;
reg   [12:0] tmp_82_cast_reg_438;
wire   [0:0] exitcond1_fu_254_p2;
reg   [11:0] output_addr_reg_443;
wire   [5:0] ci_2_fu_286_p2;
reg   [5:0] ci_2_reg_451;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond_fu_280_p2;
reg   [31:0] weight_load_reg_466;
wire    ap_CS_fsm_state6;
reg   [31:0] input_load_reg_471;
wire   [31:0] grp_fu_157_p2;
reg   [31:0] tmp_84_reg_476;
wire    ap_CS_fsm_state10;
wire   [31:0] grp_fu_152_p2;
wire    ap_CS_fsm_state15;
reg   [31:0] bias_load_reg_486;
wire    ap_CS_fsm_state16;
reg   [31:0] result_reg_491;
wire    ap_CS_fsm_state21;
wire   [0:0] tmp_9_fu_161_p2;
reg   [0:0] tmp_9_reg_498;
wire    ap_CS_fsm_state22;
reg   [5:0] co_reg_96;
reg   [3:0] h_reg_107;
reg   [3:0] w_reg_118;
wire    ap_CS_fsm_state23;
reg   [31:0] sum_reg_129;
reg   [5:0] ci_reg_141;
wire   [63:0] tmp_fu_178_p1;
wire   [63:0] tmp_146_cast_fu_275_p1;
wire   [63:0] tmp_152_cast_fu_326_p1;
wire  signed [63:0] tmp_153_cast_fu_336_p1;
reg   [31:0] grp_fu_152_p1;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state7;
wire   [11:0] tmp_s_fu_183_p3;
wire   [9:0] tmp_98_fu_195_p3;
wire   [12:0] p_shl_cast_fu_191_p1;
wire   [12:0] p_shl1_cast_fu_203_p1;
wire   [8:0] tmp_100_fu_213_p3;
wire   [9:0] tmp_101_fu_241_p2;
wire   [12:0] tmp_102_fu_270_p2;
wire   [8:0] tmp_103_fu_296_p3;
wire   [9:0] tmp_148_cast_fu_304_p1;
wire   [9:0] tmp_104_fu_308_p2;
wire   [12:0] tmp_151_cast_fu_313_p3;
wire   [12:0] tmp_105_fu_321_p2;
wire   [12:0] tmp_83_cast_fu_292_p1;
wire   [12:0] tmp_106_fu_331_p2;
wire   [31:0] result_to_int_fu_341_p1;
wire   [7:0] tmp_6_fu_344_p4;
wire   [22:0] tmp_89_fu_354_p1;
wire   [0:0] notrhs_fu_364_p2;
wire   [0:0] notlhs_fu_358_p2;
wire   [0:0] tmp_8_fu_370_p2;
wire   [0:0] tmp_10_fu_376_p2;
reg   [22:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'd1;
end

ShuffleNetV2_faddbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_faddbkb_x_U54(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_reg_129),
    .din1(grp_fu_152_p1),
    .ce(1'b1),
    .dout(grp_fu_152_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U55(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(weight_load_reg_466),
    .din1(input_load_reg_471),
    .ce(1'b1),
    .dout(grp_fu_157_p2)
);

ShuffleNetV2_fcmpdEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
ShuffleNetV2_fcmpdEe_x_U56(
    .din0(result_reg_491),
    .din1(32'd0),
    .opcode(5'd2),
    .dout(tmp_9_fu_161_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_254_p2))) begin
        ci_reg_141 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        ci_reg_141 <= ci_2_reg_451;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_225_p2 == 1'd1))) begin
        co_reg_96 <= co_8_reg_392;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_96 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_254_p2 == 1'd1))) begin
        h_reg_107 <= h_8_reg_415;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_166_p2 == 1'd0))) begin
        h_reg_107 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_254_p2))) begin
        sum_reg_129 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sum_reg_129 <= grp_fu_152_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_225_p2))) begin
        w_reg_118 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        w_reg_118 <= w_8_reg_433;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_166_p2 == 1'd0))) begin
        bias_addr_reg_407 <= tmp_fu_178_p1;
        tmp_142_cast_reg_402[8 : 3] <= tmp_142_cast_fu_221_p1[8 : 3];
        tmp_99_reg_397[12 : 4] <= tmp_99_fu_207_p2[12 : 4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        bias_load_reg_486 <= bias_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ci_2_reg_451 <= ci_2_fu_286_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_8_reg_392 <= co_8_fu_172_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_8_reg_415 <= h_8_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_load_reg_471 <= input_r_q0;
        weight_load_reg_466 <= weight_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond1_fu_254_p2))) begin
        output_addr_reg_443 <= tmp_146_cast_fu_275_p1;
        tmp_82_cast_reg_438[3 : 0] <= tmp_82_cast_fu_266_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        result_reg_491 <= grp_fu_152_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_225_p2))) begin
        tmp_145_cast_reg_425[12 : 3] <= tmp_145_cast_fu_246_p3[12 : 3];
        tmp_cast_reg_420[3 : 0] <= tmp_cast_fu_237_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_84_reg_476 <= grp_fu_157_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_9_reg_498 <= tmp_9_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_8_reg_433 <= w_8_fu_260_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_166_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_166_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        bias_ce0 = 1'b1;
    end else begin
        bias_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_152_p1 = bias_load_reg_486;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_152_p1 = tmp_84_reg_476;
    end else begin
        grp_fu_152_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        weight_ce0 = 1'b1;
    end else begin
        weight_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_166_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_225_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond1_fu_254_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (exitcond_fu_280_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
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
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
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

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign bias_address0 = bias_addr_reg_407;

assign ci_2_fu_286_p2 = (ci_reg_141 + 6'd1);

assign co_8_fu_172_p2 = (co_reg_96 + 6'd1);

assign exitcond1_fu_254_p2 = ((w_reg_118 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond2_fu_225_p2 = ((h_reg_107 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond3_fu_166_p2 = ((co_reg_96 == 6'd48) ? 1'b1 : 1'b0);

assign exitcond_fu_280_p2 = ((ci_reg_141 == 6'd48) ? 1'b1 : 1'b0);

assign h_8_fu_231_p2 = (h_reg_107 + 4'd1);

assign input_r_address0 = tmp_152_cast_fu_326_p1;

assign notlhs_fu_358_p2 = ((tmp_6_fu_344_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs_fu_364_p2 = ((tmp_89_fu_354_p1 == 23'd0) ? 1'b1 : 1'b0);

assign output_r_address0 = output_addr_reg_443;

assign output_r_d0 = ((tmp_10_fu_376_p2[0:0] === 1'b1) ? result_reg_491 : 32'd0);

assign p_shl1_cast_fu_203_p1 = tmp_98_fu_195_p3;

assign p_shl_cast_fu_191_p1 = tmp_s_fu_183_p3;

assign result_to_int_fu_341_p1 = result_reg_491;

assign tmp_100_fu_213_p3 = {{co_reg_96}, {3'd0}};

assign tmp_101_fu_241_p2 = (tmp_cast_fu_237_p1 + tmp_142_cast_reg_402);

assign tmp_102_fu_270_p2 = (tmp_145_cast_reg_425 + tmp_82_cast_fu_266_p1);

assign tmp_103_fu_296_p3 = {{ci_reg_141}, {3'd0}};

assign tmp_104_fu_308_p2 = (tmp_cast_reg_420 + tmp_148_cast_fu_304_p1);

assign tmp_105_fu_321_p2 = (tmp_82_cast_reg_438 + tmp_151_cast_fu_313_p3);

assign tmp_106_fu_331_p2 = (tmp_83_cast_fu_292_p1 + tmp_99_reg_397);

assign tmp_10_fu_376_p2 = (tmp_8_fu_370_p2 & tmp_9_reg_498);

assign tmp_142_cast_fu_221_p1 = tmp_100_fu_213_p3;

assign tmp_145_cast_fu_246_p3 = {{tmp_101_fu_241_p2}, {3'd0}};

assign tmp_146_cast_fu_275_p1 = tmp_102_fu_270_p2;

assign tmp_148_cast_fu_304_p1 = tmp_103_fu_296_p3;

assign tmp_151_cast_fu_313_p3 = {{tmp_104_fu_308_p2}, {3'd0}};

assign tmp_152_cast_fu_326_p1 = tmp_105_fu_321_p2;

assign tmp_153_cast_fu_336_p1 = $signed(tmp_106_fu_331_p2);

assign tmp_6_fu_344_p4 = {{result_to_int_fu_341_p1[30:23]}};

assign tmp_82_cast_fu_266_p1 = w_reg_118;

assign tmp_83_cast_fu_292_p1 = ci_reg_141;

assign tmp_89_fu_354_p1 = result_to_int_fu_341_p1[22:0];

assign tmp_8_fu_370_p2 = (notrhs_fu_364_p2 | notlhs_fu_358_p2);

assign tmp_98_fu_195_p3 = {{co_reg_96}, {4'd0}};

assign tmp_99_fu_207_p2 = (p_shl_cast_fu_191_p1 - p_shl1_cast_fu_203_p1);

assign tmp_cast_fu_237_p1 = h_reg_107;

assign tmp_fu_178_p1 = co_reg_96;

assign tmp_s_fu_183_p3 = {{co_reg_96}, {6'd0}};

assign w_8_fu_260_p2 = (w_reg_118 + 4'd1);

assign weight_address0 = tmp_153_cast_fu_336_p1;

always @ (posedge ap_clk) begin
    tmp_99_reg_397[3:0] <= 4'b0000;
    tmp_142_cast_reg_402[2:0] <= 3'b000;
    tmp_142_cast_reg_402[9] <= 1'b0;
    tmp_cast_reg_420[9:4] <= 6'b000000;
    tmp_145_cast_reg_425[2:0] <= 3'b000;
    tmp_82_cast_reg_438[12:4] <= 9'b000000000;
end

endmodule //subconv_1x1_8
