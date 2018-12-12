// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "subconv_1x1_16.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic subconv_1x1_16::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic subconv_1x1_16::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state1 = "1";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state2 = "10";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state3 = "100";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state4 = "1000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state5 = "10000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state6 = "100000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state7 = "1000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state8 = "10000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state9 = "100000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state10 = "1000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state11 = "10000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state12 = "100000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state15 = "100000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state16 = "1000000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state17 = "10000000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state18 = "100000000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state19 = "1000000000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state20 = "10000000000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state21 = "100000000000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state22 = "1000000000000000000000";
const sc_lv<23> subconv_1x1_16::ap_ST_fsm_state23 = "10000000000000000000000";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_1 = "1";
const sc_lv<1> subconv_1x1_16::ap_const_lv1_0 = "0";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_2 = "10";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_3 = "11";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_4 = "100";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_5 = "101";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_9 = "1001";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_E = "1110";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_F = "1111";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_14 = "10100";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_15 = "10101";
const sc_lv<5> subconv_1x1_16::ap_const_lv5_0 = "00000";
const sc_lv<1> subconv_1x1_16::ap_const_lv1_1 = "1";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_16 = "10110";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_A = "1010";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_10 = "10000";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_6 = "110";
const sc_lv<5> subconv_1x1_16::ap_const_lv5_18 = "11000";
const sc_lv<5> subconv_1x1_16::ap_const_lv5_1 = "1";
const sc_lv<3> subconv_1x1_16::ap_const_lv3_0 = "000";
const sc_lv<4> subconv_1x1_16::ap_const_lv4_0 = "0000";
const sc_lv<5> subconv_1x1_16::ap_const_lv5_10 = "10000";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_17 = "10111";
const sc_lv<32> subconv_1x1_16::ap_const_lv32_1E = "11110";
const sc_lv<8> subconv_1x1_16::ap_const_lv8_FF = "11111111";
const sc_lv<23> subconv_1x1_16::ap_const_lv23_0 = "00000000000000000000000";
const sc_lv<5> subconv_1x1_16::ap_const_lv5_2 = "10";
const bool subconv_1x1_16::ap_const_boolean_1 = true;

