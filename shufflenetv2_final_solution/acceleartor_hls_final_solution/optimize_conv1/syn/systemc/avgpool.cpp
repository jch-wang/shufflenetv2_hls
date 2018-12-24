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
const sc_lv<32> avgpool::ap_const_lv32_9 = "1001";
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
    ShuffleNetV2_mux_jbC_x_U326 = new ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>("ShuffleNetV2_mux_jbC_x_U326");
    ShuffleNetV2_mux_jbC_x_U326->din1(conv_last_output_V_0_q0);
    ShuffleNetV2_mux_jbC_x_U326->din2(conv_last_output_V_1_q0);
    ShuffleNetV2_mux_jbC_x_U326->din3(conv_last_output_V_2_q0);
    ShuffleNetV2_mux_jbC_x_U326->din4(conv_last_output_V_3_q0);
    ShuffleNetV2_mux_jbC_x_U326->din5(conv_last_output_V_4_q0);
    ShuffleNetV2_mux_jbC_x_U326->din6(conv_last_output_V_5_q0);
    ShuffleNetV2_mux_jbC_x_U326->din7(conv_last_output_V_6_q0);
    ShuffleNetV2_mux_jbC_x_U326->din8(conv_last_output_V_7_q0);
    ShuffleNetV2_mux_jbC_x_U326->din9(tmp_676_reg_531);
    ShuffleNetV2_mux_jbC_x_U326->dout(p_Val2_64_fu_371_p10);

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
    sensitive << ( exitcond35_fu_243_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond35_fu_243_p2 );

    SC_METHOD(thread_brmerge_fu_443_p2);
    sensitive << ( newsignbit_reg_620 );
    sensitive << ( isneg_not_fu_438_p2 );

    SC_METHOD(thread_brmerge_i_i_i_fu_434_p2);
    sensitive << ( isneg_reg_607 );
    sensitive << ( newsignbit_reg_620 );

    SC_METHOD(thread_co_33_fu_249_p2);
    sensitive << ( co_reg_186 );

    SC_METHOD(thread_conv_last_output_V_0_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_0_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_conv_last_output_V_1_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_1_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_conv_last_output_V_2_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_2_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_conv_last_output_V_3_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_3_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_conv_last_output_V_4_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_4_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_conv_last_output_V_5_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_5_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_conv_last_output_V_6_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_6_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_conv_last_output_V_7_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_718_cast_fu_355_p1 );

    SC_METHOD(thread_conv_last_output_V_7_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_exitcond34_fu_285_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_209 );

    SC_METHOD(thread_exitcond35_fu_243_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_186 );

    SC_METHOD(thread_exitcond_fu_334_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_232 );

    SC_METHOD(thread_h_31_fu_291_p2);
    sensitive << ( h_reg_209 );

    SC_METHOD(thread_isneg_not_fu_438_p2);
    sensitive << ( isneg_reg_607 );

    SC_METHOD(thread_newIndex_fu_263_p4);
    sensitive << ( co_reg_186 );

    SC_METHOD(thread_output_V_address0);
    sensitive << ( tmp_reg_526 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_output_V_ce0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_output_V_d0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_78_fu_505_p3 );

    SC_METHOD(thread_output_V_we0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_p_Val2_101_mux_fu_448_p3);
    sensitive << ( p_Val2_66_reg_614 );
    sensitive << ( brmerge_i_i_i_fu_434_p2 );

    SC_METHOD(thread_p_Val2_1_fu_455_p3);
    sensitive << ( p_Val2_66_reg_614 );
    sensitive << ( underflow_fu_429_p2 );

    SC_METHOD(thread_p_Val2_65_fu_396_p2);
    sensitive << ( tmp_281_fu_367_p1 );
    sensitive << ( tmp_282_fu_392_p1 );

    SC_METHOD(thread_p_Val2_66_fu_410_p2);
    sensitive << ( p_Val2_63_reg_220 );
    sensitive << ( p_Val2_64_fu_371_p10 );

    SC_METHOD(thread_p_lshr_cast_fu_478_p1);
    sensitive << ( tmp_555_reg_554 );

    SC_METHOD(thread_p_lshr_f_cast_fu_501_p1);
    sensitive << ( tmp_77_fu_497_p1 );

    SC_METHOD(thread_p_neg_fu_318_p2);
    sensitive << ( tmp_tr_fu_314_p1 );

    SC_METHOD(thread_p_neg_t_fu_481_p2);
    sensitive << ( p_lshr_cast_fu_478_p1 );

    SC_METHOD(thread_sum_V_fu_462_p3);
    sensitive << ( brmerge_fu_443_p2 );
    sensitive << ( p_Val2_101_mux_fu_448_p3 );
    sensitive << ( p_Val2_1_fu_455_p3 );

    SC_METHOD(thread_tmp_280_cast_fu_346_p1);
    sensitive << ( w_reg_232 );

    SC_METHOD(thread_tmp_281_fu_367_p1);
    sensitive << ( p_Val2_63_reg_220 );

    SC_METHOD(thread_tmp_282_fu_392_p1);
    sensitive << ( p_Val2_64_fu_371_p10 );

    SC_METHOD(thread_tmp_283_fu_424_p2);
    sensitive << ( newsignbit_reg_620 );

    SC_METHOD(thread_tmp_556_fu_301_p2);
    sensitive << ( tmp_713_cast_reg_536 );
    sensitive << ( tmp_cast_fu_297_p1 );

    SC_METHOD(thread_tmp_557_fu_350_p2);
    sensitive << ( tmp_717_cast_reg_549 );
    sensitive << ( tmp_280_cast_fu_346_p1 );

    SC_METHOD(thread_tmp_676_fu_259_p1);
    sensitive << ( co_reg_186 );

    SC_METHOD(thread_tmp_677_fu_470_p3);
    sensitive << ( p_Val2_s_reg_197 );

    SC_METHOD(thread_tmp_713_cast_fu_281_p1);
    sensitive << ( tmp_s_fu_273_p3 );

    SC_METHOD(thread_tmp_717_cast_fu_306_p3);
    sensitive << ( tmp_556_fu_301_p2 );

    SC_METHOD(thread_tmp_718_cast_fu_355_p1);
    sensitive << ( tmp_557_fu_350_p2 );

    SC_METHOD(thread_tmp_76_fu_487_p4);
    sensitive << ( p_Val2_s_reg_197 );

    SC_METHOD(thread_tmp_77_fu_497_p1);
    sensitive << ( tmp_76_fu_487_p4 );

    SC_METHOD(thread_tmp_78_fu_505_p3);
    sensitive << ( tmp_677_fu_470_p3 );
    sensitive << ( p_neg_t_fu_481_p2 );
    sensitive << ( p_lshr_f_cast_fu_501_p1 );

    SC_METHOD(thread_tmp_cast_fu_297_p1);
    sensitive << ( h_reg_209 );

    SC_METHOD(thread_tmp_fu_255_p1);
    sensitive << ( co_reg_186 );

    SC_METHOD(thread_tmp_s_fu_273_p3);
    sensitive << ( newIndex_fu_263_p4 );

    SC_METHOD(thread_tmp_tr_fu_314_p1);
    sensitive << ( p_Val2_s_reg_197 );

    SC_METHOD(thread_underflow_fu_429_p2);
    sensitive << ( isneg_reg_607 );
    sensitive << ( tmp_283_fu_424_p2 );

    SC_METHOD(thread_w_36_fu_340_p2);
    sensitive << ( w_reg_232 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond35_fu_243_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond34_fu_285_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_334_p2 );

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
    sc_trace(mVcdFile, conv_last_output_V_0_address0, "(port)conv_last_output_V_0_address0");
    sc_trace(mVcdFile, conv_last_output_V_0_ce0, "(port)conv_last_output_V_0_ce0");
    sc_trace(mVcdFile, conv_last_output_V_0_q0, "(port)conv_last_output_V_0_q0");
    sc_trace(mVcdFile, conv_last_output_V_1_address0, "(port)conv_last_output_V_1_address0");
    sc_trace(mVcdFile, conv_last_output_V_1_ce0, "(port)conv_last_output_V_1_ce0");
    sc_trace(mVcdFile, conv_last_output_V_1_q0, "(port)conv_last_output_V_1_q0");
    sc_trace(mVcdFile, conv_last_output_V_2_address0, "(port)conv_last_output_V_2_address0");
    sc_trace(mVcdFile, conv_last_output_V_2_ce0, "(port)conv_last_output_V_2_ce0");
    sc_trace(mVcdFile, conv_last_output_V_2_q0, "(port)conv_last_output_V_2_q0");
    sc_trace(mVcdFile, conv_last_output_V_3_address0, "(port)conv_last_output_V_3_address0");
    sc_trace(mVcdFile, conv_last_output_V_3_ce0, "(port)conv_last_output_V_3_ce0");
    sc_trace(mVcdFile, conv_last_output_V_3_q0, "(port)conv_last_output_V_3_q0");
    sc_trace(mVcdFile, conv_last_output_V_4_address0, "(port)conv_last_output_V_4_address0");
    sc_trace(mVcdFile, conv_last_output_V_4_ce0, "(port)conv_last_output_V_4_ce0");
    sc_trace(mVcdFile, conv_last_output_V_4_q0, "(port)conv_last_output_V_4_q0");
    sc_trace(mVcdFile, conv_last_output_V_5_address0, "(port)conv_last_output_V_5_address0");
    sc_trace(mVcdFile, conv_last_output_V_5_ce0, "(port)conv_last_output_V_5_ce0");
    sc_trace(mVcdFile, conv_last_output_V_5_q0, "(port)conv_last_output_V_5_q0");
    sc_trace(mVcdFile, conv_last_output_V_6_address0, "(port)conv_last_output_V_6_address0");
    sc_trace(mVcdFile, conv_last_output_V_6_ce0, "(port)conv_last_output_V_6_ce0");
    sc_trace(mVcdFile, conv_last_output_V_6_q0, "(port)conv_last_output_V_6_q0");
    sc_trace(mVcdFile, conv_last_output_V_7_address0, "(port)conv_last_output_V_7_address0");
    sc_trace(mVcdFile, conv_last_output_V_7_ce0, "(port)conv_last_output_V_7_ce0");
    sc_trace(mVcdFile, conv_last_output_V_7_q0, "(port)conv_last_output_V_7_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, co_33_fu_249_p2, "co_33_fu_249_p2");
    sc_trace(mVcdFile, co_33_reg_521, "co_33_reg_521");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_255_p1, "tmp_fu_255_p1");
    sc_trace(mVcdFile, tmp_reg_526, "tmp_reg_526");
    sc_trace(mVcdFile, exitcond35_fu_243_p2, "exitcond35_fu_243_p2");
    sc_trace(mVcdFile, tmp_676_fu_259_p1, "tmp_676_fu_259_p1");
    sc_trace(mVcdFile, tmp_676_reg_531, "tmp_676_reg_531");
    sc_trace(mVcdFile, tmp_713_cast_fu_281_p1, "tmp_713_cast_fu_281_p1");
    sc_trace(mVcdFile, tmp_713_cast_reg_536, "tmp_713_cast_reg_536");
    sc_trace(mVcdFile, h_31_fu_291_p2, "h_31_fu_291_p2");
    sc_trace(mVcdFile, h_31_reg_544, "h_31_reg_544");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_717_cast_fu_306_p3, "tmp_717_cast_fu_306_p3");
    sc_trace(mVcdFile, tmp_717_cast_reg_549, "tmp_717_cast_reg_549");
    sc_trace(mVcdFile, exitcond34_fu_285_p2, "exitcond34_fu_285_p2");
    sc_trace(mVcdFile, tmp_555_reg_554, "tmp_555_reg_554");
    sc_trace(mVcdFile, w_36_fu_340_p2, "w_36_fu_340_p2");
    sc_trace(mVcdFile, w_36_reg_562, "w_36_reg_562");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, exitcond_fu_334_p2, "exitcond_fu_334_p2");
    sc_trace(mVcdFile, isneg_reg_607, "isneg_reg_607");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, p_Val2_66_fu_410_p2, "p_Val2_66_fu_410_p2");
    sc_trace(mVcdFile, p_Val2_66_reg_614, "p_Val2_66_reg_614");
    sc_trace(mVcdFile, newsignbit_reg_620, "newsignbit_reg_620");
    sc_trace(mVcdFile, sum_V_fu_462_p3, "sum_V_fu_462_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, co_reg_186, "co_reg_186");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, p_Val2_s_reg_197, "p_Val2_s_reg_197");
    sc_trace(mVcdFile, h_reg_209, "h_reg_209");
    sc_trace(mVcdFile, p_Val2_63_reg_220, "p_Val2_63_reg_220");
    sc_trace(mVcdFile, w_reg_232, "w_reg_232");
    sc_trace(mVcdFile, tmp_718_cast_fu_355_p1, "tmp_718_cast_fu_355_p1");
    sc_trace(mVcdFile, newIndex_fu_263_p4, "newIndex_fu_263_p4");
    sc_trace(mVcdFile, tmp_s_fu_273_p3, "tmp_s_fu_273_p3");
    sc_trace(mVcdFile, tmp_cast_fu_297_p1, "tmp_cast_fu_297_p1");
    sc_trace(mVcdFile, tmp_556_fu_301_p2, "tmp_556_fu_301_p2");
    sc_trace(mVcdFile, tmp_tr_fu_314_p1, "tmp_tr_fu_314_p1");
    sc_trace(mVcdFile, p_neg_fu_318_p2, "p_neg_fu_318_p2");
    sc_trace(mVcdFile, tmp_280_cast_fu_346_p1, "tmp_280_cast_fu_346_p1");
    sc_trace(mVcdFile, tmp_557_fu_350_p2, "tmp_557_fu_350_p2");
    sc_trace(mVcdFile, p_Val2_64_fu_371_p10, "p_Val2_64_fu_371_p10");
    sc_trace(mVcdFile, tmp_281_fu_367_p1, "tmp_281_fu_367_p1");
    sc_trace(mVcdFile, tmp_282_fu_392_p1, "tmp_282_fu_392_p1");
    sc_trace(mVcdFile, p_Val2_65_fu_396_p2, "p_Val2_65_fu_396_p2");
    sc_trace(mVcdFile, tmp_283_fu_424_p2, "tmp_283_fu_424_p2");
    sc_trace(mVcdFile, isneg_not_fu_438_p2, "isneg_not_fu_438_p2");
    sc_trace(mVcdFile, brmerge_i_i_i_fu_434_p2, "brmerge_i_i_i_fu_434_p2");
    sc_trace(mVcdFile, underflow_fu_429_p2, "underflow_fu_429_p2");
    sc_trace(mVcdFile, brmerge_fu_443_p2, "brmerge_fu_443_p2");
    sc_trace(mVcdFile, p_Val2_101_mux_fu_448_p3, "p_Val2_101_mux_fu_448_p3");
    sc_trace(mVcdFile, p_Val2_1_fu_455_p3, "p_Val2_1_fu_455_p3");
    sc_trace(mVcdFile, p_lshr_cast_fu_478_p1, "p_lshr_cast_fu_478_p1");
    sc_trace(mVcdFile, tmp_76_fu_487_p4, "tmp_76_fu_487_p4");
    sc_trace(mVcdFile, tmp_77_fu_497_p1, "tmp_77_fu_497_p1");
    sc_trace(mVcdFile, tmp_677_fu_470_p3, "tmp_677_fu_470_p3");
    sc_trace(mVcdFile, p_neg_t_fu_481_p2, "p_neg_t_fu_481_p2");
    sc_trace(mVcdFile, p_lshr_f_cast_fu_501_p1, "p_lshr_f_cast_fu_501_p1");
    sc_trace(mVcdFile, tmp_78_fu_505_p3, "tmp_78_fu_505_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

avgpool::~avgpool() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ShuffleNetV2_mux_jbC_x_U326;
}

void avgpool::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        co_reg_186 = co_33_reg_521.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_186 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_334_p2.read()))) {
        h_reg_209 = h_31_reg_544.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond35_fu_243_p2.read(), ap_const_lv1_0))) {
        h_reg_209 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        p_Val2_63_reg_220 = sum_V_fu_462_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond34_fu_285_p2.read()))) {
        p_Val2_63_reg_220 = p_Val2_s_reg_197.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_334_p2.read()))) {
        p_Val2_s_reg_197 = p_Val2_63_reg_220.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond35_fu_243_p2.read(), ap_const_lv1_0))) {
        p_Val2_s_reg_197 = ap_const_lv8_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        w_reg_232 = w_36_reg_562.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond34_fu_285_p2.read()))) {
        w_reg_232 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_33_reg_521 = co_33_fu_249_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_31_reg_544 = h_31_fu_291_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        isneg_reg_607 = p_Val2_65_fu_396_p2.read().range(8, 8);
        newsignbit_reg_620 = p_Val2_66_fu_410_p2.read().range(7, 7);
        p_Val2_66_reg_614 = p_Val2_66_fu_410_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond34_fu_285_p2.read(), ap_const_lv1_1))) {
        tmp_555_reg_554 = p_neg_fu_318_p2.read().range(8, 4);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond35_fu_243_p2.read(), ap_const_lv1_0))) {
        tmp_676_reg_531 = tmp_676_fu_259_p1.read();
        tmp_713_cast_reg_536 = tmp_713_cast_fu_281_p1.read();
        tmp_reg_526 = tmp_fu_255_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond34_fu_285_p2.read()))) {
        tmp_717_cast_reg_549 = tmp_717_cast_fu_306_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_36_reg_562 = w_36_fu_340_p2.read();
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
          esl_seteq<1,1,1>(exitcond35_fu_243_p2.read(), ap_const_lv1_1)))) {
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
         esl_seteq<1,1,1>(exitcond35_fu_243_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void avgpool::thread_brmerge_fu_443_p2() {
    brmerge_fu_443_p2 = (newsignbit_reg_620.read() | isneg_not_fu_438_p2.read());
}

void avgpool::thread_brmerge_i_i_i_fu_434_p2() {
    brmerge_i_i_i_fu_434_p2 = (isneg_reg_607.read() ^ newsignbit_reg_620.read());
}

void avgpool::thread_co_33_fu_249_p2() {
    co_33_fu_249_p2 = (!co_reg_186.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(co_reg_186.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void avgpool::thread_conv_last_output_V_0_address0() {
    conv_last_output_V_0_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_0_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_0_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_0_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_conv_last_output_V_1_address0() {
    conv_last_output_V_1_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_1_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_1_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_conv_last_output_V_2_address0() {
    conv_last_output_V_2_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_2_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_2_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_2_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_conv_last_output_V_3_address0() {
    conv_last_output_V_3_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_3_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_3_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_3_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_conv_last_output_V_4_address0() {
    conv_last_output_V_4_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_4_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_4_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_4_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_conv_last_output_V_5_address0() {
    conv_last_output_V_5_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_5_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_5_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_5_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_conv_last_output_V_6_address0() {
    conv_last_output_V_6_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_6_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_6_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_6_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_conv_last_output_V_7_address0() {
    conv_last_output_V_7_address0 =  (sc_lv<10>) (tmp_718_cast_fu_355_p1.read());
}

void avgpool::thread_conv_last_output_V_7_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        conv_last_output_V_7_ce0 = ap_const_logic_1;
    } else {
        conv_last_output_V_7_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_exitcond34_fu_285_p2() {
    exitcond34_fu_285_p2 = (!h_reg_209.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_209.read() == ap_const_lv3_4);
}

void avgpool::thread_exitcond35_fu_243_p2() {
    exitcond35_fu_243_p2 = (!co_reg_186.read().is_01() || !ap_const_lv10_200.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_186.read() == ap_const_lv10_200);
}

void avgpool::thread_exitcond_fu_334_p2() {
    exitcond_fu_334_p2 = (!w_reg_232.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_232.read() == ap_const_lv3_4);
}

void avgpool::thread_h_31_fu_291_p2() {
    h_31_fu_291_p2 = (!h_reg_209.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(h_reg_209.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void avgpool::thread_isneg_not_fu_438_p2() {
    isneg_not_fu_438_p2 = (isneg_reg_607.read() ^ ap_const_lv1_1);
}

void avgpool::thread_newIndex_fu_263_p4() {
    newIndex_fu_263_p4 = co_reg_186.read().range(9, 3);
}

void avgpool::thread_output_V_address0() {
    output_V_address0 =  (sc_lv<9>) (tmp_reg_526.read());
}

void avgpool::thread_output_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        output_V_ce0 = ap_const_logic_1;
    } else {
        output_V_ce0 = ap_const_logic_0;
    }
}

void avgpool::thread_output_V_d0() {
    output_V_d0 = esl_sext<8,6>(tmp_78_fu_505_p3.read());
}

void avgpool::thread_output_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        output_V_we0 = ap_const_logic_1;
    } else {
        output_V_we0 = ap_const_logic_0;
    }
}

void avgpool::thread_p_Val2_101_mux_fu_448_p3() {
    p_Val2_101_mux_fu_448_p3 = (!brmerge_i_i_i_fu_434_p2.read()[0].is_01())? sc_lv<8>(): ((brmerge_i_i_i_fu_434_p2.read()[0].to_bool())? ap_const_lv8_7F: p_Val2_66_reg_614.read());
}

void avgpool::thread_p_Val2_1_fu_455_p3() {
    p_Val2_1_fu_455_p3 = (!underflow_fu_429_p2.read()[0].is_01())? sc_lv<8>(): ((underflow_fu_429_p2.read()[0].to_bool())? ap_const_lv8_80: p_Val2_66_reg_614.read());
}

void avgpool::thread_p_Val2_65_fu_396_p2() {
    p_Val2_65_fu_396_p2 = (!tmp_281_fu_367_p1.read().is_01() || !tmp_282_fu_392_p1.read().is_01())? sc_lv<9>(): (sc_bigint<9>(tmp_281_fu_367_p1.read()) + sc_bigint<9>(tmp_282_fu_392_p1.read()));
}

void avgpool::thread_p_Val2_66_fu_410_p2() {
    p_Val2_66_fu_410_p2 = (!p_Val2_64_fu_371_p10.read().is_01() || !p_Val2_63_reg_220.read().is_01())? sc_lv<8>(): (sc_biguint<8>(p_Val2_64_fu_371_p10.read()) + sc_biguint<8>(p_Val2_63_reg_220.read()));
}

void avgpool::thread_p_lshr_cast_fu_478_p1() {
    p_lshr_cast_fu_478_p1 = esl_zext<6,5>(tmp_555_reg_554.read());
}

void avgpool::thread_p_lshr_f_cast_fu_501_p1() {
    p_lshr_f_cast_fu_501_p1 = esl_zext<6,5>(tmp_77_fu_497_p1.read());
}

void avgpool::thread_p_neg_fu_318_p2() {
    p_neg_fu_318_p2 = (!ap_const_lv9_0.is_01() || !tmp_tr_fu_314_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_0) - sc_bigint<9>(tmp_tr_fu_314_p1.read()));
}

void avgpool::thread_p_neg_t_fu_481_p2() {
    p_neg_t_fu_481_p2 = (!ap_const_lv6_0.is_01() || !p_lshr_cast_fu_478_p1.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_0) - sc_biguint<6>(p_lshr_cast_fu_478_p1.read()));
}

void avgpool::thread_sum_V_fu_462_p3() {
    sum_V_fu_462_p3 = (!brmerge_fu_443_p2.read()[0].is_01())? sc_lv<8>(): ((brmerge_fu_443_p2.read()[0].to_bool())? p_Val2_101_mux_fu_448_p3.read(): p_Val2_1_fu_455_p3.read());
}

void avgpool::thread_tmp_280_cast_fu_346_p1() {
    tmp_280_cast_fu_346_p1 = esl_zext<12,3>(w_reg_232.read());
}

void avgpool::thread_tmp_281_fu_367_p1() {
    tmp_281_fu_367_p1 = esl_sext<9,8>(p_Val2_63_reg_220.read());
}

void avgpool::thread_tmp_282_fu_392_p1() {
    tmp_282_fu_392_p1 = esl_sext<9,8>(p_Val2_64_fu_371_p10.read());
}

void avgpool::thread_tmp_283_fu_424_p2() {
    tmp_283_fu_424_p2 = (newsignbit_reg_620.read() ^ ap_const_lv1_1);
}

void avgpool::thread_tmp_556_fu_301_p2() {
    tmp_556_fu_301_p2 = (!tmp_cast_fu_297_p1.read().is_01() || !tmp_713_cast_reg_536.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_cast_fu_297_p1.read()) + sc_biguint<10>(tmp_713_cast_reg_536.read()));
}

void avgpool::thread_tmp_557_fu_350_p2() {
    tmp_557_fu_350_p2 = (!tmp_717_cast_reg_549.read().is_01() || !tmp_280_cast_fu_346_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_717_cast_reg_549.read()) + sc_biguint<12>(tmp_280_cast_fu_346_p1.read()));
}

void avgpool::thread_tmp_676_fu_259_p1() {
    tmp_676_fu_259_p1 = co_reg_186.read().range(3-1, 0);
}

void avgpool::thread_tmp_677_fu_470_p3() {
    tmp_677_fu_470_p3 = p_Val2_s_reg_197.read().range(7, 7);
}

void avgpool::thread_tmp_713_cast_fu_281_p1() {
    tmp_713_cast_fu_281_p1 = esl_zext<10,9>(tmp_s_fu_273_p3.read());
}

void avgpool::thread_tmp_717_cast_fu_306_p3() {
    tmp_717_cast_fu_306_p3 = esl_concat<10,2>(tmp_556_fu_301_p2.read(), ap_const_lv2_0);
}

void avgpool::thread_tmp_718_cast_fu_355_p1() {
    tmp_718_cast_fu_355_p1 = esl_zext<64,12>(tmp_557_fu_350_p2.read());
}

void avgpool::thread_tmp_76_fu_487_p4() {
    tmp_76_fu_487_p4 = p_Val2_s_reg_197.read().range(7, 4);
}

void avgpool::thread_tmp_77_fu_497_p1() {
    tmp_77_fu_497_p1 = esl_sext<5,4>(tmp_76_fu_487_p4.read());
}

void avgpool::thread_tmp_78_fu_505_p3() {
    tmp_78_fu_505_p3 = (!tmp_677_fu_470_p3.read()[0].is_01())? sc_lv<6>(): ((tmp_677_fu_470_p3.read()[0].to_bool())? p_neg_t_fu_481_p2.read(): p_lshr_f_cast_fu_501_p1.read());
}

void avgpool::thread_tmp_cast_fu_297_p1() {
    tmp_cast_fu_297_p1 = esl_zext<10,3>(h_reg_209.read());
}

void avgpool::thread_tmp_fu_255_p1() {
    tmp_fu_255_p1 = esl_zext<64,10>(co_reg_186.read());
}

void avgpool::thread_tmp_s_fu_273_p3() {
    tmp_s_fu_273_p3 = esl_concat<7,2>(newIndex_fu_263_p4.read(), ap_const_lv2_0);
}

void avgpool::thread_tmp_tr_fu_314_p1() {
    tmp_tr_fu_314_p1 = esl_sext<9,8>(p_Val2_s_reg_197.read());
}

void avgpool::thread_underflow_fu_429_p2() {
    underflow_fu_429_p2 = (isneg_reg_607.read() & tmp_283_fu_424_p2.read());
}

void avgpool::thread_w_36_fu_340_p2() {
    w_36_fu_340_p2 = (!w_reg_232.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(w_reg_232.read()) + sc_biguint<3>(ap_const_lv3_1));
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
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond35_fu_243_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond34_fu_285_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_334_p2.read()))) {
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

