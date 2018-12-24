// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "shuffle_48_r_p.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic shuffle_48_r_p::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic shuffle_48_r_p::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> shuffle_48_r_p::ap_ST_fsm_state1 = "1";
const sc_lv<6> shuffle_48_r_p::ap_ST_fsm_state2 = "10";
const sc_lv<6> shuffle_48_r_p::ap_ST_fsm_state3 = "100";
const sc_lv<6> shuffle_48_r_p::ap_ST_fsm_state4 = "1000";
const sc_lv<6> shuffle_48_r_p::ap_ST_fsm_state5 = "10000";
const sc_lv<6> shuffle_48_r_p::ap_ST_fsm_state6 = "100000";
const sc_lv<32> shuffle_48_r_p::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> shuffle_48_r_p::ap_const_lv32_1 = "1";
const sc_lv<1> shuffle_48_r_p::ap_const_lv1_0 = "0";
const sc_lv<32> shuffle_48_r_p::ap_const_lv32_2 = "10";
const sc_lv<32> shuffle_48_r_p::ap_const_lv32_3 = "11";
const sc_lv<1> shuffle_48_r_p::ap_const_lv1_1 = "1";
const sc_lv<32> shuffle_48_r_p::ap_const_lv32_4 = "100";
const sc_lv<7> shuffle_48_r_p::ap_const_lv7_0 = "0000000";
const sc_lv<4> shuffle_48_r_p::ap_const_lv4_0 = "0000";
const sc_lv<32> shuffle_48_r_p::ap_const_lv32_5 = "101";
const sc_lv<7> shuffle_48_r_p::ap_const_lv7_60 = "1100000";
const sc_lv<7> shuffle_48_r_p::ap_const_lv7_1 = "1";
const sc_lv<3> shuffle_48_r_p::ap_const_lv3_0 = "000";
const sc_lv<32> shuffle_48_r_p::ap_const_lv32_6 = "110";
const sc_lv<4> shuffle_48_r_p::ap_const_lv4_A = "1010";
const sc_lv<4> shuffle_48_r_p::ap_const_lv4_1 = "1";
const bool shuffle_48_r_p::ap_const_boolean_1 = true;

