// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "avgpool.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic avgpool::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic avgpool::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> avgpool::ap_ST_fsm_state1 = "1";
const sc_lv<7> avgpool::ap_ST_fsm_state2 = "10";
const sc_lv<7> avgpool::ap_ST_fsm_state3 = "100";
const sc_lv<7> avgpool::ap_ST_fsm_state4 = "1000";
const sc_lv<7> avgpool::ap_ST_fsm_state5 = "10000";
const sc_lv<7> avgpool::ap_ST_fsm_state6 = "100000";
const sc_lv<7> avgpool::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> avgpool::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> avgpool::ap_const_lv32_1 = "1";
const sc_lv<1> avgpool::ap_const_lv1_0 = "0";
const sc_lv<32> avgpool::ap_const_lv32_2 = "10";
const sc_lv<1> avgpool::ap_const_lv1_1 = "1";
const sc_lv<32> avgpool::ap_const_lv32_3 = "11";
const sc_lv<32> avgpool::ap_const_lv32_4 = "100";
const sc_lv<32> avgpool::ap_const_lv32_5 = "101";
const sc_lv<10> avgpool::ap_const_lv10_0 = "0000000000";
const sc_lv<32> avgpool::ap_const_lv32_6 = "110";
const sc_lv<8> avgpool::ap_const_lv8_0 = "00000000";
const sc_lv<3> avgpool::ap_const_lv3_0 = "000";
const sc_lv<10> avgpool::ap_const_lv10_200 = "1000000000";
const sc_lv<10> avgpool::ap_const_lv10_1 = "1";
const sc_lv<2> avgpool::ap_const_lv2_0 = "00";
const sc_lv<3> avgpool::ap_const_lv3_4 = "100";
const sc_lv<3> avgpool::ap_const_lv3_1 = "1";
const sc_lv<9> avgpool::ap_const_lv9_0 = "000000000";
const sc_lv<32> avgpool::ap_const_lv32_8 = "1000";
const sc_lv<32> avgpool::ap_const_lv32_7 = "111";
const sc_lv<8> avgpool::ap_const_lv8_7F = "1111111";
const sc_lv<8> avgpool::ap_const_lv8_80 = "10000000";
const sc_lv<6> avgpool::ap_const_lv6_0 = "000000";
const bool avgpool::ap_const_boolean_1 = true;