subconv_1x1_16::subconv_1x1_16(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ShuffleNetV2_faddbkb_x_U21 = new ShuffleNetV2_faddbkb<1,5,32,32,32>("ShuffleNetV2_faddbkb_x_U21");
    ShuffleNetV2_faddbkb_x_U21->clk(ap_clk);
    ShuffleNetV2_faddbkb_x_U21->reset(ap_rst);
    ShuffleNetV2_faddbkb_x_U21->din0(sum_reg_127);
    ShuffleNetV2_faddbkb_x_U21->din1(grp_fu_150_p1);
    ShuffleNetV2_faddbkb_x_U21->ce(ap_var_for_const0);
    ShuffleNetV2_faddbkb_x_U21->dout(grp_fu_150_p2);
    ShuffleNetV2_fmulcud_x_U22 = new ShuffleNetV2_fmulcud<1,4,32,32,32>("ShuffleNetV2_fmulcud_x_U22");
    ShuffleNetV2_fmulcud_x_U22->clk(ap_clk);
    ShuffleNetV2_fmulcud_x_U22->reset(ap_rst);
    ShuffleNetV2_fmulcud_x_U22->din0(weight_load_reg_464);
    ShuffleNetV2_fmulcud_x_U22->din1(input_load_reg_469);
    ShuffleNetV2_fmulcud_x_U22->ce(ap_var_for_const0);
    ShuffleNetV2_fmulcud_x_U22->dout(grp_fu_155_p2);
    ShuffleNetV2_fcmpdEe_x_U23 = new ShuffleNetV2_fcmpdEe<1,1,32,32,1>("ShuffleNetV2_fcmpdEe_x_U23");
    ShuffleNetV2_fcmpdEe_x_U23->din0(result_reg_489);
    ShuffleNetV2_fcmpdEe_x_U23->din1(ap_var_for_const1);
    ShuffleNetV2_fcmpdEe_x_U23->opcode(ap_var_for_const2);
    ShuffleNetV2_fcmpdEe_x_U23->dout(tmp_29_fu_159_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state15);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state16);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state17);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state21);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state22);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state23);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_164_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_164_p2 );

    SC_METHOD(thread_bias_address0);
    sensitive << ( bias_addr_reg_405 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_bias_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ci_6_fu_284_p2);
    sensitive << ( ci_reg_139 );

    SC_METHOD(thread_co_12_fu_170_p2);
    sensitive << ( co_reg_94 );

    SC_METHOD(thread_exitcond1_fu_252_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_116 );

    SC_METHOD(thread_exitcond2_fu_223_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_105 );

    SC_METHOD(thread_exitcond3_fu_164_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_94 );

    SC_METHOD(thread_exitcond_fu_278_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ci_reg_139 );

    SC_METHOD(thread_grp_fu_150_p1);
    sensitive << ( tmp_96_reg_474 );
    sensitive << ( bias_load_reg_484 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( ap_CS_fsm_state17 );

    SC_METHOD(thread_h_12_fu_229_p2);
    sensitive << ( h_reg_105 );

    SC_METHOD(thread_input_r_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_216_cast_fu_324_p1 );

    SC_METHOD(thread_input_r_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_notlhs_fu_356_p2);
    sensitive << ( ap_CS_fsm_state23 );
    sensitive << ( tmp_26_fu_342_p4 );

    SC_METHOD(thread_notrhs_fu_362_p2);
    sensitive << ( ap_CS_fsm_state23 );
    sensitive << ( tmp_93_fu_352_p1 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( output_addr_reg_441 );
    sensitive << ( ap_CS_fsm_state23 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state23 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( result_reg_489 );
    sensitive << ( ap_CS_fsm_state23 );
    sensitive << ( tmp_30_fu_374_p2 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_CS_fsm_state23 );

    SC_METHOD(thread_p_shl1_cast_fu_201_p1);
    sensitive << ( tmp_132_fu_193_p3 );

    SC_METHOD(thread_p_shl_cast_fu_189_p1);
    sensitive << ( tmp_s_fu_181_p3 );

    SC_METHOD(thread_result_to_int_fu_339_p1);
    sensitive << ( result_reg_489 );

    SC_METHOD(thread_tmp_132_fu_193_p3);
    sensitive << ( co_reg_94 );

    SC_METHOD(thread_tmp_133_fu_205_p2);
    sensitive << ( p_shl_cast_fu_189_p1 );
    sensitive << ( p_shl1_cast_fu_201_p1 );

    SC_METHOD(thread_tmp_134_fu_211_p3);
    sensitive << ( co_reg_94 );

    SC_METHOD(thread_tmp_135_fu_239_p2);
    sensitive << ( tmp_206_cast_reg_400 );
    sensitive << ( tmp_cast_fu_235_p1 );

    SC_METHOD(thread_tmp_136_fu_268_p2);
    sensitive << ( tmp_209_cast_reg_423 );
    sensitive << ( tmp_94_cast_fu_264_p1 );

    SC_METHOD(thread_tmp_137_fu_294_p3);
    sensitive << ( ci_reg_139 );

    SC_METHOD(thread_tmp_138_fu_306_p2);
    sensitive << ( tmp_cast_reg_418 );
    sensitive << ( tmp_212_cast_fu_302_p1 );

    SC_METHOD(thread_tmp_139_fu_319_p2);
    sensitive << ( tmp_94_cast_reg_436 );
    sensitive << ( tmp_215_cast_fu_311_p3 );

    SC_METHOD(thread_tmp_140_fu_329_p2);
    sensitive << ( tmp_133_reg_395 );
    sensitive << ( tmp_95_cast_fu_290_p1 );

    SC_METHOD(thread_tmp_206_cast_fu_219_p1);
    sensitive << ( tmp_134_fu_211_p3 );

    SC_METHOD(thread_tmp_209_cast_fu_244_p3);
    sensitive << ( tmp_135_fu_239_p2 );

    SC_METHOD(thread_tmp_210_cast_fu_273_p1);
    sensitive << ( tmp_136_fu_268_p2 );

    SC_METHOD(thread_tmp_212_cast_fu_302_p1);
    sensitive << ( tmp_137_fu_294_p3 );

    SC_METHOD(thread_tmp_215_cast_fu_311_p3);
    sensitive << ( tmp_138_fu_306_p2 );

    SC_METHOD(thread_tmp_216_cast_fu_324_p1);
    sensitive << ( tmp_139_fu_319_p2 );

    SC_METHOD(thread_tmp_217_cast_fu_334_p1);
    sensitive << ( tmp_140_fu_329_p2 );

    SC_METHOD(thread_tmp_26_fu_342_p4);
    sensitive << ( result_to_int_fu_339_p1 );

    SC_METHOD(thread_tmp_28_fu_368_p2);
    sensitive << ( notrhs_fu_362_p2 );
    sensitive << ( notlhs_fu_356_p2 );

    SC_METHOD(thread_tmp_30_fu_374_p2);
    sensitive << ( tmp_29_reg_496 );
    sensitive << ( tmp_28_fu_368_p2 );

    SC_METHOD(thread_tmp_93_fu_352_p1);
    sensitive << ( result_to_int_fu_339_p1 );

    SC_METHOD(thread_tmp_94_cast_fu_264_p1);
    sensitive << ( w_reg_116 );

    SC_METHOD(thread_tmp_95_cast_fu_290_p1);
    sensitive << ( ci_reg_139 );

    SC_METHOD(thread_tmp_cast_fu_235_p1);
    sensitive << ( h_reg_105 );

    SC_METHOD(thread_tmp_fu_176_p1);
    sensitive << ( co_reg_94 );

    SC_METHOD(thread_tmp_s_fu_181_p3);
    sensitive << ( co_reg_94 );

    SC_METHOD(thread_w_12_fu_258_p2);
    sensitive << ( w_reg_116 );

    SC_METHOD(thread_weight_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_217_cast_fu_334_p1 );

    SC_METHOD(thread_weight_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_164_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond2_fu_223_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_252_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( exitcond_fu_278_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const2);

    ap_CS_fsm = "00000000000000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "subconv_1x1_16_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, input_r_address0, "(port)input_r_address0");
    sc_trace(mVcdFile, input_r_ce0, "(port)input_r_ce0");
    sc_trace(mVcdFile, input_r_q0, "(port)input_r_q0");
    sc_trace(mVcdFile, weight_address0, "(port)weight_address0");
    sc_trace(mVcdFile, weight_ce0, "(port)weight_ce0");
    sc_trace(mVcdFile, weight_q0, "(port)weight_q0");
    sc_trace(mVcdFile, bias_address0, "(port)bias_address0");
    sc_trace(mVcdFile, bias_ce0, "(port)bias_ce0");
    sc_trace(mVcdFile, bias_q0, "(port)bias_q0");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, co_12_fu_170_p2, "co_12_fu_170_p2");
    sc_trace(mVcdFile, co_12_reg_390, "co_12_reg_390");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_133_fu_205_p2, "tmp_133_fu_205_p2");
    sc_trace(mVcdFile, tmp_133_reg_395, "tmp_133_reg_395");
    sc_trace(mVcdFile, exitcond3_fu_164_p2, "exitcond3_fu_164_p2");
    sc_trace(mVcdFile, tmp_206_cast_fu_219_p1, "tmp_206_cast_fu_219_p1");
    sc_trace(mVcdFile, tmp_206_cast_reg_400, "tmp_206_cast_reg_400");
    sc_trace(mVcdFile, bias_addr_reg_405, "bias_addr_reg_405");
    sc_trace(mVcdFile, h_12_fu_229_p2, "h_12_fu_229_p2");
    sc_trace(mVcdFile, h_12_reg_413, "h_12_reg_413");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_cast_fu_235_p1, "tmp_cast_fu_235_p1");
    sc_trace(mVcdFile, tmp_cast_reg_418, "tmp_cast_reg_418");
    sc_trace(mVcdFile, exitcond2_fu_223_p2, "exitcond2_fu_223_p2");
    sc_trace(mVcdFile, tmp_209_cast_fu_244_p3, "tmp_209_cast_fu_244_p3");
    sc_trace(mVcdFile, tmp_209_cast_reg_423, "tmp_209_cast_reg_423");
    sc_trace(mVcdFile, w_12_fu_258_p2, "w_12_fu_258_p2");
    sc_trace(mVcdFile, w_12_reg_431, "w_12_reg_431");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_94_cast_fu_264_p1, "tmp_94_cast_fu_264_p1");
    sc_trace(mVcdFile, tmp_94_cast_reg_436, "tmp_94_cast_reg_436");
    sc_trace(mVcdFile, exitcond1_fu_252_p2, "exitcond1_fu_252_p2");
    sc_trace(mVcdFile, output_addr_reg_441, "output_addr_reg_441");
    sc_trace(mVcdFile, ci_6_fu_284_p2, "ci_6_fu_284_p2");
    sc_trace(mVcdFile, ci_6_reg_449, "ci_6_reg_449");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, exitcond_fu_278_p2, "exitcond_fu_278_p2");
    sc_trace(mVcdFile, weight_load_reg_464, "weight_load_reg_464");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, input_load_reg_469, "input_load_reg_469");
    sc_trace(mVcdFile, grp_fu_155_p2, "grp_fu_155_p2");
    sc_trace(mVcdFile, tmp_96_reg_474, "tmp_96_reg_474");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, grp_fu_150_p2, "grp_fu_150_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state15, "ap_CS_fsm_state15");
    sc_trace(mVcdFile, bias_load_reg_484, "bias_load_reg_484");
    sc_trace(mVcdFile, ap_CS_fsm_state16, "ap_CS_fsm_state16");
    sc_trace(mVcdFile, result_reg_489, "result_reg_489");
    sc_trace(mVcdFile, ap_CS_fsm_state21, "ap_CS_fsm_state21");
    sc_trace(mVcdFile, tmp_29_fu_159_p2, "tmp_29_fu_159_p2");
    sc_trace(mVcdFile, tmp_29_reg_496, "tmp_29_reg_496");
    sc_trace(mVcdFile, ap_CS_fsm_state22, "ap_CS_fsm_state22");
    sc_trace(mVcdFile, co_reg_94, "co_reg_94");
    sc_trace(mVcdFile, h_reg_105, "h_reg_105");
    sc_trace(mVcdFile, w_reg_116, "w_reg_116");
    sc_trace(mVcdFile, ap_CS_fsm_state23, "ap_CS_fsm_state23");
    sc_trace(mVcdFile, sum_reg_127, "sum_reg_127");
    sc_trace(mVcdFile, ci_reg_139, "ci_reg_139");
    sc_trace(mVcdFile, tmp_fu_176_p1, "tmp_fu_176_p1");
    sc_trace(mVcdFile, tmp_210_cast_fu_273_p1, "tmp_210_cast_fu_273_p1");
    sc_trace(mVcdFile, tmp_216_cast_fu_324_p1, "tmp_216_cast_fu_324_p1");
    sc_trace(mVcdFile, tmp_217_cast_fu_334_p1, "tmp_217_cast_fu_334_p1");
    sc_trace(mVcdFile, grp_fu_150_p1, "grp_fu_150_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, ap_CS_fsm_state17, "ap_CS_fsm_state17");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_s_fu_181_p3, "tmp_s_fu_181_p3");
    sc_trace(mVcdFile, tmp_132_fu_193_p3, "tmp_132_fu_193_p3");
    sc_trace(mVcdFile, p_shl_cast_fu_189_p1, "p_shl_cast_fu_189_p1");
    sc_trace(mVcdFile, p_shl1_cast_fu_201_p1, "p_shl1_cast_fu_201_p1");
    sc_trace(mVcdFile, tmp_134_fu_211_p3, "tmp_134_fu_211_p3");
    sc_trace(mVcdFile, tmp_135_fu_239_p2, "tmp_135_fu_239_p2");
    sc_trace(mVcdFile, tmp_136_fu_268_p2, "tmp_136_fu_268_p2");
    sc_trace(mVcdFile, tmp_137_fu_294_p3, "tmp_137_fu_294_p3");
    sc_trace(mVcdFile, tmp_212_cast_fu_302_p1, "tmp_212_cast_fu_302_p1");
    sc_trace(mVcdFile, tmp_138_fu_306_p2, "tmp_138_fu_306_p2");
    sc_trace(mVcdFile, tmp_215_cast_fu_311_p3, "tmp_215_cast_fu_311_p3");
    sc_trace(mVcdFile, tmp_139_fu_319_p2, "tmp_139_fu_319_p2");
    sc_trace(mVcdFile, tmp_95_cast_fu_290_p1, "tmp_95_cast_fu_290_p1");
    sc_trace(mVcdFile, tmp_140_fu_329_p2, "tmp_140_fu_329_p2");
    sc_trace(mVcdFile, result_to_int_fu_339_p1, "result_to_int_fu_339_p1");
    sc_trace(mVcdFile, tmp_26_fu_342_p4, "tmp_26_fu_342_p4");
    sc_trace(mVcdFile, tmp_93_fu_352_p1, "tmp_93_fu_352_p1");
    sc_trace(mVcdFile, notrhs_fu_362_p2, "notrhs_fu_362_p2");
    sc_trace(mVcdFile, notlhs_fu_356_p2, "notlhs_fu_356_p2");
    sc_trace(mVcdFile, tmp_28_fu_368_p2, "tmp_28_fu_368_p2");
    sc_trace(mVcdFile, tmp_30_fu_374_p2, "tmp_30_fu_374_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

subconv_1x1_16::~subconv_1x1_16() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ShuffleNetV2_faddbkb_x_U21;
    delete ShuffleNetV2_fmulcud_x_U22;
    delete ShuffleNetV2_fcmpdEe_x_U23;
}

void subconv_1x1_16::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void subconv_1x1_16::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv32_0;
}