shuffle_48_r_p::shuffle_48_r_p(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ShuffleNetV2_mux_jbC_x_U226 = new ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>("ShuffleNetV2_mux_jbC_x_U226");
    ShuffleNetV2_mux_jbC_x_U226->din1(buffer1_1_48_8x8_p_V_8_q0);
    ShuffleNetV2_mux_jbC_x_U226->din2(buffer1_1_48_8x8_p_V_1_q0);
    ShuffleNetV2_mux_jbC_x_U226->din3(buffer1_1_48_8x8_p_V_2_q0);
    ShuffleNetV2_mux_jbC_x_U226->din4(buffer1_1_48_8x8_p_V_3_q0);
    ShuffleNetV2_mux_jbC_x_U226->din5(buffer1_1_48_8x8_p_V_4_q0);
    ShuffleNetV2_mux_jbC_x_U226->din6(buffer1_1_48_8x8_p_V_5_q0);
    ShuffleNetV2_mux_jbC_x_U226->din7(buffer1_1_48_8x8_p_V_6_q0);
    ShuffleNetV2_mux_jbC_x_U226->din8(buffer1_1_48_8x8_p_V_7_q0);
    ShuffleNetV2_mux_jbC_x_U226->din9(arrayNo_reg_477);
    ShuffleNetV2_mux_jbC_x_U226->dout(tmp_fu_435_p10);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_211_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_211_p2 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_1_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_1_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_2_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_2_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_3_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_3_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_4_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_4_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_5_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_5_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_6_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_6_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_7_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_7_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_8_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_541_cast_fu_423_p1 );

    SC_METHOD(thread_buffer1_1_48_8x8_p_V_8_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_co_28_fu_217_p2);
    sensitive << ( co_reg_174 );

    SC_METHOD(thread_exitcond2_fu_303_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_185 );

    SC_METHOD(thread_exitcond3_fu_211_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_174 );

    SC_METHOD(thread_exitcond_fu_393_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_196 );

    SC_METHOD(thread_h_24_fu_309_p2);
    sensitive << ( h_reg_185 );

    SC_METHOD(thread_output_V_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_540_cast_fu_456_p1 );

    SC_METHOD(thread_output_V_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_output_V_d0);
    sensitive << ( tmp_reg_558 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_output_V_we0);
    sensitive << ( tmp_518_reg_460 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_p_shl1_cast_fu_293_p1);
    sensitive << ( tmp_445_fu_285_p3 );

    SC_METHOD(thread_p_shl2_cast_fu_231_p1);
    sensitive << ( tmp_s_fu_223_p3 );

    SC_METHOD(thread_p_shl3_cast_fu_243_p1);
    sensitive << ( tmp_441_fu_235_p3 );

    SC_METHOD(thread_p_shl4_cast_fu_371_p1);
    sensitive << ( tmp_521_fu_363_p3 );

    SC_METHOD(thread_p_shl5_cast_fu_383_p1);
    sensitive << ( tmp_522_fu_375_p3 );

    SC_METHOD(thread_p_shl6_cast_fu_336_p1);
    sensitive << ( tmp_519_fu_328_p3 );

    SC_METHOD(thread_p_shl7_cast_fu_348_p1);
    sensitive << ( tmp_520_fu_340_p3 );

    SC_METHOD(thread_p_shl_cast_fu_281_p1);
    sensitive << ( tmp_444_fu_273_p3 );

    SC_METHOD(thread_tmp_228_cast9_fu_315_p1);
    sensitive << ( h_reg_185 );

    SC_METHOD(thread_tmp_228_cast_fu_319_p1);
    sensitive << ( h_reg_185 );

    SC_METHOD(thread_tmp_229_cast8_fu_405_p1);
    sensitive << ( w_reg_196 );

    SC_METHOD(thread_tmp_229_cast_fu_409_p1);
    sensitive << ( w_reg_196 );

    SC_METHOD(thread_tmp_441_fu_235_p3);
    sensitive << ( co_reg_174 );

    SC_METHOD(thread_tmp_442_fu_247_p2);
    sensitive << ( p_shl3_cast_fu_243_p1 );
    sensitive << ( p_shl2_cast_fu_231_p1 );

    SC_METHOD(thread_tmp_443_fu_263_p4);
    sensitive << ( co_reg_174 );

    SC_METHOD(thread_tmp_444_fu_273_p3);
    sensitive << ( tmp_443_fu_263_p4 );

    SC_METHOD(thread_tmp_445_fu_285_p3);
    sensitive << ( tmp_443_fu_263_p4 );

    SC_METHOD(thread_tmp_446_fu_297_p2);
    sensitive << ( p_shl1_cast_fu_293_p1 );
    sensitive << ( p_shl_cast_fu_281_p1 );

    SC_METHOD(thread_tmp_447_fu_323_p2);
    sensitive << ( tmp_442_reg_472 );
    sensitive << ( tmp_228_cast_fu_319_p1 );

    SC_METHOD(thread_tmp_448_fu_352_p2);
    sensitive << ( p_shl6_cast_fu_336_p1 );
    sensitive << ( p_shl7_cast_fu_348_p1 );

    SC_METHOD(thread_tmp_449_fu_358_p2);
    sensitive << ( tmp_446_reg_482 );
    sensitive << ( tmp_228_cast9_fu_315_p1 );

    SC_METHOD(thread_tmp_450_fu_387_p2);
    sensitive << ( p_shl4_cast_fu_371_p1 );
    sensitive << ( p_shl5_cast_fu_383_p1 );

    SC_METHOD(thread_tmp_451_fu_413_p2);
    sensitive << ( tmp_448_reg_495 );
    sensitive << ( tmp_229_cast_fu_409_p1 );

    SC_METHOD(thread_tmp_452_fu_418_p2);
    sensitive << ( tmp_450_reg_500 );
    sensitive << ( tmp_229_cast8_fu_405_p1 );

    SC_METHOD(thread_tmp_518_fu_207_p1);
    sensitive << ( co_reg_174 );

    SC_METHOD(thread_tmp_519_fu_328_p3);
    sensitive << ( tmp_447_fu_323_p2 );

    SC_METHOD(thread_tmp_520_fu_340_p3);
    sensitive << ( tmp_447_fu_323_p2 );

    SC_METHOD(thread_tmp_521_fu_363_p3);
    sensitive << ( tmp_449_fu_358_p2 );

    SC_METHOD(thread_tmp_522_fu_375_p3);
    sensitive << ( tmp_449_fu_358_p2 );

    SC_METHOD(thread_tmp_540_cast_fu_456_p1);
    sensitive << ( tmp_451_reg_513 );

    SC_METHOD(thread_tmp_541_cast_fu_423_p1);
    sensitive << ( tmp_452_fu_418_p2 );

    SC_METHOD(thread_tmp_s_fu_223_p3);
    sensitive << ( co_reg_174 );

    SC_METHOD(thread_w_28_fu_399_p2);
    sensitive << ( w_reg_196 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_518_reg_460 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_211_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond2_fu_303_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_393_p2 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "shuffle_48_r_p_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, output_V_address0, "(port)output_V_address0");
    sc_trace(mVcdFile, output_V_ce0, "(port)output_V_ce0");
    sc_trace(mVcdFile, output_V_we0, "(port)output_V_we0");
    sc_trace(mVcdFile, output_V_d0, "(port)output_V_d0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_8_address0, "(port)buffer1_1_48_8x8_p_V_8_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_8_ce0, "(port)buffer1_1_48_8x8_p_V_8_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_8_q0, "(port)buffer1_1_48_8x8_p_V_8_q0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_1_address0, "(port)buffer1_1_48_8x8_p_V_1_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_1_ce0, "(port)buffer1_1_48_8x8_p_V_1_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_1_q0, "(port)buffer1_1_48_8x8_p_V_1_q0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_2_address0, "(port)buffer1_1_48_8x8_p_V_2_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_2_ce0, "(port)buffer1_1_48_8x8_p_V_2_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_2_q0, "(port)buffer1_1_48_8x8_p_V_2_q0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_3_address0, "(port)buffer1_1_48_8x8_p_V_3_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_3_ce0, "(port)buffer1_1_48_8x8_p_V_3_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_3_q0, "(port)buffer1_1_48_8x8_p_V_3_q0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_4_address0, "(port)buffer1_1_48_8x8_p_V_4_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_4_ce0, "(port)buffer1_1_48_8x8_p_V_4_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_4_q0, "(port)buffer1_1_48_8x8_p_V_4_q0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_5_address0, "(port)buffer1_1_48_8x8_p_V_5_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_5_ce0, "(port)buffer1_1_48_8x8_p_V_5_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_5_q0, "(port)buffer1_1_48_8x8_p_V_5_q0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_6_address0, "(port)buffer1_1_48_8x8_p_V_6_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_6_ce0, "(port)buffer1_1_48_8x8_p_V_6_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_6_q0, "(port)buffer1_1_48_8x8_p_V_6_q0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_7_address0, "(port)buffer1_1_48_8x8_p_V_7_address0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_7_ce0, "(port)buffer1_1_48_8x8_p_V_7_ce0");
    sc_trace(mVcdFile, buffer1_1_48_8x8_p_V_7_q0, "(port)buffer1_1_48_8x8_p_V_7_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_518_fu_207_p1, "tmp_518_fu_207_p1");
    sc_trace(mVcdFile, tmp_518_reg_460, "tmp_518_reg_460");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, co_28_fu_217_p2, "co_28_fu_217_p2");
    sc_trace(mVcdFile, co_28_reg_467, "co_28_reg_467");
    sc_trace(mVcdFile, tmp_442_fu_247_p2, "tmp_442_fu_247_p2");
    sc_trace(mVcdFile, tmp_442_reg_472, "tmp_442_reg_472");
    sc_trace(mVcdFile, exitcond3_fu_211_p2, "exitcond3_fu_211_p2");
    sc_trace(mVcdFile, arrayNo_reg_477, "arrayNo_reg_477");
    sc_trace(mVcdFile, tmp_446_fu_297_p2, "tmp_446_fu_297_p2");
    sc_trace(mVcdFile, tmp_446_reg_482, "tmp_446_reg_482");
    sc_trace(mVcdFile, h_24_fu_309_p2, "h_24_fu_309_p2");
    sc_trace(mVcdFile, h_24_reg_490, "h_24_reg_490");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_448_fu_352_p2, "tmp_448_fu_352_p2");
    sc_trace(mVcdFile, tmp_448_reg_495, "tmp_448_reg_495");
    sc_trace(mVcdFile, exitcond2_fu_303_p2, "exitcond2_fu_303_p2");
    sc_trace(mVcdFile, tmp_450_fu_387_p2, "tmp_450_fu_387_p2");
    sc_trace(mVcdFile, tmp_450_reg_500, "tmp_450_reg_500");
    sc_trace(mVcdFile, w_28_fu_399_p2, "w_28_fu_399_p2");
    sc_trace(mVcdFile, w_28_reg_508, "w_28_reg_508");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_451_fu_413_p2, "tmp_451_fu_413_p2");
    sc_trace(mVcdFile, tmp_451_reg_513, "tmp_451_reg_513");
    sc_trace(mVcdFile, exitcond_fu_393_p2, "exitcond_fu_393_p2");
    sc_trace(mVcdFile, tmp_fu_435_p10, "tmp_fu_435_p10");
    sc_trace(mVcdFile, tmp_reg_558, "tmp_reg_558");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, co_reg_174, "co_reg_174");
    sc_trace(mVcdFile, h_reg_185, "h_reg_185");
    sc_trace(mVcdFile, w_reg_196, "w_reg_196");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_541_cast_fu_423_p1, "tmp_541_cast_fu_423_p1");
    sc_trace(mVcdFile, tmp_540_cast_fu_456_p1, "tmp_540_cast_fu_456_p1");
    sc_trace(mVcdFile, tmp_s_fu_223_p3, "tmp_s_fu_223_p3");
    sc_trace(mVcdFile, tmp_441_fu_235_p3, "tmp_441_fu_235_p3");
    sc_trace(mVcdFile, p_shl3_cast_fu_243_p1, "p_shl3_cast_fu_243_p1");
    sc_trace(mVcdFile, p_shl2_cast_fu_231_p1, "p_shl2_cast_fu_231_p1");
    sc_trace(mVcdFile, tmp_443_fu_263_p4, "tmp_443_fu_263_p4");
    sc_trace(mVcdFile, tmp_444_fu_273_p3, "tmp_444_fu_273_p3");
    sc_trace(mVcdFile, tmp_445_fu_285_p3, "tmp_445_fu_285_p3");
    sc_trace(mVcdFile, p_shl1_cast_fu_293_p1, "p_shl1_cast_fu_293_p1");
    sc_trace(mVcdFile, p_shl_cast_fu_281_p1, "p_shl_cast_fu_281_p1");
    sc_trace(mVcdFile, tmp_228_cast_fu_319_p1, "tmp_228_cast_fu_319_p1");
    sc_trace(mVcdFile, tmp_447_fu_323_p2, "tmp_447_fu_323_p2");
    sc_trace(mVcdFile, tmp_519_fu_328_p3, "tmp_519_fu_328_p3");
    sc_trace(mVcdFile, tmp_520_fu_340_p3, "tmp_520_fu_340_p3");
    sc_trace(mVcdFile, p_shl6_cast_fu_336_p1, "p_shl6_cast_fu_336_p1");
    sc_trace(mVcdFile, p_shl7_cast_fu_348_p1, "p_shl7_cast_fu_348_p1");
    sc_trace(mVcdFile, tmp_228_cast9_fu_315_p1, "tmp_228_cast9_fu_315_p1");
    sc_trace(mVcdFile, tmp_449_fu_358_p2, "tmp_449_fu_358_p2");
    sc_trace(mVcdFile, tmp_521_fu_363_p3, "tmp_521_fu_363_p3");
    sc_trace(mVcdFile, tmp_522_fu_375_p3, "tmp_522_fu_375_p3");
    sc_trace(mVcdFile, p_shl4_cast_fu_371_p1, "p_shl4_cast_fu_371_p1");
    sc_trace(mVcdFile, p_shl5_cast_fu_383_p1, "p_shl5_cast_fu_383_p1");
    sc_trace(mVcdFile, tmp_229_cast_fu_409_p1, "tmp_229_cast_fu_409_p1");
    sc_trace(mVcdFile, tmp_229_cast8_fu_405_p1, "tmp_229_cast8_fu_405_p1");
    sc_trace(mVcdFile, tmp_452_fu_418_p2, "tmp_452_fu_418_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

shuffle_48_r_p::~shuffle_48_r_p() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ShuffleNetV2_mux_jbC_x_U226;
}