avgpool::avgpool(sc_module_name name) : sc_module(name), mVcdFile(0) {

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

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond7_fu_137_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond7_fu_137_p2 );

    SC_METHOD(thread_brmerge_fu_295_p2);
    sensitive << ( newsignbit_reg_432 );
    sensitive << ( isneg_not_fu_290_p2 );

    SC_METHOD(thread_brmerge_i_i_i_fu_286_p2);
    sensitive << ( isneg_reg_419 );
    sensitive << ( newsignbit_reg_432 );

    SC_METHOD(thread_co_25_fu_143_p2);
    sensitive << ( co_reg_80 );

    SC_METHOD(thread_conv_last_output_V_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_465_cast_fu_235_p1 );

    SC_METHOD(thread_conv_last_output_V_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_exitcond7_fu_137_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_80 );

    SC_METHOD(thread_exitcond8_fu_165_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_103 );

    SC_METHOD(thread_exitcond_fu_214_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_126 );

    SC_METHOD(thread_h_24_fu_171_p2);
    sensitive << ( h_reg_103 );

    SC_METHOD(thread_isneg_not_fu_290_p2);
    sensitive << ( isneg_reg_419 );

    SC_METHOD(thread_output_V_address0);
    sensitive << ( tmp_reg_378 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_output_V_ce0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_output_V_d0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_15_fu_357_p3 );

    SC_METHOD(thread_output_V_we0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_p_Val2_110_fu_248_p2);
    sensitive << ( tmp_222_fu_240_p1 );
    sensitive << ( tmp_223_fu_244_p1 );

    SC_METHOD(thread_p_Val2_111_fu_262_p2);
    sensitive << ( conv_last_output_V_q0 );
    sensitive << ( p_Val2_108_reg_114 );

    SC_METHOD(thread_p_Val2_118_mux_fu_300_p3);
    sensitive << ( p_Val2_111_reg_426 );
    sensitive << ( brmerge_i_i_i_fu_286_p2 );

    SC_METHOD(thread_p_Val2_1_fu_307_p3);
    sensitive << ( p_Val2_111_reg_426 );
    sensitive << ( underflow_fu_281_p2 );

    SC_METHOD(thread_p_lshr_cast_fu_330_p1);
    sensitive << ( tmp_363_reg_401 );

    SC_METHOD(thread_p_lshr_f_cast_fu_353_p1);
    sensitive << ( tmp_14_fu_349_p1 );

    SC_METHOD(thread_p_neg_fu_198_p2);
    sensitive << ( tmp_tr_fu_194_p1 );

    SC_METHOD(thread_p_neg_t_fu_333_p2);
    sensitive << ( p_lshr_cast_fu_330_p1 );

    SC_METHOD(thread_sum_V_fu_314_p3);
    sensitive << ( brmerge_fu_295_p2 );
    sensitive << ( p_Val2_118_mux_fu_300_p3 );
    sensitive << ( p_Val2_1_fu_307_p3 );

    SC_METHOD(thread_tmp_13_fu_339_p4);
    sensitive << ( p_Val2_s_reg_91 );

    SC_METHOD(thread_tmp_14_fu_349_p1);
    sensitive << ( tmp_13_fu_339_p4 );

    SC_METHOD(thread_tmp_15_fu_357_p3);
    sensitive << ( tmp_310_fu_322_p3 );
    sensitive << ( p_neg_t_fu_333_p2 );
    sensitive << ( p_lshr_f_cast_fu_353_p1 );

    SC_METHOD(thread_tmp_221_cast_fu_226_p1);
    sensitive << ( w_reg_126 );

    SC_METHOD(thread_tmp_222_fu_240_p1);
    sensitive << ( p_Val2_108_reg_114 );

    SC_METHOD(thread_tmp_223_fu_244_p1);
    sensitive << ( conv_last_output_V_q0 );

    SC_METHOD(thread_tmp_224_fu_276_p2);
    sensitive << ( newsignbit_reg_432 );

    SC_METHOD(thread_tmp_310_fu_322_p3);
    sensitive << ( p_Val2_s_reg_91 );

    SC_METHOD(thread_tmp_364_fu_181_p2);
    sensitive << ( tmp_460_cast_reg_383 );
    sensitive << ( tmp_cast_fu_177_p1 );

    SC_METHOD(thread_tmp_365_fu_230_p2);
    sensitive << ( tmp_464_cast_reg_396 );
    sensitive << ( tmp_221_cast_fu_226_p1 );

    SC_METHOD(thread_tmp_460_cast_fu_161_p1);
    sensitive << ( tmp_s_fu_153_p3 );

    SC_METHOD(thread_tmp_464_cast_fu_186_p3);
    sensitive << ( tmp_364_fu_181_p2 );

    SC_METHOD(thread_tmp_465_cast_fu_235_p1);
    sensitive << ( tmp_365_fu_230_p2 );

    SC_METHOD(thread_tmp_cast_fu_177_p1);
    sensitive << ( h_reg_103 );

    SC_METHOD(thread_tmp_fu_149_p1);
    sensitive << ( co_reg_80 );

    SC_METHOD(thread_tmp_s_fu_153_p3);
    sensitive << ( co_reg_80 );

    SC_METHOD(thread_tmp_tr_fu_194_p1);
    sensitive << ( p_Val2_s_reg_91 );

    SC_METHOD(thread_underflow_fu_281_p2);
    sensitive << ( isneg_reg_419 );
    sensitive << ( tmp_224_fu_276_p2 );

    SC_METHOD(thread_w_24_fu_220_p2);
    sensitive << ( w_reg_126 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond7_fu_137_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond8_fu_165_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_214_p2 );

    ap_CS_fsm = "0000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "avgpool_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, conv_last_output_V_address0, "(port)conv_last_output_V_address0");
    sc_trace(mVcdFile, conv_last_output_V_ce0, "(port)conv_last_output_V_ce0");
    sc_trace(mVcdFile, conv_last_output_V_q0, "(port)conv_last_output_V_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, co_25_fu_143_p2, "co_25_fu_143_p2");
    sc_trace(mVcdFile, co_25_reg_373, "co_25_reg_373");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_149_p1, "tmp_fu_149_p1");
    sc_trace(mVcdFile, tmp_reg_378, "tmp_reg_378");
    sc_trace(mVcdFile, exitcond7_fu_137_p2, "exitcond7_fu_137_p2");
    sc_trace(mVcdFile, tmp_460_cast_fu_161_p1, "tmp_460_cast_fu_161_p1");
    sc_trace(mVcdFile, tmp_460_cast_reg_383, "tmp_460_cast_reg_383");
    sc_trace(mVcdFile, h_24_fu_171_p2, "h_24_fu_171_p2");
    sc_trace(mVcdFile, h_24_reg_391, "h_24_reg_391");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_464_cast_fu_186_p3, "tmp_464_cast_fu_186_p3");
    sc_trace(mVcdFile, tmp_464_cast_reg_396, "tmp_464_cast_reg_396");
    sc_trace(mVcdFile, exitcond8_fu_165_p2, "exitcond8_fu_165_p2");
    sc_trace(mVcdFile, tmp_363_reg_401, "tmp_363_reg_401");
    sc_trace(mVcdFile, w_24_fu_220_p2, "w_24_fu_220_p2");
    sc_trace(mVcdFile, w_24_reg_409, "w_24_reg_409");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, exitcond_fu_214_p2, "exitcond_fu_214_p2");
    sc_trace(mVcdFile, isneg_reg_419, "isneg_reg_419");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, p_Val2_111_fu_262_p2, "p_Val2_111_fu_262_p2");
    sc_trace(mVcdFile, p_Val2_111_reg_426, "p_Val2_111_reg_426");
    sc_trace(mVcdFile, newsignbit_reg_432, "newsignbit_reg_432");
    sc_trace(mVcdFile, sum_V_fu_314_p3, "sum_V_fu_314_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, co_reg_80, "co_reg_80");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, p_Val2_s_reg_91, "p_Val2_s_reg_91");
    sc_trace(mVcdFile, h_reg_103, "h_reg_103");
    sc_trace(mVcdFile, p_Val2_108_reg_114, "p_Val2_108_reg_114");
    sc_trace(mVcdFile, w_reg_126, "w_reg_126");
    sc_trace(mVcdFile, tmp_465_cast_fu_235_p1, "tmp_465_cast_fu_235_p1");
    sc_trace(mVcdFile, tmp_s_fu_153_p3, "tmp_s_fu_153_p3");
    sc_trace(mVcdFile, tmp_cast_fu_177_p1, "tmp_cast_fu_177_p1");
    sc_trace(mVcdFile, tmp_364_fu_181_p2, "tmp_364_fu_181_p2");
    sc_trace(mVcdFile, tmp_tr_fu_194_p1, "tmp_tr_fu_194_p1");
    sc_trace(mVcdFile, p_neg_fu_198_p2, "p_neg_fu_198_p2");
    sc_trace(mVcdFile, tmp_221_cast_fu_226_p1, "tmp_221_cast_fu_226_p1");
    sc_trace(mVcdFile, tmp_365_fu_230_p2, "tmp_365_fu_230_p2");
    sc_trace(mVcdFile, tmp_222_fu_240_p1, "tmp_222_fu_240_p1");
    sc_trace(mVcdFile, tmp_223_fu_244_p1, "tmp_223_fu_244_p1");
    sc_trace(mVcdFile, p_Val2_110_fu_248_p2, "p_Val2_110_fu_248_p2");
    sc_trace(mVcdFile, tmp_224_fu_276_p2, "tmp_224_fu_276_p2");
    sc_trace(mVcdFile, isneg_not_fu_290_p2, "isneg_not_fu_290_p2");
    sc_trace(mVcdFile, brmerge_i_i_i_fu_286_p2, "brmerge_i_i_i_fu_286_p2");
    sc_trace(mVcdFile, underflow_fu_281_p2, "underflow_fu_281_p2");
    sc_trace(mVcdFile, brmerge_fu_295_p2, "brmerge_fu_295_p2");
    sc_trace(mVcdFile, p_Val2_118_mux_fu_300_p3, "p_Val2_118_mux_fu_300_p3");
    sc_trace(mVcdFile, p_Val2_1_fu_307_p3, "p_Val2_1_fu_307_p3");
    sc_trace(mVcdFile, p_lshr_cast_fu_330_p1, "p_lshr_cast_fu_330_p1");
    sc_trace(mVcdFile, tmp_13_fu_339_p4, "tmp_13_fu_339_p4");
    sc_trace(mVcdFile, tmp_14_fu_349_p1, "tmp_14_fu_349_p1");
    sc_trace(mVcdFile, tmp_310_fu_322_p3, "tmp_310_fu_322_p3");
    sc_trace(mVcdFile, p_neg_t_fu_333_p2, "p_neg_t_fu_333_p2");
    sc_trace(mVcdFile, p_lshr_f_cast_fu_353_p1, "p_lshr_f_cast_fu_353_p1");
    sc_trace(mVcdFile, tmp_15_fu_357_p3, "tmp_15_fu_357_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

avgpool::~avgpool() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void avgpool::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        co_reg_80 = co_25_reg_373.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_80 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_214_p2.read()))) {
        h_reg_103 = h_24_reg_391.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond7_fu_137_p2.read(), ap_const_lv1_0))) {
        h_reg_103 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        p_Val2_108_reg_114 = sum_V_fu_314_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond8_fu_165_p2.read()))) {
        p_Val2_108_reg_114 = p_Val2_s_reg_91.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_214_p2.read()))) {
        p_Val2_s_reg_91 = p_Val2_108_reg_114.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond7_fu_137_p2.read(), ap_const_lv1_0))) {
        p_Val2_s_reg_91 = ap_const_lv8_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        w_reg_126 = w_24_reg_409.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond8_fu_165_p2.read()))) {
        w_reg_126 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_25_reg_373 = co_25_fu_143_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_24_reg_391 = h_24_fu_171_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        isneg_reg_419 = p_Val2_110_fu_248_p2.read().range(8, 8);
        newsignbit_reg_432 = p_Val2_111_fu_262_p2.read().range(7, 7);
        p_Val2_111_reg_426 = p_Val2_111_fu_262_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond8_fu_165_p2.read(), ap_const_lv1_1))) {
        tmp_363_reg_401 = p_neg_fu_198_p2.read().range(8, 4);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond7_fu_137_p2.read(), ap_const_lv1_0))) {
        tmp_460_cast_reg_383 = tmp_460_cast_fu_161_p1.read();
        tmp_reg_378 = tmp_fu_149_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond8_fu_165_p2.read()))) {
        tmp_464_cast_reg_396 = tmp_464_cast_fu_186_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_24_reg_409 = w_24_fu_220_p2.read();
    }
}