void subconv_1x1_16::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv5_2;
}

void subconv_1x1_16::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_252_p2.read()))) {
        ci_reg_139 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state15.read())) {
        ci_reg_139 = ci_6_reg_449.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_223_p2.read(), ap_const_lv1_1))) {
        co_reg_94 = co_12_reg_390.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_94 = ap_const_lv5_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_252_p2.read(), ap_const_lv1_1))) {
        h_reg_105 = h_12_reg_413.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond3_fu_164_p2.read(), ap_const_lv1_0))) {
        h_reg_105 = ap_const_lv5_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_252_p2.read()))) {
        sum_reg_127 = ap_const_lv32_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state15.read())) {
        sum_reg_127 = grp_fu_150_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_223_p2.read()))) {
        w_reg_116 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state23.read())) {
        w_reg_116 = w_12_reg_431.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond3_fu_164_p2.read(), ap_const_lv1_0))) {
        bias_addr_reg_405 =  (sc_lv<5>) (tmp_fu_176_p1.read());
        tmp_133_reg_395 = tmp_133_fu_205_p2.read();
        tmp_206_cast_reg_400 = tmp_206_cast_fu_219_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        bias_load_reg_484 = bias_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ci_6_reg_449 = ci_6_fu_284_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_12_reg_390 = co_12_fu_170_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_12_reg_413 = h_12_fu_229_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        input_load_reg_469 = input_r_q0.read();
        weight_load_reg_464 = weight_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_252_p2.read()))) {
        output_addr_reg_441 =  (sc_lv<13>) (tmp_210_cast_fu_273_p1.read());
        tmp_94_cast_reg_436 = tmp_94_cast_fu_264_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read())) {
        result_reg_489 = grp_fu_150_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_223_p2.read()))) {
        tmp_209_cast_reg_423 = tmp_209_cast_fu_244_p3.read();
        tmp_cast_reg_418 = tmp_cast_fu_235_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state22.read())) {
        tmp_29_reg_496 = tmp_29_fu_159_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        tmp_96_reg_474 = grp_fu_155_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_12_reg_431 = w_12_fu_258_p2.read();
    }
}