void shuffle_48_r_p::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_303_p2.read(), ap_const_lv1_1))) {
        co_reg_174 = co_28_reg_467.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_174 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_393_p2.read(), ap_const_lv1_1))) {
        h_reg_185 = h_24_reg_490.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond3_fu_211_p2.read(), ap_const_lv1_0))) {
        h_reg_185 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_303_p2.read()))) {
        w_reg_196 = ap_const_lv4_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        w_reg_196 = w_28_reg_508.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond3_fu_211_p2.read(), ap_const_lv1_0))) {
        arrayNo_reg_477 = co_reg_174.read().range(3, 1);
        tmp_442_reg_472 = tmp_442_fu_247_p2.read();
        tmp_446_reg_482 = tmp_446_fu_297_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_28_reg_467 = co_28_fu_217_p2.read();
        tmp_518_reg_460 = tmp_518_fu_207_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_24_reg_490 = h_24_fu_309_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_303_p2.read()))) {
        tmp_448_reg_495 = tmp_448_fu_352_p2.read();
        tmp_450_reg_500 = tmp_450_fu_387_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_393_p2.read()) && esl_seteq<1,1,1>(tmp_518_reg_460.read(), ap_const_lv1_1))) {
        tmp_451_reg_513 = tmp_451_fu_413_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tmp_reg_558 = tmp_fu_435_p10.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_28_reg_508 = w_28_fu_399_p2.read();
    }
}