void avgpool::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void avgpool::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void avgpool::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void avgpool::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void avgpool::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void avgpool::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void avgpool::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void avgpool::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond7_fu_137_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void avgpool::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void avgpool::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond7_fu_137_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void avgpool::thread_brmerge_fu_295_p2() {
    brmerge_fu_295_p2 = (newsignbit_reg_432.read() | isneg_not_fu_290_p2.read());
}

void avgpool::thread_brmerge_i_i_i_fu_286_p2() {
    brmerge_i_i_i_fu_286_p2 = (isneg_reg_419.read() ^ newsignbit_reg_432.read());
}

void avgpool::thread_co_25_fu_143_p2() {
    co_25_fu_143_p2 = (!co_reg_80.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(co_reg_80.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void avgpool::thread_conv_last_output_V_address0() {
    conv_last_output_V_address0 =  (sc_lv<13>) (tmp_465_cast_fu_235_p1.read());
}

void avgpool::thread_conv_last_output_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_exitcond7_fu_137_p2() {
    exitcond7_fu_137_p2 = (!co_reg_80.read().is_01() || !ap_const_lv10_200.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_80.read() == ap_const_lv10_200);
}

void avgpool::thread_exitcond8_fu_165_p2() {
    exitcond8_fu_165_p2 = (!h_reg_103.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_103.read() == ap_const_lv3_4);
}

void avgpool::thread_exitcond_fu_214_p2() {
    exitcond_fu_214_p2 = (!w_reg_126.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_126.read() == ap_const_lv3_4);
}

void avgpool::thread_h_24_fu_171_p2() {
    h_24_fu_171_p2 = (!h_reg_103.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(h_reg_103.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void avgpool::thread_isneg_not_fu_290_p2() {
    isneg_not_fu_290_p2 = (isneg_reg_419.read() ^ ap_const_lv1_1);
}

void avgpool::thread_output_V_address0() {
    output_V_address0 =  (sc_lv<9>) (tmp_reg_378.read());
}

void avgpool::thread_output_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        output_V_ce0 = ap_const_logic_1;
    } else {
        output_V_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_output_V_d0() {
    output_V_d0 = esl_sext<8,6>(tmp_15_fu_357_p3.read());
}

void avgpool::thread_output_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        output_V_we0 = ap_const_logic_1;
    } else {
        output_V_we0 = ap_const_logic_0;
    }
}

void avgpool::thread_p_Val2_110_fu_248_p2() {
    p_Val2_110_fu_248_p2 = (!tmp_222_fu_240_p1.read().is_01() || !tmp_223_fu_244_p1.read().is_01())? sc_lv<9>(): (sc_bigint<9>(tmp_222_fu_240_p1.read()) + sc_bigint<9>(tmp_223_fu_244_p1.read()));
}

void avgpool::thread_p_Val2_111_fu_262_p2() {
    p_Val2_111_fu_262_p2 = (!p_Val2_108_reg_114.read().is_01() || !conv_last_output_V_q0.read().is_01())? sc_lv<8>(): (sc_biguint<8>(p_Val2_108_reg_114.read()) + sc_biguint<8>(conv_last_output_V_q0.read()));
}

void avgpool::thread_p_Val2_118_mux_fu_300_p3() {
    p_Val2_118_mux_fu_300_p3 = (!brmerge_i_i_i_fu_286_p2.read()[0].is_01())? sc_lv<8>(): ((brmerge_i_i_i_fu_286_p2.read()[0].to_bool())? ap_const_lv8_7F: p_Val2_111_reg_426.read());
}

void avgpool::thread_p_Val2_1_fu_307_p3() {
    p_Val2_1_fu_307_p3 = (!underflow_fu_281_p2.read()[0].is_01())? sc_lv<8>(): ((underflow_fu_281_p2.read()[0].to_bool())? ap_const_lv8_80: p_Val2_111_reg_426.read());
}

void avgpool::thread_p_lshr_cast_fu_330_p1() {
    p_lshr_cast_fu_330_p1 = esl_zext<6,5>(tmp_363_reg_401.read());
}

void avgpool::thread_p_lshr_f_cast_fu_353_p1() {
    p_lshr_f_cast_fu_353_p1 = esl_zext<6,5>(tmp_14_fu_349_p1.read());
}

void avgpool::thread_p_neg_fu_198_p2() {
    p_neg_fu_198_p2 = (!ap_const_lv9_0.is_01() || !tmp_tr_fu_194_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_0) - sc_bigint<9>(tmp_tr_fu_194_p1.read()));
}

void avgpool::thread_p_neg_t_fu_333_p2() {
    p_neg_t_fu_333_p2 = (!ap_const_lv6_0.is_01() || !p_lshr_cast_fu_330_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_0) - sc_biguint<6>(p_lshr_cast_fu_330_p1.read()));
}

void avgpool::thread_sum_V_fu_314_p3() {
    sum_V_fu_314_p3 = (!brmerge_fu_295_p2.read()[0].is_01())? sc_lv<8>(): ((brmerge_fu_295_p2.read()[0].to_bool())? p_Val2_118_mux_fu_300_p3.read(): p_Val2_1_fu_307_p3.read());
}

void avgpool::thread_tmp_13_fu_339_p4() {
    tmp_13_fu_339_p4 = p_Val2_s_reg_91.read().range(7, 4);
}

void avgpool::thread_tmp_14_fu_349_p1() {
    tmp_14_fu_349_p1 = esl_sext<5,4>(tmp_13_fu_339_p4.read());
}

void avgpool::thread_tmp_15_fu_357_p3() {
    tmp_15_fu_357_p3 = (!tmp_310_fu_322_p3.read()[0].is_01())? sc_lv<6>(): ((tmp_310_fu_322_p3.read()[0].to_bool())? p_neg_t_fu_333_p2.read(): p_lshr_f_cast_fu_353_p1.read());
}

void avgpool::thread_tmp_221_cast_fu_226_p1() {
    tmp_221_cast_fu_226_p1 = esl_zext<15,3>(w_reg_126.read());
}

void avgpool::thread_tmp_222_fu_240_p1() {
    tmp_222_fu_240_p1 = esl_sext<9,8>(p_Val2_108_reg_114.read());
}

void avgpool::thread_tmp_223_fu_244_p1() {
    tmp_223_fu_244_p1 = esl_sext<9,8>(conv_last_output_V_q0.read());
}

void avgpool::thread_tmp_224_fu_276_p2() {
    tmp_224_fu_276_p2 = (newsignbit_reg_432.read() ^ ap_const_lv1_1);
}

void avgpool::thread_tmp_310_fu_322_p3() {
    tmp_310_fu_322_p3 = p_Val2_s_reg_91.read().range(7, 7);
}

void avgpool::thread_tmp_364_fu_181_p2() {
    tmp_364_fu_181_p2 = (!tmp_cast_fu_177_p1.read().is_01() || !tmp_460_cast_reg_383.read().is_01())? sc_lv<13>(): (sc_biguint<13>(tmp_cast_fu_177_p1.read()) + sc_biguint<13>(tmp_460_cast_reg_383.read()));
}

void avgpool::thread_tmp_365_fu_230_p2() {
    tmp_365_fu_230_p2 = (!tmp_464_cast_reg_396.read().is_01() || !tmp_221_cast_fu_226_p1.read().is_01())? sc_lv<15>(): (sc_biguint<15>(tmp_464_cast_reg_396.read()) + sc_biguint<15>(tmp_221_cast_fu_226_p1.read()));
}

void avgpool::thread_tmp_460_cast_fu_161_p1() {
    tmp_460_cast_fu_161_p1 = esl_zext<13,12>(tmp_s_fu_153_p3.read());
}

void avgpool::thread_tmp_464_cast_fu_186_p3() {
    tmp_464_cast_fu_186_p3 = esl_concat<13,2>(tmp_364_fu_181_p2.read(), ap_const_lv2_0);
}

void avgpool::thread_tmp_465_cast_fu_235_p1() {
    tmp_465_cast_fu_235_p1 = esl_zext<64,15>(tmp_365_fu_230_p2.read());
}

void avgpool::thread_tmp_cast_fu_177_p1() {
    tmp_cast_fu_177_p1 = esl_zext<13,3>(h_reg_103.read());
}

void avgpool::thread_tmp_fu_149_p1() {
    tmp_fu_149_p1 = esl_zext<64,10>(co_reg_80.read());
}

void avgpool::thread_tmp_s_fu_153_p3() {
    tmp_s_fu_153_p3 = esl_concat<10,2>(co_reg_80.read(), ap_const_lv2_0);
}

void avgpool::thread_tmp_tr_fu_194_p1() {
    tmp_tr_fu_194_p1 = esl_sext<9,8>(p_Val2_s_reg_91.read());
}

void avgpool::thread_underflow_fu_281_p2() {
    underflow_fu_281_p2 = (isneg_reg_419.read() & tmp_224_fu_276_p2.read());
}

void avgpool::thread_w_24_fu_220_p2() {
    w_24_fu_220_p2 = (!w_reg_126.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(w_reg_126.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void avgpool::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond7_fu_137_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond8_fu_165_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_214_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
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
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXXXXX";
            break;
    }
}

}
