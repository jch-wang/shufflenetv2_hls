// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MUL_DP (
        ap_clk,
        ap_rst,
        a_V,
        b_V,
        w_V,
        ap_return_0,
        ap_return_1,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [7:0] a_V;
input  [7:0] b_V;
input  [7:0] w_V;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
input   ap_ce;

reg  signed [7:0] w_V_read_reg_127;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_flag00011001;
wire   [25:0] r_V_fu_68_p2;
reg  signed [25:0] r_V_reg_132;
reg   [0:0] tmp_1405_reg_147;
reg   [15:0] p_Result_s_reg_152;
wire   [15:0] loc_V_1_fu_104_p1;
reg   [15:0] loc_V_1_reg_157;
wire    ap_block_pp0_stage0_flag00000000;
wire   [24:0] p_Result_2_fu_52_p3;
wire  signed [25:0] rhs_V_fu_64_p1;
wire  signed [25:0] lhs_V_fu_60_p1;
wire   [32:0] grp_fu_80_p2;
wire   [15:0] tmp_289_fu_108_p1;
wire   [15:0] loc_V_fu_111_p2;
reg    grp_fu_80_ce;

ShuffleNetV2_mul_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 26 ),
    .dout_WIDTH( 33 ))
ShuffleNetV2_mul_dEe_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(w_V_read_reg_127),
    .din1(r_V_reg_132),
    .ce(grp_fu_80_ce),
    .dout(grp_fu_80_p2)
);

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_ce == 1'b1))) begin
        loc_V_1_reg_157 <= loc_V_1_fu_104_p1;
        p_Result_s_reg_152 <= {{grp_fu_80_p2[32:17]}};
        r_V_reg_132 <= r_V_fu_68_p2;
        tmp_1405_reg_147 <= grp_fu_80_p2[32'd15];
        w_V_read_reg_127 <= w_V;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        grp_fu_80_ce = 1'b1;
    end else begin
        grp_fu_80_ce = 1'b0;
    end
end

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_return_0 = loc_V_fu_111_p2;

assign ap_return_1 = loc_V_1_reg_157;

assign lhs_V_fu_60_p1 = $signed(p_Result_2_fu_52_p3);

assign loc_V_1_fu_104_p1 = grp_fu_80_p2[15:0];

assign loc_V_fu_111_p2 = (tmp_289_fu_108_p1 + p_Result_s_reg_152);

assign p_Result_2_fu_52_p3 = {{a_V}, {17'd0}};

assign r_V_fu_68_p2 = ($signed(rhs_V_fu_64_p1) + $signed(lhs_V_fu_60_p1));

assign rhs_V_fu_64_p1 = $signed(b_V);

assign tmp_289_fu_108_p1 = tmp_1405_reg_147;

endmodule //MUL_DP
