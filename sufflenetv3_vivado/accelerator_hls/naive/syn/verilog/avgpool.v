// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module avgpool (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        conv_last_output_address0,
        conv_last_output_ce0,
        conv_last_output_q0
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;
output  [12:0] conv_last_output_address0;
output   conv_last_output_ce0;
input  [31:0] conv_last_output_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ce0;
reg output_r_we0;
reg conv_last_output_ce0;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] co_24_fu_132_p2;
reg   [9:0] co_24_reg_212;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_fu_138_p1;
reg   [63:0] tmp_reg_217;
wire   [0:0] exitcond2_fu_126_p2;
wire   [12:0] tmp_364_cast_fu_150_p1;
reg   [12:0] tmp_364_cast_reg_222;
wire   [2:0] h_24_fu_160_p2;
reg   [2:0] h_24_reg_230;
wire    ap_CS_fsm_state3;
wire   [14:0] tmp_367_cast_fu_175_p3;
reg   [14:0] tmp_367_cast_reg_235;
wire   [0:0] exitcond1_fu_154_p2;
wire   [2:0] w_24_fu_189_p2;
reg   [2:0] w_24_reg_243;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_183_p2;
reg   [31:0] conv_last_output_loa_reg_253;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_fu_115_p2;
wire    ap_CS_fsm_state10;
wire   [31:0] grp_fu_120_p2;
reg   [31:0] tmp_s_reg_263;
wire    ap_CS_fsm_state13;
reg   [9:0] co_reg_58;
wire    ap_CS_fsm_state14;
reg   [31:0] sum_reg_69;
reg   [2:0] h_reg_81;
reg   [31:0] sum_1_reg_92;
reg   [2:0] w_reg_104;
wire   [63:0] tmp_368_cast_fu_204_p1;
wire    ap_CS_fsm_state6;
wire   [11:0] tmp_207_fu_142_p3;
wire   [12:0] tmp_123_cast_fu_166_p1;
wire   [12:0] tmp_208_fu_170_p2;
wire   [14:0] tmp_124_cast_fu_195_p1;
wire   [14:0] tmp_209_fu_199_p2;
reg   [13:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
end

ShuffleNetV2_faddbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_faddbkb_x_U114(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_1_reg_92),
    .din1(conv_last_output_loa_reg_253),
    .ce(1'b1),
    .dout(grp_fu_115_p2)
);

ShuffleNetV2_fmulcud #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
ShuffleNetV2_fmulcud_x_U115(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(sum_reg_69),
    .din1(32'd1031798784),
    .ce(1'b1),
    .dout(grp_fu_120_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        co_reg_58 <= co_24_reg_212;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_58 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_183_p2 == 1'd1))) begin
        h_reg_81 <= h_24_reg_230;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_126_p2 == 1'd0))) begin
        h_reg_81 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond1_fu_154_p2))) begin
        sum_1_reg_92 <= sum_reg_69;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sum_1_reg_92 <= grp_fu_115_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_183_p2 == 1'd1))) begin
        sum_reg_69 <= sum_1_reg_92;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_126_p2 == 1'd0))) begin
        sum_reg_69 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond1_fu_154_p2))) begin
        w_reg_104 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        w_reg_104 <= w_24_reg_243;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_24_reg_212 <= co_24_fu_132_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        conv_last_output_loa_reg_253 <= conv_last_output_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_24_reg_230 <= h_24_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_126_p2 == 1'd0))) begin
        tmp_364_cast_reg_222[11 : 2] <= tmp_364_cast_fu_150_p1[11 : 2];
        tmp_reg_217[9 : 0] <= tmp_fu_138_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond1_fu_154_p2))) begin
        tmp_367_cast_reg_235[14 : 2] <= tmp_367_cast_fu_175_p3[14 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmp_s_reg_263 <= grp_fu_120_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_24_reg_243 <= w_24_fu_189_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_126_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_126_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        conv_last_output_ce0 = 1'b1;
    end else begin
        conv_last_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_126_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond1_fu_154_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_183_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
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
            ap_NS_fsm = ap_ST_fsm_state4;
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
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign co_24_fu_132_p2 = (co_reg_58 + 10'd1);

assign conv_last_output_address0 = tmp_368_cast_fu_204_p1;

assign exitcond1_fu_154_p2 = ((h_reg_81 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond2_fu_126_p2 = ((co_reg_58 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond_fu_183_p2 = ((w_reg_104 == 3'd4) ? 1'b1 : 1'b0);

assign h_24_fu_160_p2 = (h_reg_81 + 3'd1);

assign output_r_address0 = tmp_reg_217;

assign output_r_d0 = tmp_s_reg_263;

assign tmp_123_cast_fu_166_p1 = h_reg_81;

assign tmp_124_cast_fu_195_p1 = w_reg_104;

assign tmp_207_fu_142_p3 = {{co_reg_58}, {2'd0}};

assign tmp_208_fu_170_p2 = (tmp_123_cast_fu_166_p1 + tmp_364_cast_reg_222);

assign tmp_209_fu_199_p2 = (tmp_367_cast_reg_235 + tmp_124_cast_fu_195_p1);

assign tmp_364_cast_fu_150_p1 = tmp_207_fu_142_p3;

assign tmp_367_cast_fu_175_p3 = {{tmp_208_fu_170_p2}, {2'd0}};

assign tmp_368_cast_fu_204_p1 = tmp_209_fu_199_p2;

assign tmp_fu_138_p1 = co_reg_58;

assign w_24_fu_189_p2 = (w_reg_104 + 3'd1);

always @ (posedge ap_clk) begin
    tmp_reg_217[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    tmp_364_cast_reg_222[1:0] <= 2'b00;
    tmp_364_cast_reg_222[12] <= 1'b0;
    tmp_367_cast_reg_235[1:0] <= 2'b00;
end

endmodule //avgpool
