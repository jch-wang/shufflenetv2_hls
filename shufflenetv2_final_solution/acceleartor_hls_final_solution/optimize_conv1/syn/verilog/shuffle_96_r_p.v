// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module shuffle_96_r_p (
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
        buffer1_1_96_4x4_p_V_8_address0,
        buffer1_1_96_4x4_p_V_8_ce0,
        buffer1_1_96_4x4_p_V_8_q0,
        buffer1_1_96_4x4_p_V_1_address0,
        buffer1_1_96_4x4_p_V_1_ce0,
        buffer1_1_96_4x4_p_V_1_q0,
        buffer1_1_96_4x4_p_V_2_address0,
        buffer1_1_96_4x4_p_V_2_ce0,
        buffer1_1_96_4x4_p_V_2_q0,
        buffer1_1_96_4x4_p_V_3_address0,
        buffer1_1_96_4x4_p_V_3_ce0,
        buffer1_1_96_4x4_p_V_3_q0,
        buffer1_1_96_4x4_p_V_4_address0,
        buffer1_1_96_4x4_p_V_4_ce0,
        buffer1_1_96_4x4_p_V_4_q0,
        buffer1_1_96_4x4_p_V_5_address0,
        buffer1_1_96_4x4_p_V_5_ce0,
        buffer1_1_96_4x4_p_V_5_q0,
        buffer1_1_96_4x4_p_V_6_address0,
        buffer1_1_96_4x4_p_V_6_ce0,
        buffer1_1_96_4x4_p_V_6_q0,
        buffer1_1_96_4x4_p_V_7_address0,
        buffer1_1_96_4x4_p_V_7_ce0,
        buffer1_1_96_4x4_p_V_7_q0
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
output  [12:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [7:0] output_V_d0;
output  [8:0] buffer1_1_96_4x4_p_V_8_address0;
output   buffer1_1_96_4x4_p_V_8_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_8_q0;
output  [8:0] buffer1_1_96_4x4_p_V_1_address0;
output   buffer1_1_96_4x4_p_V_1_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_1_q0;
output  [8:0] buffer1_1_96_4x4_p_V_2_address0;
output   buffer1_1_96_4x4_p_V_2_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_2_q0;
output  [8:0] buffer1_1_96_4x4_p_V_3_address0;
output   buffer1_1_96_4x4_p_V_3_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_3_q0;
output  [8:0] buffer1_1_96_4x4_p_V_4_address0;
output   buffer1_1_96_4x4_p_V_4_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_4_q0;
output  [8:0] buffer1_1_96_4x4_p_V_5_address0;
output   buffer1_1_96_4x4_p_V_5_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_5_q0;
output  [8:0] buffer1_1_96_4x4_p_V_6_address0;
output   buffer1_1_96_4x4_p_V_6_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_6_q0;
output  [8:0] buffer1_1_96_4x4_p_V_7_address0;
output   buffer1_1_96_4x4_p_V_7_ce0;
input  [7:0] buffer1_1_96_4x4_p_V_7_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_V_ce0;
reg output_V_we0;
reg buffer1_1_96_4x4_p_V_8_ce0;
reg buffer1_1_96_4x4_p_V_1_ce0;
reg buffer1_1_96_4x4_p_V_2_ce0;
reg buffer1_1_96_4x4_p_V_3_ce0;
reg buffer1_1_96_4x4_p_V_4_ce0;
reg buffer1_1_96_4x4_p_V_5_ce0;
reg buffer1_1_96_4x4_p_V_6_ce0;
reg buffer1_1_96_4x4_p_V_7_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_508_fu_211_p1;
reg   [0:0] tmp_508_reg_464;
wire    ap_CS_fsm_state2;
wire   [7:0] co_23_fu_221_p2;
reg   [7:0] co_23_reg_471;
wire  signed [12:0] tmp_420_cast_fu_257_p1;
reg  signed [12:0] tmp_420_cast_reg_476;
wire   [0:0] exitcond3_fu_215_p2;
reg   [2:0] arrayNo_reg_481;
wire  signed [8:0] tmp_425_cast_fu_311_p1;
reg  signed [8:0] tmp_425_cast_reg_486;
wire   [2:0] h_20_fu_321_p2;
reg   [2:0] h_20_reg_494;
wire    ap_CS_fsm_state3;
wire   [13:0] tmp_363_fu_360_p2;
reg   [13:0] tmp_363_reg_499;
wire   [0:0] exitcond2_fu_315_p2;
wire   [9:0] tmp_365_fu_391_p2;
reg   [9:0] tmp_365_reg_504;
wire   [2:0] w_25_fu_403_p2;
reg   [2:0] w_25_reg_512;
wire    ap_CS_fsm_state4;
wire   [13:0] tmp_366_fu_417_p2;
reg   [13:0] tmp_366_reg_517;
wire   [0:0] exitcond_fu_397_p2;
wire   [7:0] tmp_fu_439_p10;
reg   [7:0] tmp_reg_562;
wire    ap_CS_fsm_state5;
reg   [7:0] co_reg_178;
reg   [2:0] h_reg_189;
reg   [2:0] w_reg_200;
wire    ap_CS_fsm_state6;
wire   [63:0] tmp_435_cast_fu_427_p1;
wire   [63:0] tmp_434_cast_fu_460_p1;
wire   [10:0] tmp_s_fu_227_p3;
wire   [8:0] tmp_356_fu_239_p3;
wire   [11:0] p_shl2_cast_fu_235_p1;
wire   [11:0] p_shl3_cast_fu_247_p1;
wire   [11:0] tmp_357_fu_251_p2;
wire   [3:0] tmp_358_fu_271_p4;
wire   [6:0] tmp_359_fu_281_p3;
wire   [4:0] tmp_360_fu_293_p3;
wire   [7:0] p_shl_cast_fu_289_p1;
wire   [7:0] p_shl1_cast_fu_301_p1;
wire   [7:0] tmp_361_fu_305_p2;
wire   [12:0] tmp_208_cast_fu_331_p1;
wire   [12:0] tmp_362_fu_335_p2;
wire   [10:0] tmp_509_fu_340_p1;
wire   [13:0] p_shl6_cast_fu_344_p3;
wire   [13:0] p_shl7_cast_fu_352_p3;
wire   [8:0] tmp_208_cast9_fu_327_p1;
wire   [8:0] tmp_364_fu_366_p2;
wire   [6:0] tmp_510_fu_371_p1;
wire   [9:0] p_shl4_cast_fu_375_p3;
wire   [9:0] p_shl5_cast_fu_383_p3;
wire   [13:0] tmp_209_cast_fu_413_p1;
wire   [9:0] tmp_209_cast8_fu_409_p1;
wire   [9:0] tmp_367_fu_422_p2;
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
ShuffleNetV2_mux_jbC_x_U278(
    .din1(buffer1_1_96_4x4_p_V_8_q0),
    .din2(buffer1_1_96_4x4_p_V_1_q0),
    .din3(buffer1_1_96_4x4_p_V_2_q0),
    .din4(buffer1_1_96_4x4_p_V_3_q0),
    .din5(buffer1_1_96_4x4_p_V_4_q0),
    .din6(buffer1_1_96_4x4_p_V_5_q0),
    .din7(buffer1_1_96_4x4_p_V_6_q0),
    .din8(buffer1_1_96_4x4_p_V_7_q0),
    .din9(arrayNo_reg_481),
    .dout(tmp_fu_439_p10)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_315_p2 == 1'd1))) begin
        co_reg_178 <= co_23_reg_471;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        co_reg_178 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_397_p2 == 1'd1))) begin
        h_reg_189 <= h_20_reg_494;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_215_p2 == 1'd0))) begin
        h_reg_189 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_315_p2))) begin
        w_reg_200 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        w_reg_200 <= w_25_reg_512;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_215_p2 == 1'd0))) begin
        arrayNo_reg_481 <= {{co_reg_178[3:1]}};
        tmp_420_cast_reg_476[12 : 1] <= tmp_420_cast_fu_257_p1[12 : 1];
        tmp_425_cast_reg_486[8 : 1] <= tmp_425_cast_fu_311_p1[8 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        co_23_reg_471 <= co_23_fu_221_p2;
        tmp_508_reg_464 <= tmp_508_fu_211_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_20_reg_494 <= h_20_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond2_fu_315_p2))) begin
        tmp_363_reg_499[13 : 1] <= tmp_363_fu_360_p2[13 : 1];
        tmp_365_reg_504[9 : 1] <= tmp_365_fu_391_p2[9 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_397_p2) & (tmp_508_reg_464 == 1'd1))) begin
        tmp_366_reg_517 <= tmp_366_fu_417_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_reg_562 <= tmp_fu_439_p10;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_25_reg_512 <= w_25_fu_403_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_215_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_215_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_1_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_2_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_3_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_4_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_5_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_6_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_7_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buffer1_1_96_4x4_p_V_8_ce0 = 1'b1;
    end else begin
        buffer1_1_96_4x4_p_V_8_ce0 = 1'b0;
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
    if (((tmp_508_reg_464 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_215_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_315_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_397_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_fu_397_p2) & (tmp_508_reg_464 == 1'd0))) begin
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

assign buffer1_1_96_4x4_p_V_1_address0 = tmp_435_cast_fu_427_p1;

assign buffer1_1_96_4x4_p_V_2_address0 = tmp_435_cast_fu_427_p1;

assign buffer1_1_96_4x4_p_V_3_address0 = tmp_435_cast_fu_427_p1;

assign buffer1_1_96_4x4_p_V_4_address0 = tmp_435_cast_fu_427_p1;

assign buffer1_1_96_4x4_p_V_5_address0 = tmp_435_cast_fu_427_p1;

assign buffer1_1_96_4x4_p_V_6_address0 = tmp_435_cast_fu_427_p1;

assign buffer1_1_96_4x4_p_V_7_address0 = tmp_435_cast_fu_427_p1;

assign buffer1_1_96_4x4_p_V_8_address0 = tmp_435_cast_fu_427_p1;

assign co_23_fu_221_p2 = (8'd1 + co_reg_178);

assign exitcond2_fu_315_p2 = ((h_reg_189 == 3'd6) ? 1'b1 : 1'b0);

assign exitcond3_fu_215_p2 = ((co_reg_178 == 8'd192) ? 1'b1 : 1'b0);

assign exitcond_fu_397_p2 = ((w_reg_200 == 3'd6) ? 1'b1 : 1'b0);

assign h_20_fu_321_p2 = (h_reg_189 + 3'd1);

assign output_V_address0 = tmp_434_cast_fu_460_p1;

assign output_V_d0 = tmp_reg_562;

assign p_shl1_cast_fu_301_p1 = tmp_360_fu_293_p3;

assign p_shl2_cast_fu_235_p1 = tmp_s_fu_227_p3;

assign p_shl3_cast_fu_247_p1 = tmp_356_fu_239_p3;

assign p_shl4_cast_fu_375_p3 = {{tmp_510_fu_371_p1}, {3'd0}};

assign p_shl5_cast_fu_383_p3 = {{tmp_364_fu_366_p2}, {1'd0}};

assign p_shl6_cast_fu_344_p3 = {{tmp_509_fu_340_p1}, {3'd0}};

assign p_shl7_cast_fu_352_p3 = {{tmp_362_fu_335_p2}, {1'd0}};

assign p_shl_cast_fu_289_p1 = tmp_359_fu_281_p3;

assign tmp_208_cast9_fu_327_p1 = h_reg_189;

assign tmp_208_cast_fu_331_p1 = h_reg_189;

assign tmp_209_cast8_fu_409_p1 = w_reg_200;

assign tmp_209_cast_fu_413_p1 = w_reg_200;

assign tmp_356_fu_239_p3 = {{co_reg_178}, {1'd0}};

assign tmp_357_fu_251_p2 = (p_shl2_cast_fu_235_p1 - p_shl3_cast_fu_247_p1);

assign tmp_358_fu_271_p4 = {{co_reg_178[7:4]}};

assign tmp_359_fu_281_p3 = {{tmp_358_fu_271_p4}, {3'd0}};

assign tmp_360_fu_293_p3 = {{tmp_358_fu_271_p4}, {1'd0}};

assign tmp_361_fu_305_p2 = (p_shl_cast_fu_289_p1 - p_shl1_cast_fu_301_p1);

assign tmp_362_fu_335_p2 = ($signed(tmp_208_cast_fu_331_p1) + $signed(tmp_420_cast_reg_476));

assign tmp_363_fu_360_p2 = (p_shl6_cast_fu_344_p3 - p_shl7_cast_fu_352_p3);

assign tmp_364_fu_366_p2 = ($signed(tmp_208_cast9_fu_327_p1) + $signed(tmp_425_cast_reg_486));

assign tmp_365_fu_391_p2 = (p_shl4_cast_fu_375_p3 - p_shl5_cast_fu_383_p3);

assign tmp_366_fu_417_p2 = (tmp_363_reg_499 + tmp_209_cast_fu_413_p1);

assign tmp_367_fu_422_p2 = (tmp_365_reg_504 + tmp_209_cast8_fu_409_p1);

assign tmp_420_cast_fu_257_p1 = $signed(tmp_357_fu_251_p2);

assign tmp_425_cast_fu_311_p1 = $signed(tmp_361_fu_305_p2);

assign tmp_434_cast_fu_460_p1 = tmp_366_reg_517;

assign tmp_435_cast_fu_427_p1 = tmp_367_fu_422_p2;

assign tmp_508_fu_211_p1 = co_reg_178[0:0];

assign tmp_509_fu_340_p1 = tmp_362_fu_335_p2[10:0];

assign tmp_510_fu_371_p1 = tmp_364_fu_366_p2[6:0];

assign tmp_s_fu_227_p3 = {{co_reg_178}, {3'd0}};

assign w_25_fu_403_p2 = (w_reg_200 + 3'd1);

always @ (posedge ap_clk) begin
    tmp_420_cast_reg_476[0] <= 1'b0;
    tmp_425_cast_reg_486[0] <= 1'b0;
    tmp_363_reg_499[0] <= 1'b0;
    tmp_365_reg_504[0] <= 1'b0;
end

endmodule //shuffle_96_r_p