void subconv_1x1_16::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void subconv_1x1_16::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void subconv_1x1_16::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void subconv_1x1_16::thread_ap_CS_fsm_state15() {
    ap_CS_fsm_state15 = ap_CS_fsm.read()[14];
}

void subconv_1x1_16::thread_ap_CS_fsm_state16() {
    ap_CS_fsm_state16 = ap_CS_fsm.read()[15];
}

void subconv_1x1_16::thread_ap_CS_fsm_state17() {
    ap_CS_fsm_state17 = ap_CS_fsm.read()[16];
}

void subconv_1x1_16::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void subconv_1x1_16::thread_ap_CS_fsm_state21() {
    ap_CS_fsm_state21 = ap_CS_fsm.read()[20];
}

void subconv_1x1_16::thread_ap_CS_fsm_state22() {
    ap_CS_fsm_state22 = ap_CS_fsm.read()[21];
}

void subconv_1x1_16::thread_ap_CS_fsm_state23() {
    ap_CS_fsm_state23 = ap_CS_fsm.read()[22];
}

void subconv_1x1_16::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void subconv_1x1_16::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void subconv_1x1_16::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void subconv_1x1_16::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void subconv_1x1_16::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void subconv_1x1_16::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond3_fu_164_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond3_fu_164_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_bias_address0() {
    bias_address0 = bias_addr_reg_405.read();
}

