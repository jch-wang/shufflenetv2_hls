// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module shuffle_24_l_p (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0,
        buffer1_1_24_16x16_p_7_address0,
        buffer1_1_24_16x16_p_7_ce0,
        buffer1_1_24_16x16_p_7_q0,
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
        buffer1_1_24_16x16_p_q0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [7:0] output_V_d0;
output  [9:0] buffer1_1_24_16x16_p_7_address0;
output   buffer1_1_24_16x16_p_7_ce0;
input  [7:0] buffer1_1_24_16x16_p_7_q0;
output  [9:0] buffer1_1_24_16x16_p_6_address0;
output   buffer1_1_24_16x16_p_6_ce0;
input  [7:0] buffer1_1_24_16x16_p_6_q0;
output  [9:0] buffer1_1_24_16x16_p_5_address0;
output   buffer1_1_24_16x16_p_5_ce0;
input  [7:0] buffer1_1_24_16x16_p_5_q0;
output  [9:0] buffer1_1_24_16x16_p_4_address0;
output   buffer1_1_24_16x16_p_4_ce0;
input  [7:0] buffer1_1_24_16x16_p_4_q0;
output  [9:0] buffer1_1_24_16x16_p_3_address0;
output   buffer1_1_24_16x16_p_3_ce0;
input  [7:0] buffer1_1_24_16x16_p_3_q0;
output  [9:0] buffer1_1_24_16x16_p_2_address0;
output   buffer1_1_24_16x16_p_2_ce0;
input  [7:0] buffer1_1_24_16x16_p_2_q0;
output  [9:0] buffer1_1_24_16x16_p_1_address0;
output   buffer1_1_24_16x16_p_1_ce0;
input  [7:0] buffer1_1_24_16x16_p_1_q0;
output  [9:0] buffer1_1_24_16x16_p_address0;
output   buffer1_1_24_16x16_p_ce0;
input  [7:0] buffer1_1_24_16x16_p_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_V_ce0;
reg output_V_we0;
reg buffer1_1_24_16x16_p_7_ce0;
reg buffer1_1_24_16x16_p_6_ce0;
reg buffer1_1_24_16x16_p_5_ce0;
reg buffer1_1_24_16x16_p_4_ce0;
reg buffer1_1_24_16x16_p_3_ce0;
reg buffer1_1_24_16x16_p_2_ce0;
reg buffer1_1_24_16x16_p_1_ce0;
reg buffer1_1_24_16x16_p_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_558_fu_213_p1;
reg   [0:0] tmp_558_reg_458;
wire    ap_CS_fsm_state2;
wire   [5:0] co_31_fu_223_p2;
reg   [5:0] co_31_reg_465;
wire   [10:0] tmp_474_fu_253_p2;
reg   [10:0] tmp_474_reg_470;
wire   [0:0] exitcond3_fu_217_p2;
reg   [2:0] arrayNo_reg_475;
wire   [6:0] tmp_478_fu_303_p2;
reg   [6:0] tmp_478_reg_480;
wire   [4:0] h_28_fu_315_p2;
reg   [4:0] h_28_reg_488;
wire    ap_CS_fsm_state3;
wire   [14:0] tmp_480_fu_354_p2;
reg   [14:0] tmp_480_reg_493;
wire   [0:0] exitcond2_fu_309_p2;
wire   [10:0] tmp_482_fu_385_p2;
reg   [10:0] tmp_482_reg_498;
wire   [4:0] w_33_fu_397_p2;
reg   [4:0] w_33_reg_506;
wire    ap_CS_fsm_state4;
wire   [14:0] tmp_483_fu_411_p2;
reg   [14:0] tmp_483_reg_511;
wire   [0:0] exitcond_fu_391_p2;
wire   [7:0] tmp_fu_433_p10;
reg   [7:0] tmp_reg_556;
wire    ap_CS_fsm_state5;
reg   [5:0] co_reg_180;
reg   [4:0] h_reg_191;
reg   [4:0] w_reg_202;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_609_cast_fu_421_p1;
wire   [63:0] tmp_608_cast_fu_454_p1;
wire   [9:0] tmp_s_fu_229_p3;
wire   [6:0] tmp_473_fu_241_p3;
wire   [10:0] p_shl3_cast_fu_249_p1;
wire   [10:0] p_shl2_cast_fu_237_p1;
wire   [1:0] tmp_475_fu_269_p4;
wire   [5:0] tmp_476_fu_279_p3;
wire   [2:0] tmp_477_fu_291_p3;
wire   [6:0] p_shl1_cast_fu_299_p1;
wire   [6:0] p_shl_cast_fu_287_p1;
wire   [10:0] tmp_cast_fu_325_p1;
wire   [10:0] tmp_479_fu_329_p2;
wire   [11:0] tmp_559_fu_342_p3;
wire   [14:0] p_shl6_cast_fu_334_p3;
wire   [14:0] p_shl7_cast_fu_350_p1;
wire   [6:0] tmp_cast9_fu_321_p1;
wire   [6:0] tmp_481_fu_360_p2;
wire   [7:0] tmp_560_fu_373_p3;
wire   [10:0] p_shl4_cast_fu_365_p3;
wire   [10:0] p_shl5_cast_fu_381_p1;
wire   [14:0] tmp_221_cast_fu_407_p1;
wire   [10:0] tmp_221_cast8_fu_403_p1;
wire   [10:0] tmp_484_fu_416_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
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
ShuffleNetV2_mux_jbC_x_U74(
    .din1(buffer1_1_24_16x16_p_7_q0),
    .din2(buffer1_1_24_16x16_p_6_q0),
    .din3(buffer1_1_24_16x16_p_5_q0),
    .din4(buffer1_1_24_16x16_p_4_q0),
    .din5(buffer1_1_24_16x16_p_3_q0),
    .din6(buffer1_1_24_16x16_p_2_q0),
    .din7(buffer1_1_24_16x16_p_1_q0),
    .din8(buffer1_1_24_16x16_p_q0),
    .din9(arrayNo_reg_475),
    .dout(tmp_fu_433_p10)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_309_p2 == 1'd1))) begin
        co_reg_180 <= co_31_reg_465;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_180 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_391_p2 == 1'd1))) begin
        h_reg_191 <= h_28_reg_488;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_217_p2 == 1'd0))) begin
        h_reg_191 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_309_p2))) begin
        w_reg_202 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        w_reg_202 <= w_33_reg_506;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_217_p2 == 1'd0))) begin
        arrayNo_reg_475 <= {{co_reg_180[3:1]}};
        tmp_474_reg_470[10 : 1] <= tmp_474_fu_253_p2[10 : 1];
        tmp_478_reg_480[6 : 1] <= tmp_478_fu_303_p2[6 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_31_reg_465 <= co_31_fu_223_p2;
        tmp_558_reg_458 <= tmp_558_fu_213_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_28_reg_488 <= h_28_fu_315_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_309_p2))) begin
        tmp_480_reg_493[14 : 1] <= tmp_480_fu_354_p2[14 : 1];
        tmp_482_reg_498[10 : 1] <= tmp_482_fu_385_p2[10 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_391_p2) & (tmp_558_reg_458 == 1'd0))) begin
        tmp_483_reg_511 <= tmp_483_fu_411_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_reg_556 <= tmp_fu_433_p10;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_33_reg_506 <= w_33_fu_397_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_217_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_217_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_1_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_2_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_3_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_4_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_5_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_6_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_7_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_24_16x16_p_ce0 = 1'b1;
    end else begin
        buffer1_1_24_16x16_p_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_558_reg_458 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_217_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_309_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_391_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_391_p2) & (tmp_558_reg_458 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign buffer1_1_24_16x16_p_1_address0 = tmp_609_cast_fu_421_p1;

assign buffer1_1_24_16x16_p_2_address0 = tmp_609_cast_fu_421_p1;

assign buffer1_1_24_16x16_p_3_address0 = tmp_609_cast_fu_421_p1;

assign buffer1_1_24_16x16_p_4_address0 = tmp_609_cast_fu_421_p1;

assign buffer1_1_24_16x16_p_5_address0 = tmp_609_cast_fu_421_p1;

assign buffer1_1_24_16x16_p_6_address0 = tmp_609_cast_fu_421_p1;

assign buffer1_1_24_16x16_p_7_address0 = tmp_609_cast_fu_421_p1;

assign buffer1_1_24_16x16_p_address0 = tmp_609_cast_fu_421_p1;

assign co_31_fu_223_p2 = (6'd1 + co_reg_180);

assign exitcond2_fu_309_p2 = ((h_reg_191 == 5'd18) ? 1'b1 : 1'b0);

assign exitcond3_fu_217_p2 = ((co_reg_180 == 6'd48) ? 1'b1 : 1'b0);

assign exitcond_fu_391_p2 = ((w_reg_202 == 5'd18) ? 1'b1 : 1'b0);

assign h_28_fu_315_p2 = (h_reg_191 + 5'd1);

assign output_V_address0 = tmp_608_cast_fu_454_p1;

assign output_V_d0 = tmp_reg_556;

assign p_shl1_cast_fu_299_p1 = tmp_477_fu_291_p3;

assign p_shl2_cast_fu_237_p1 = tmp_s_fu_229_p3;

assign p_shl3_cast_fu_249_p1 = tmp_473_fu_241_p3;

assign p_shl4_cast_fu_365_p3 = {{tmp_481_fu_360_p2}, {4'd0}};

assign p_shl5_cast_fu_381_p1 = tmp_560_fu_373_p3;

assign p_shl6_cast_fu_334_p3 = {{tmp_479_fu_329_p2}, {4'd0}};

assign p_shl7_cast_fu_350_p1 = tmp_559_fu_342_p3;

assign p_shl_cast_fu_287_p1 = tmp_476_fu_279_p3;

assign tmp_221_cast8_fu_403_p1 = w_reg_202;

assign tmp_221_cast_fu_407_p1 = w_reg_202;

assign tmp_473_fu_241_p3 = {{co_reg_180}, {1'd0}};

assign tmp_474_fu_253_p2 = (p_shl3_cast_fu_249_p1 + p_shl2_cast_fu_237_p1);

assign tmp_475_fu_269_p4 = {{co_reg_180[5:4]}};

assign tmp_476_fu_279_p3 = {{tmp_475_fu_269_p4}, {4'd0}};

assign tmp_477_fu_291_p3 = {{tmp_475_fu_269_p4}, {1'd0}};

assign tmp_478_fu_303_p2 = (p_shl1_cast_fu_299_p1 + p_shl_cast_fu_287_p1);

assign tmp_479_fu_329_p2 = (tmp_cast_fu_325_p1 + tmp_474_reg_470);

assign tmp_480_fu_354_p2 = (p_shl6_cast_fu_334_p3 + p_shl7_cast_fu_350_p1);

assign tmp_481_fu_360_p2 = (tmp_cast9_fu_321_p1 + tmp_478_reg_480);

assign tmp_482_fu_385_p2 = (p_shl4_cast_fu_365_p3 + p_shl5_cast_fu_381_p1);

assign tmp_483_fu_411_p2 = (tmp_480_reg_493 + tmp_221_cast_fu_407_p1);

assign tmp_484_fu_416_p2 = (tmp_482_reg_498 + tmp_221_cast8_fu_403_p1);

assign tmp_558_fu_213_p1 = co_reg_180[0:0];

assign tmp_559_fu_342_p3 = {{tmp_479_fu_329_p2}, {1'd0}};

assign tmp_560_fu_373_p3 = {{tmp_481_fu_360_p2}, {1'd0}};

assign tmp_608_cast_fu_454_p1 = tmp_483_reg_511;

assign tmp_609_cast_fu_421_p1 = tmp_484_fu_416_p2;

assign tmp_cast9_fu_321_p1 = h_reg_191;

assign tmp_cast_fu_325_p1 = h_reg_191;

assign tmp_s_fu_229_p3 = {{co_reg_180}, {4'd0}};

assign w_33_fu_397_p2 = (w_reg_202 + 5'd1);

always @ (posedge ap_clk) begin
    tmp_474_reg_470[0] <= 1'b0;
    tmp_478_reg_480[0] <= 1'b0;
    tmp_480_reg_493[0] <= 1'b0;
    tmp_482_reg_498[0] <= 1'b0;
end

endmodule //shuffle_24_l_p
