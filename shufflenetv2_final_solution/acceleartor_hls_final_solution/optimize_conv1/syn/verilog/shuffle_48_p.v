// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module shuffle_48_p (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        left_V_address0,
        left_V_ce0,
        left_V_q0,
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

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] left_V_address0;
output   left_V_ce0;
input  [7:0] left_V_q0;
output  [13:0] output_V_address0;
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
reg left_V_ce0;
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

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_523_fu_240_p1;
reg   [0:0] tmp_523_reg_587;
wire    ap_CS_fsm_state2;
wire   [6:0] co_27_fu_250_p2;
reg   [6:0] co_27_reg_594;
wire   [10:0] tmp_412_fu_280_p2;
reg   [10:0] tmp_412_reg_599;
wire   [0:0] exitcond5_fu_244_p2;
wire   [9:0] tmp_416_fu_320_p2;
reg   [9:0] tmp_416_reg_604;
reg   [2:0] arrayNo_reg_609;
wire   [6:0] tmp_420_fu_370_p2;
reg   [6:0] tmp_420_reg_614;
wire   [3:0] h_24_fu_382_p2;
reg   [3:0] h_24_reg_622;
wire    ap_CS_fsm_state3;
wire   [13:0] tmp_422_fu_429_p2;
reg   [13:0] tmp_422_reg_627;
wire   [0:0] exitcond4_fu_376_p2;
wire   [14:0] tmp_424_fu_464_p2;
reg   [14:0] tmp_424_reg_632;
wire   [10:0] tmp_426_fu_499_p2;
reg   [10:0] tmp_426_reg_637;
wire   [3:0] w_29_fu_511_p2;
reg   [3:0] w_29_reg_645;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_505_p2;
reg   [13:0] output_V_addr_reg_655;
wire    ap_CS_fsm_state5;
wire   [7:0] tmp_fu_566_p10;
wire    ap_CS_fsm_state6;
reg   [6:0] co_reg_197;
reg   [3:0] h_reg_208;
reg   [3:0] w_reg_219;
wire    ap_CS_fsm_state7;
reg   [7:0] storemerge_reg_230;
wire   [63:0] tmp_525_cast_fu_534_p1;
wire   [63:0] tmp_526_cast_fu_544_p1;
wire   [63:0] tmp_527_cast_fu_554_p1;
wire   [9:0] tmp_s_fu_256_p3;
wire   [7:0] tmp_411_fu_268_p3;
wire   [10:0] p_shl5_cast_fu_276_p1;
wire   [10:0] p_shl4_cast_fu_264_p1;
wire   [5:0] tmp_413_fu_286_p4;
wire   [8:0] tmp_414_fu_296_p3;
wire   [6:0] tmp_415_fu_308_p3;
wire   [9:0] p_shl3_cast_fu_316_p1;
wire   [9:0] p_shl2_cast_fu_304_p1;
wire   [2:0] tmp_417_fu_336_p4;
wire   [5:0] tmp_418_fu_346_p3;
wire   [3:0] tmp_419_fu_358_p3;
wire   [6:0] p_shl1_cast_fu_366_p1;
wire   [6:0] p_shl_cast_fu_354_p1;
wire   [9:0] tmp_cast_fu_396_p1;
wire   [9:0] tmp_421_fu_400_p2;
wire   [12:0] tmp_528_fu_405_p3;
wire   [10:0] tmp_529_fu_417_p3;
wire   [13:0] p_shl10_cast_fu_413_p1;
wire   [13:0] p_shl11_cast_fu_425_p1;
wire   [10:0] tmp_cast7_fu_392_p1;
wire   [10:0] tmp_423_fu_435_p2;
wire   [13:0] tmp_530_fu_440_p3;
wire   [11:0] tmp_531_fu_452_p3;
wire   [14:0] p_shl8_cast_fu_448_p1;
wire   [14:0] p_shl9_cast_fu_460_p1;
wire   [6:0] tmp_cast6_fu_388_p1;
wire   [6:0] tmp_425_fu_470_p2;
wire   [9:0] tmp_532_fu_475_p3;
wire   [7:0] tmp_533_fu_487_p3;
wire   [10:0] p_shl6_cast_fu_483_p1;
wire   [10:0] p_shl7_cast_fu_495_p1;
wire   [13:0] tmp_217_cast_fu_525_p1;
wire   [13:0] tmp_427_fu_529_p2;
wire   [14:0] tmp_217_cast2_fu_521_p1;
wire   [14:0] tmp_428_fu_539_p2;
wire   [10:0] tmp_217_cast1_fu_517_p1;
wire   [10:0] tmp_429_fu_549_p2;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
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
ShuffleNetV2_mux_jbC_x_U203(
    .din1(buffer1_1_48_8x8_p_V_8_q0),
    .din2(buffer1_1_48_8x8_p_V_1_q0),
    .din3(buffer1_1_48_8x8_p_V_2_q0),
    .din4(buffer1_1_48_8x8_p_V_3_q0),
    .din5(buffer1_1_48_8x8_p_V_4_q0),
    .din6(buffer1_1_48_8x8_p_V_5_q0),
    .din7(buffer1_1_48_8x8_p_V_6_q0),
    .din8(buffer1_1_48_8x8_p_V_7_q0),
    .din9(arrayNo_reg_609),
    .dout(tmp_fu_566_p10)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond4_fu_376_p2 == 1'd1))) begin
        co_reg_197 <= co_27_reg_594;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_197 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_505_p2 == 1'd1))) begin
        h_reg_208 <= h_24_reg_622;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_244_p2 == 1'd0))) begin
        h_reg_208 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        storemerge_reg_230 <= tmp_fu_566_p10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        storemerge_reg_230 <= left_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond4_fu_376_p2))) begin
        w_reg_219 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        w_reg_219 <= w_29_reg_645;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_244_p2 == 1'd0))) begin
        arrayNo_reg_609 <= {{co_reg_197[3:1]}};
        tmp_412_reg_599[10 : 1] <= tmp_412_fu_280_p2[10 : 1];
        tmp_416_reg_604[9 : 1] <= tmp_416_fu_320_p2[9 : 1];
        tmp_420_reg_614[6 : 1] <= tmp_420_fu_370_p2[6 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_27_reg_594 <= co_27_fu_250_p2;
        tmp_523_reg_587 <= tmp_523_fu_240_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_24_reg_622 <= h_24_fu_382_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_505_p2))) begin
        output_V_addr_reg_655 <= tmp_526_cast_fu_544_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond4_fu_376_p2))) begin
        tmp_422_reg_627[13 : 1] <= tmp_422_fu_429_p2[13 : 1];
        tmp_424_reg_632[14 : 1] <= tmp_424_fu_464_p2[14 : 1];
        tmp_426_reg_637[10 : 1] <= tmp_426_fu_499_p2[10 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_29_reg_645 <= w_29_fu_511_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_244_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_244_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_1_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_2_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_3_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_4_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_5_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_6_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_7_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_48_8x8_p_V_8_ce0 = 1'b1;
    end else begin
        buffer1_1_48_8x8_p_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        left_V_ce0 = 1'b1;
    end else begin
        left_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond5_fu_244_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond4_fu_376_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_505_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_505_p2) & (tmp_523_reg_587 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
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

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign buffer1_1_48_8x8_p_V_1_address0 = tmp_527_cast_fu_554_p1;

assign buffer1_1_48_8x8_p_V_2_address0 = tmp_527_cast_fu_554_p1;

assign buffer1_1_48_8x8_p_V_3_address0 = tmp_527_cast_fu_554_p1;

assign buffer1_1_48_8x8_p_V_4_address0 = tmp_527_cast_fu_554_p1;

assign buffer1_1_48_8x8_p_V_5_address0 = tmp_527_cast_fu_554_p1;

assign buffer1_1_48_8x8_p_V_6_address0 = tmp_527_cast_fu_554_p1;

assign buffer1_1_48_8x8_p_V_7_address0 = tmp_527_cast_fu_554_p1;

assign buffer1_1_48_8x8_p_V_8_address0 = tmp_527_cast_fu_554_p1;

assign co_27_fu_250_p2 = (7'd1 + co_reg_197);

assign exitcond4_fu_376_p2 = ((h_reg_208 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond5_fu_244_p2 = ((co_reg_197 == 7'd96) ? 1'b1 : 1'b0);

assign exitcond_fu_505_p2 = ((w_reg_219 == 4'd10) ? 1'b1 : 1'b0);

assign h_24_fu_382_p2 = (h_reg_208 + 4'd1);

assign left_V_address0 = tmp_525_cast_fu_534_p1;

assign output_V_address0 = output_V_addr_reg_655;

assign output_V_d0 = storemerge_reg_230;

assign p_shl10_cast_fu_413_p1 = tmp_528_fu_405_p3;

assign p_shl11_cast_fu_425_p1 = tmp_529_fu_417_p3;

assign p_shl1_cast_fu_366_p1 = tmp_419_fu_358_p3;

assign p_shl2_cast_fu_304_p1 = tmp_414_fu_296_p3;

assign p_shl3_cast_fu_316_p1 = tmp_415_fu_308_p3;

assign p_shl4_cast_fu_264_p1 = tmp_s_fu_256_p3;

assign p_shl5_cast_fu_276_p1 = tmp_411_fu_268_p3;

assign p_shl6_cast_fu_483_p1 = tmp_532_fu_475_p3;

assign p_shl7_cast_fu_495_p1 = tmp_533_fu_487_p3;

assign p_shl8_cast_fu_448_p1 = tmp_530_fu_440_p3;

assign p_shl9_cast_fu_460_p1 = tmp_531_fu_452_p3;

assign p_shl_cast_fu_354_p1 = tmp_418_fu_346_p3;

assign tmp_217_cast1_fu_517_p1 = w_reg_219;

assign tmp_217_cast2_fu_521_p1 = w_reg_219;

assign tmp_217_cast_fu_525_p1 = w_reg_219;

assign tmp_411_fu_268_p3 = {{co_reg_197}, {1'd0}};

assign tmp_412_fu_280_p2 = (p_shl5_cast_fu_276_p1 + p_shl4_cast_fu_264_p1);

assign tmp_413_fu_286_p4 = {{co_reg_197[6:1]}};

assign tmp_414_fu_296_p3 = {{tmp_413_fu_286_p4}, {3'd0}};

assign tmp_415_fu_308_p3 = {{tmp_413_fu_286_p4}, {1'd0}};

assign tmp_416_fu_320_p2 = (p_shl3_cast_fu_316_p1 + p_shl2_cast_fu_304_p1);

assign tmp_417_fu_336_p4 = {{co_reg_197[6:4]}};

assign tmp_418_fu_346_p3 = {{tmp_417_fu_336_p4}, {3'd0}};

assign tmp_419_fu_358_p3 = {{tmp_417_fu_336_p4}, {1'd0}};

assign tmp_420_fu_370_p2 = (p_shl1_cast_fu_366_p1 + p_shl_cast_fu_354_p1);

assign tmp_421_fu_400_p2 = (tmp_cast_fu_396_p1 + tmp_416_reg_604);

assign tmp_422_fu_429_p2 = (p_shl10_cast_fu_413_p1 + p_shl11_cast_fu_425_p1);

assign tmp_423_fu_435_p2 = (tmp_cast7_fu_392_p1 + tmp_412_reg_599);

assign tmp_424_fu_464_p2 = (p_shl8_cast_fu_448_p1 + p_shl9_cast_fu_460_p1);

assign tmp_425_fu_470_p2 = (tmp_cast6_fu_388_p1 + tmp_420_reg_614);

assign tmp_426_fu_499_p2 = (p_shl6_cast_fu_483_p1 + p_shl7_cast_fu_495_p1);

assign tmp_427_fu_529_p2 = (tmp_422_reg_627 + tmp_217_cast_fu_525_p1);

assign tmp_428_fu_539_p2 = (tmp_424_reg_632 + tmp_217_cast2_fu_521_p1);

assign tmp_429_fu_549_p2 = (tmp_426_reg_637 + tmp_217_cast1_fu_517_p1);

assign tmp_523_fu_240_p1 = co_reg_197[0:0];

assign tmp_525_cast_fu_534_p1 = tmp_427_fu_529_p2;

assign tmp_526_cast_fu_544_p1 = tmp_428_fu_539_p2;

assign tmp_527_cast_fu_554_p1 = tmp_429_fu_549_p2;

assign tmp_528_fu_405_p3 = {{tmp_421_fu_400_p2}, {3'd0}};

assign tmp_529_fu_417_p3 = {{tmp_421_fu_400_p2}, {1'd0}};

assign tmp_530_fu_440_p3 = {{tmp_423_fu_435_p2}, {3'd0}};

assign tmp_531_fu_452_p3 = {{tmp_423_fu_435_p2}, {1'd0}};

assign tmp_532_fu_475_p3 = {{tmp_425_fu_470_p2}, {3'd0}};

assign tmp_533_fu_487_p3 = {{tmp_425_fu_470_p2}, {1'd0}};

assign tmp_cast6_fu_388_p1 = h_reg_208;

assign tmp_cast7_fu_392_p1 = h_reg_208;

assign tmp_cast_fu_396_p1 = h_reg_208;

assign tmp_s_fu_256_p3 = {{co_reg_197}, {3'd0}};

assign w_29_fu_511_p2 = (w_reg_219 + 4'd1);

always @ (posedge ap_clk) begin
    tmp_412_reg_599[0] <= 1'b0;
    tmp_416_reg_604[0] <= 1'b0;
    tmp_420_reg_614[0] <= 1'b0;
    tmp_422_reg_627[0] <= 1'b0;
    tmp_424_reg_632[0] <= 1'b0;
    tmp_426_reg_637[0] <= 1'b0;
end

endmodule //shuffle_48_p