void shuffle_48_r_p::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void shuffle_48_r_p::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void shuffle_48_r_p::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void shuffle_48_r_p::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void shuffle_48_r_p::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void shuffle_48_r_p::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void shuffle_48_r_p::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond3_fu_211_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond3_fu_211_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_1_address0() {
    buffer1_1_48_8x8_p_V_1_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_1_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_1_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_2_address0() {
    buffer1_1_48_8x8_p_V_2_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_2_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_2_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_2_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_3_address0() {
    buffer1_1_48_8x8_p_V_3_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_3_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_3_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_3_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_4_address0() {
    buffer1_1_48_8x8_p_V_4_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_4_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_4_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_4_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_5_address0() {
    buffer1_1_48_8x8_p_V_5_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_5_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_5_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_5_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_6_address0() {
    buffer1_1_48_8x8_p_V_6_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_6_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_6_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_6_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_7_address0() {
    buffer1_1_48_8x8_p_V_7_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_7_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_7_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_7_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_8_address0() {
    buffer1_1_48_8x8_p_V_8_address0 =  (sc_lv<10>) (tmp_541_cast_fu_423_p1.read());
}

void shuffle_48_r_p::thread_buffer1_1_48_8x8_p_V_8_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        buffer1_1_48_8x8_p_V_8_ce0 = ap_const_logic_1;
    } else {
        buffer1_1_48_8x8_p_V_8_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_co_28_fu_217_p2() {
    co_28_fu_217_p2 = (!ap_const_lv7_1.is_01() || !co_reg_174.read().is_01())? sc_lv<7>(): (sc_biguint<7>(ap_const_lv7_1) + sc_biguint<7>(co_reg_174.read()));
}

void shuffle_48_r_p::thread_exitcond2_fu_303_p2() {
    exitcond2_fu_303_p2 = (!h_reg_185.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_185.read() == ap_const_lv4_A);
}

void shuffle_48_r_p::thread_exitcond3_fu_211_p2() {
    exitcond3_fu_211_p2 = (!co_reg_174.read().is_01() || !ap_const_lv7_60.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_174.read() == ap_const_lv7_60);
}

void shuffle_48_r_p::thread_exitcond_fu_393_p2() {
    exitcond_fu_393_p2 = (!w_reg_196.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_196.read() == ap_const_lv4_A);
}

void shuffle_48_r_p::thread_h_24_fu_309_p2() {
    h_24_fu_309_p2 = (!h_reg_185.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(h_reg_185.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void shuffle_48_r_p::thread_output_V_address0() {
    output_V_address0 =  (sc_lv<14>) (tmp_540_cast_fu_456_p1.read());
}

void shuffle_48_r_p::thread_output_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        output_V_ce0 = ap_const_logic_1;
    } else {
        output_V_ce0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_output_V_d0() {
    output_V_d0 = tmp_reg_558.read();
}

void shuffle_48_r_p::thread_output_V_we0() {
    if ((esl_seteq<1,1,1>(tmp_518_reg_460.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        output_V_we0 = ap_const_logic_1;
    } else {
        output_V_we0 = ap_const_logic_0;
    }
}

void shuffle_48_r_p::thread_p_shl1_cast_fu_293_p1() {
    p_shl1_cast_fu_293_p1 = esl_zext<7,4>(tmp_445_fu_285_p3.read());
}

void shuffle_48_r_p::thread_p_shl2_cast_fu_231_p1() {
    p_shl2_cast_fu_231_p1 = esl_zext<11,10>(tmp_s_fu_223_p3.read());
}

void shuffle_48_r_p::thread_p_shl3_cast_fu_243_p1() {
    p_shl3_cast_fu_243_p1 = esl_zext<11,8>(tmp_441_fu_235_p3.read());
}

void shuffle_48_r_p::thread_p_shl4_cast_fu_371_p1() {
    p_shl4_cast_fu_371_p1 = esl_zext<11,10>(tmp_521_fu_363_p3.read());
}

void shuffle_48_r_p::thread_p_shl5_cast_fu_383_p1() {
    p_shl5_cast_fu_383_p1 = esl_zext<11,8>(tmp_522_fu_375_p3.read());
}

void shuffle_48_r_p::thread_p_shl6_cast_fu_336_p1() {
    p_shl6_cast_fu_336_p1 = esl_zext<15,14>(tmp_519_fu_328_p3.read());
}

void shuffle_48_r_p::thread_p_shl7_cast_fu_348_p1() {
    p_shl7_cast_fu_348_p1 = esl_zext<15,12>(tmp_520_fu_340_p3.read());
}

void shuffle_48_r_p::thread_p_shl_cast_fu_281_p1() {
    p_shl_cast_fu_281_p1 = esl_zext<7,6>(tmp_444_fu_273_p3.read());
}

void shuffle_48_r_p::thread_tmp_228_cast9_fu_315_p1() {
    tmp_228_cast9_fu_315_p1 = esl_zext<7,4>(h_reg_185.read());
}

void shuffle_48_r_p::thread_tmp_228_cast_fu_319_p1() {
    tmp_228_cast_fu_319_p1 = esl_zext<11,4>(h_reg_185.read());
}

void shuffle_48_r_p::thread_tmp_229_cast8_fu_405_p1() {
    tmp_229_cast8_fu_405_p1 = esl_zext<11,4>(w_reg_196.read());
}

void shuffle_48_r_p::thread_tmp_229_cast_fu_409_p1() {
    tmp_229_cast_fu_409_p1 = esl_zext<15,4>(w_reg_196.read());
}

void shuffle_48_r_p::thread_tmp_441_fu_235_p3() {
    tmp_441_fu_235_p3 = esl_concat<7,1>(co_reg_174.read(), ap_const_lv1_0);
}

void shuffle_48_r_p::thread_tmp_442_fu_247_p2() {
    tmp_442_fu_247_p2 = (!p_shl3_cast_fu_243_p1.read().is_01() || !p_shl2_cast_fu_231_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(p_shl3_cast_fu_243_p1.read()) + sc_biguint<11>(p_shl2_cast_fu_231_p1.read()));
}

void shuffle_48_r_p::thread_tmp_443_fu_263_p4() {
    tmp_443_fu_263_p4 = co_reg_174.read().range(6, 4);
}

void shuffle_48_r_p::thread_tmp_444_fu_273_p3() {
    tmp_444_fu_273_p3 = esl_concat<3,3>(tmp_443_fu_263_p4.read(), ap_const_lv3_0);
}

void shuffle_48_r_p::thread_tmp_445_fu_285_p3() {
    tmp_445_fu_285_p3 = esl_concat<3,1>(tmp_443_fu_263_p4.read(), ap_const_lv1_0);
}

void shuffle_48_r_p::thread_tmp_446_fu_297_p2() {
    tmp_446_fu_297_p2 = (!p_shl1_cast_fu_293_p1.read().is_01() || !p_shl_cast_fu_281_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(p_shl1_cast_fu_293_p1.read()) + sc_biguint<7>(p_shl_cast_fu_281_p1.read()));
}

void shuffle_48_r_p::thread_tmp_447_fu_323_p2() {
    tmp_447_fu_323_p2 = (!tmp_228_cast_fu_319_p1.read().is_01() || !tmp_442_reg_472.read().is_01())? sc_lv<11>(): (sc_biguint<11>(tmp_228_cast_fu_319_p1.read()) + sc_biguint<11>(tmp_442_reg_472.read()));
}

void shuffle_48_r_p::thread_tmp_448_fu_352_p2() {
    tmp_448_fu_352_p2 = (!p_shl6_cast_fu_336_p1.read().is_01() || !p_shl7_cast_fu_348_p1.read().is_01())? sc_lv<15>(): (sc_biguint<15>(p_shl6_cast_fu_336_p1.read()) + sc_biguint<15>(p_shl7_cast_fu_348_p1.read()));
}

void shuffle_48_r_p::thread_tmp_449_fu_358_p2() {
    tmp_449_fu_358_p2 = (!tmp_228_cast9_fu_315_p1.read().is_01() || !tmp_446_reg_482.read().is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_228_cast9_fu_315_p1.read()) + sc_biguint<7>(tmp_446_reg_482.read()));
}

void shuffle_48_r_p::thread_tmp_450_fu_387_p2() {
    tmp_450_fu_387_p2 = (!p_shl4_cast_fu_371_p1.read().is_01() || !p_shl5_cast_fu_383_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(p_shl4_cast_fu_371_p1.read()) + sc_biguint<11>(p_shl5_cast_fu_383_p1.read()));
}

void shuffle_48_r_p::thread_tmp_451_fu_413_p2() {
    tmp_451_fu_413_p2 = (!tmp_448_reg_495.read().is_01() || !tmp_229_cast_fu_409_p1.read().is_01())? sc_lv<15>(): (sc_biguint<15>(tmp_448_reg_495.read()) + sc_biguint<15>(tmp_229_cast_fu_409_p1.read()));
}

void shuffle_48_r_p::thread_tmp_452_fu_418_p2() {
    tmp_452_fu_418_p2 = (!tmp_450_reg_500.read().is_01() || !tmp_229_cast8_fu_405_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(tmp_450_reg_500.read()) + sc_biguint<11>(tmp_229_cast8_fu_405_p1.read()));
}

void shuffle_48_r_p::thread_tmp_518_fu_207_p1() {
    tmp_518_fu_207_p1 = co_reg_174.read().range(1-1, 0);
}

void shuffle_48_r_p::thread_tmp_519_fu_328_p3() {
    tmp_519_fu_328_p3 = esl_concat<11,3>(tmp_447_fu_323_p2.read(), ap_const_lv3_0);
}

void shuffle_48_r_p::thread_tmp_520_fu_340_p3() {
    tmp_520_fu_340_p3 = esl_concat<11,1>(tmp_447_fu_323_p2.read(), ap_const_lv1_0);
}

void shuffle_48_r_p::thread_tmp_521_fu_363_p3() {
    tmp_521_fu_363_p3 = esl_concat<7,3>(tmp_449_fu_358_p2.read(), ap_const_lv3_0);
}

void shuffle_48_r_p::thread_tmp_522_fu_375_p3() {
    tmp_522_fu_375_p3 = esl_concat<7,1>(tmp_449_fu_358_p2.read(), ap_const_lv1_0);
}

void shuffle_48_r_p::thread_tmp_540_cast_fu_456_p1() {
    tmp_540_cast_fu_456_p1 = esl_zext<64,15>(tmp_451_reg_513.read());
}

void shuffle_48_r_p::thread_tmp_541_cast_fu_423_p1() {
    tmp_541_cast_fu_423_p1 = esl_zext<64,11>(tmp_452_fu_418_p2.read());
}

void shuffle_48_r_p::thread_tmp_s_fu_223_p3() {
    tmp_s_fu_223_p3 = esl_concat<7,3>(co_reg_174.read(), ap_const_lv3_0);
}

void shuffle_48_r_p::thread_w_28_fu_399_p2() {
    w_28_fu_399_p2 = (!w_reg_196.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(w_reg_196.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void shuffle_48_r_p::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond3_fu_211_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond2_fu_303_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_393_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_393_p2.read()) && esl_seteq<1,1,1>(tmp_518_reg_460.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXXX";
            break;
    }
}

}