void subconv_1x1_16::thread_bias_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        bias_ce0 = ap_const_logic_1;
    } else {
        bias_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_ci_6_fu_284_p2() {
    ci_6_fu_284_p2 = (!ci_reg_139.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(ci_reg_139.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void subconv_1x1_16::thread_co_12_fu_170_p2() {
    co_12_fu_170_p2 = (!co_reg_94.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(co_reg_94.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void subconv_1x1_16::thread_exitcond1_fu_252_p2() {
    exitcond1_fu_252_p2 = (!w_reg_116.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_116.read() == ap_const_lv5_10);
}

void subconv_1x1_16::thread_exitcond2_fu_223_p2() {
    exitcond2_fu_223_p2 = (!h_reg_105.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_105.read() == ap_const_lv5_10);
}

void subconv_1x1_16::thread_exitcond3_fu_164_p2() {
    exitcond3_fu_164_p2 = (!co_reg_94.read().is_01() || !ap_const_lv5_18.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_94.read() == ap_const_lv5_18);
}

void subconv_1x1_16::thread_exitcond_fu_278_p2() {
    exitcond_fu_278_p2 = (!ci_reg_139.read().is_01() || !ap_const_lv5_18.is_01())? sc_lv<1>(): sc_lv<1>(ci_reg_139.read() == ap_const_lv5_18);
}

void subconv_1x1_16::thread_grp_fu_150_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read())) {
        grp_fu_150_p1 = bias_load_reg_484.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        grp_fu_150_p1 = tmp_96_reg_474.read();
    } else {
        grp_fu_150_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void subconv_1x1_16::thread_h_12_fu_229_p2() {
    h_12_fu_229_p2 = (!h_reg_105.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(h_reg_105.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void subconv_1x1_16::thread_input_r_address0() {
    input_r_address0 =  (sc_lv<13>) (tmp_216_cast_fu_324_p1.read());
}

void subconv_1x1_16::thread_input_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        input_r_ce0 = ap_const_logic_1;
    } else {
        input_r_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_notlhs_fu_356_p2() {
    notlhs_fu_356_p2 = (!tmp_26_fu_342_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_26_fu_342_p4.read() != ap_const_lv8_FF);
}

void subconv_1x1_16::thread_notrhs_fu_362_p2() {
    notrhs_fu_362_p2 = (!tmp_93_fu_352_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_93_fu_352_p1.read() == ap_const_lv23_0);
}

void subconv_1x1_16::thread_output_r_address0() {
    output_r_address0 = output_addr_reg_441.read();
}

void subconv_1x1_16::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state23.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_output_r_d0() {
    output_r_d0 = (!tmp_30_fu_374_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_30_fu_374_p2.read()[0].to_bool())? result_reg_489.read(): ap_const_lv32_0);
}

void subconv_1x1_16::thread_output_r_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state23.read())) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_p_shl1_cast_fu_201_p1() {
    p_shl1_cast_fu_201_p1 = esl_zext<11,8>(tmp_132_fu_193_p3.read());
}

void subconv_1x1_16::thread_p_shl_cast_fu_189_p1() {
    p_shl_cast_fu_189_p1 = esl_zext<11,10>(tmp_s_fu_181_p3.read());
}

void subconv_1x1_16::thread_result_to_int_fu_339_p1() {
    result_to_int_fu_339_p1 = result_reg_489.read();
}

void subconv_1x1_16::thread_tmp_132_fu_193_p3() {
    tmp_132_fu_193_p3 = esl_concat<5,3>(co_reg_94.read(), ap_const_lv3_0);
}

void subconv_1x1_16::thread_tmp_133_fu_205_p2() {
    tmp_133_fu_205_p2 = (!p_shl_cast_fu_189_p1.read().is_01() || !p_shl1_cast_fu_201_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(p_shl_cast_fu_189_p1.read()) - sc_biguint<11>(p_shl1_cast_fu_201_p1.read()));
}

void subconv_1x1_16::thread_tmp_134_fu_211_p3() {
    tmp_134_fu_211_p3 = esl_concat<5,4>(co_reg_94.read(), ap_const_lv4_0);
}

void subconv_1x1_16::thread_tmp_135_fu_239_p2() {
    tmp_135_fu_239_p2 = (!tmp_cast_fu_235_p1.read().is_01() || !tmp_206_cast_reg_400.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_cast_fu_235_p1.read()) + sc_biguint<10>(tmp_206_cast_reg_400.read()));
}

void subconv_1x1_16::thread_tmp_136_fu_268_p2() {
    tmp_136_fu_268_p2 = (!tmp_209_cast_reg_423.read().is_01() || !tmp_94_cast_fu_264_p1.read().is_01())? sc_lv<14>(): (sc_biguint<14>(tmp_209_cast_reg_423.read()) + sc_biguint<14>(tmp_94_cast_fu_264_p1.read()));
}

void subconv_1x1_16::thread_tmp_137_fu_294_p3() {
    tmp_137_fu_294_p3 = esl_concat<5,4>(ci_reg_139.read(), ap_const_lv4_0);
}

void subconv_1x1_16::thread_tmp_138_fu_306_p2() {
    tmp_138_fu_306_p2 = (!tmp_cast_reg_418.read().is_01() || !tmp_212_cast_fu_302_p1.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_cast_reg_418.read()) + sc_biguint<10>(tmp_212_cast_fu_302_p1.read()));
}

void subconv_1x1_16::thread_tmp_139_fu_319_p2() {
    tmp_139_fu_319_p2 = (!tmp_94_cast_reg_436.read().is_01() || !tmp_215_cast_fu_311_p3.read().is_01())? sc_lv<14>(): (sc_biguint<14>(tmp_94_cast_reg_436.read()) + sc_biguint<14>(tmp_215_cast_fu_311_p3.read()));
}

void subconv_1x1_16::thread_tmp_140_fu_329_p2() {
    tmp_140_fu_329_p2 = (!tmp_95_cast_fu_290_p1.read().is_01() || !tmp_133_reg_395.read().is_01())? sc_lv<11>(): (sc_biguint<11>(tmp_95_cast_fu_290_p1.read()) + sc_biguint<11>(tmp_133_reg_395.read()));
}

void subconv_1x1_16::thread_tmp_206_cast_fu_219_p1() {
    tmp_206_cast_fu_219_p1 = esl_zext<10,9>(tmp_134_fu_211_p3.read());
}

void subconv_1x1_16::thread_tmp_209_cast_fu_244_p3() {
    tmp_209_cast_fu_244_p3 = esl_concat<10,4>(tmp_135_fu_239_p2.read(), ap_const_lv4_0);
}

void subconv_1x1_16::thread_tmp_210_cast_fu_273_p1() {
    tmp_210_cast_fu_273_p1 = esl_zext<64,14>(tmp_136_fu_268_p2.read());
}

void subconv_1x1_16::thread_tmp_212_cast_fu_302_p1() {
    tmp_212_cast_fu_302_p1 = esl_zext<10,9>(tmp_137_fu_294_p3.read());
}

void subconv_1x1_16::thread_tmp_215_cast_fu_311_p3() {
    tmp_215_cast_fu_311_p3 = esl_concat<10,4>(tmp_138_fu_306_p2.read(), ap_const_lv4_0);
}

void subconv_1x1_16::thread_tmp_216_cast_fu_324_p1() {
    tmp_216_cast_fu_324_p1 = esl_zext<64,14>(tmp_139_fu_319_p2.read());
}

void subconv_1x1_16::thread_tmp_217_cast_fu_334_p1() {
    tmp_217_cast_fu_334_p1 = esl_sext<64,11>(tmp_140_fu_329_p2.read());
}

void subconv_1x1_16::thread_tmp_26_fu_342_p4() {
    tmp_26_fu_342_p4 = result_to_int_fu_339_p1.read().range(30, 23);
}

void subconv_1x1_16::thread_tmp_28_fu_368_p2() {
    tmp_28_fu_368_p2 = (notrhs_fu_362_p2.read() | notlhs_fu_356_p2.read());
}

void subconv_1x1_16::thread_tmp_30_fu_374_p2() {
    tmp_30_fu_374_p2 = (tmp_28_fu_368_p2.read() & tmp_29_reg_496.read());
}

void subconv_1x1_16::thread_tmp_93_fu_352_p1() {
    tmp_93_fu_352_p1 = result_to_int_fu_339_p1.read().range(23-1, 0);
}

void subconv_1x1_16::thread_tmp_94_cast_fu_264_p1() {
    tmp_94_cast_fu_264_p1 = esl_zext<14,5>(w_reg_116.read());
}

void subconv_1x1_16::thread_tmp_95_cast_fu_290_p1() {
    tmp_95_cast_fu_290_p1 = esl_zext<11,5>(ci_reg_139.read());
}

void subconv_1x1_16::thread_tmp_cast_fu_235_p1() {
    tmp_cast_fu_235_p1 = esl_zext<10,5>(h_reg_105.read());
}

void subconv_1x1_16::thread_tmp_fu_176_p1() {
    tmp_fu_176_p1 = esl_zext<64,5>(co_reg_94.read());
}

void subconv_1x1_16::thread_tmp_s_fu_181_p3() {
    tmp_s_fu_181_p3 = esl_concat<5,5>(co_reg_94.read(), ap_const_lv5_0);
}

void subconv_1x1_16::thread_w_12_fu_258_p2() {
    w_12_fu_258_p2 = (!w_reg_116.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(w_reg_116.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void subconv_1x1_16::thread_weight_address0() {
    weight_address0 =  (sc_lv<10>) (tmp_217_cast_fu_334_p1.read());
}

void subconv_1x1_16::thread_weight_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        weight_ce0 = ap_const_logic_1;
    } else {
        weight_ce0 = ap_const_logic_0;
    }
}

void subconv_1x1_16::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond3_fu_164_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond2_fu_223_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond1_fu_252_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(exitcond_fu_278_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state16;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state15;
            break;
        case 16384 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 32768 : 
            ap_NS_fsm = ap_ST_fsm_state17;
            break;
        case 65536 : 
            ap_NS_fsm = ap_ST_fsm_state18;
            break;
        case 131072 : 
            ap_NS_fsm = ap_ST_fsm_state19;
            break;
        case 262144 : 
            ap_NS_fsm = ap_ST_fsm_state20;
            break;
        case 524288 : 
            ap_NS_fsm = ap_ST_fsm_state21;
            break;
        case 1048576 : 
            ap_NS_fsm = ap_ST_fsm_state22;
            break;
        case 2097152 : 
            ap_NS_fsm = ap_ST_fsm_state23;
            break;
        case 4194304 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<23>) ("XXXXXXXXXXXXXXXXXXXXXXX");
            break;
    }
}

}

