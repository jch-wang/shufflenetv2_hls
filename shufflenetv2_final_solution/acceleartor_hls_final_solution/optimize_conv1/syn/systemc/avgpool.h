// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _avgpool_HH_
#define _avgpool_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct avgpool : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<9> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;
    sc_out< sc_lv<10> > conv_last_output_V_0_address0;
    sc_out< sc_logic > conv_last_output_V_0_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_0_q0;
    sc_out< sc_lv<10> > conv_last_output_V_1_address0;
    sc_out< sc_logic > conv_last_output_V_1_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_1_q0;
    sc_out< sc_lv<10> > conv_last_output_V_2_address0;
    sc_out< sc_logic > conv_last_output_V_2_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_2_q0;
    sc_out< sc_lv<10> > conv_last_output_V_3_address0;
    sc_out< sc_logic > conv_last_output_V_3_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_3_q0;
    sc_out< sc_lv<10> > conv_last_output_V_4_address0;
    sc_out< sc_logic > conv_last_output_V_4_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_4_q0;
    sc_out< sc_lv<10> > conv_last_output_V_5_address0;
    sc_out< sc_logic > conv_last_output_V_5_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_5_q0;
    sc_out< sc_lv<10> > conv_last_output_V_6_address0;
    sc_out< sc_logic > conv_last_output_V_6_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_6_q0;
    sc_out< sc_lv<10> > conv_last_output_V_7_address0;
    sc_out< sc_logic > conv_last_output_V_7_ce0;
    sc_in< sc_lv<8> > conv_last_output_V_7_q0;


    // Module declarations
    avgpool(sc_module_name name);
    SC_HAS_PROCESS(avgpool);

    ~avgpool();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U326;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > co_33_fu_249_p2;
    sc_signal< sc_lv<10> > co_33_reg_521;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_fu_255_p1;
    sc_signal< sc_lv<64> > tmp_reg_526;
    sc_signal< sc_lv<1> > exitcond35_fu_243_p2;
    sc_signal< sc_lv<3> > tmp_676_fu_259_p1;
    sc_signal< sc_lv<3> > tmp_676_reg_531;
    sc_signal< sc_lv<10> > tmp_713_cast_fu_281_p1;
    sc_signal< sc_lv<10> > tmp_713_cast_reg_536;
    sc_signal< sc_lv<3> > h_31_fu_291_p2;
    sc_signal< sc_lv<3> > h_31_reg_544;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<12> > tmp_717_cast_fu_306_p3;
    sc_signal< sc_lv<12> > tmp_717_cast_reg_549;
    sc_signal< sc_lv<1> > exitcond34_fu_285_p2;
    sc_signal< sc_lv<5> > tmp_555_reg_554;
    sc_signal< sc_lv<3> > w_36_fu_340_p2;
    sc_signal< sc_lv<3> > w_36_reg_562;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond_fu_334_p2;
    sc_signal< sc_lv<1> > isneg_reg_607;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > p_Val2_66_fu_410_p2;
    sc_signal< sc_lv<8> > p_Val2_66_reg_614;
    sc_signal< sc_lv<1> > newsignbit_reg_620;
    sc_signal< sc_lv<8> > sum_V_fu_462_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<10> > co_reg_186;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > p_Val2_s_reg_197;
    sc_signal< sc_lv<3> > h_reg_209;
    sc_signal< sc_lv<8> > p_Val2_63_reg_220;
    sc_signal< sc_lv<3> > w_reg_232;
    sc_signal< sc_lv<64> > tmp_718_cast_fu_355_p1;
    sc_signal< sc_lv<7> > newIndex_fu_263_p4;
    sc_signal< sc_lv<9> > tmp_s_fu_273_p3;
    sc_signal< sc_lv<10> > tmp_cast_fu_297_p1;
    sc_signal< sc_lv<10> > tmp_556_fu_301_p2;
    sc_signal< sc_lv<9> > tmp_tr_fu_314_p1;
    sc_signal< sc_lv<9> > p_neg_fu_318_p2;
    sc_signal< sc_lv<12> > tmp_280_cast_fu_346_p1;
    sc_signal< sc_lv<12> > tmp_557_fu_350_p2;
    sc_signal< sc_lv<8> > p_Val2_64_fu_371_p10;
    sc_signal< sc_lv<9> > tmp_281_fu_367_p1;
    sc_signal< sc_lv<9> > tmp_282_fu_392_p1;
    sc_signal< sc_lv<9> > p_Val2_65_fu_396_p2;
    sc_signal< sc_lv<1> > tmp_283_fu_424_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_438_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_434_p2;
    sc_signal< sc_lv<1> > underflow_fu_429_p2;
    sc_signal< sc_lv<1> > brmerge_fu_443_p2;
    sc_signal< sc_lv<8> > p_Val2_101_mux_fu_448_p3;
    sc_signal< sc_lv<8> > p_Val2_1_fu_455_p3;
    sc_signal< sc_lv<6> > p_lshr_cast_fu_478_p1;
    sc_signal< sc_lv<4> > tmp_76_fu_487_p4;
    sc_signal< sc_lv<5> > tmp_77_fu_497_p1;
    sc_signal< sc_lv<1> > tmp_677_fu_470_p3;
    sc_signal< sc_lv<6> > p_neg_t_fu_481_p2;
    sc_signal< sc_lv<6> > p_lshr_f_cast_fu_501_p1;
    sc_signal< sc_lv<6> > tmp_78_fu_505_p3;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<6> ap_const_lv6_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_brmerge_fu_443_p2();
    void thread_brmerge_i_i_i_fu_434_p2();
    void thread_co_33_fu_249_p2();
    void thread_conv_last_output_V_0_address0();
    void thread_conv_last_output_V_0_ce0();
    void thread_conv_last_output_V_1_address0();
    void thread_conv_last_output_V_1_ce0();
    void thread_conv_last_output_V_2_address0();
    void thread_conv_last_output_V_2_ce0();
    void thread_conv_last_output_V_3_address0();
    void thread_conv_last_output_V_3_ce0();
    void thread_conv_last_output_V_4_address0();
    void thread_conv_last_output_V_4_ce0();
    void thread_conv_last_output_V_5_address0();
    void thread_conv_last_output_V_5_ce0();
    void thread_conv_last_output_V_6_address0();
    void thread_conv_last_output_V_6_ce0();
    void thread_conv_last_output_V_7_address0();
    void thread_conv_last_output_V_7_ce0();
    void thread_exitcond34_fu_285_p2();
    void thread_exitcond35_fu_243_p2();
    void thread_exitcond_fu_334_p2();
    void thread_h_31_fu_291_p2();
    void thread_isneg_not_fu_438_p2();
    void thread_newIndex_fu_263_p4();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_Val2_101_mux_fu_448_p3();
    void thread_p_Val2_1_fu_455_p3();
    void thread_p_Val2_65_fu_396_p2();
    void thread_p_Val2_66_fu_410_p2();
    void thread_p_lshr_cast_fu_478_p1();
    void thread_p_lshr_f_cast_fu_501_p1();
    void thread_p_neg_fu_318_p2();
    void thread_p_neg_t_fu_481_p2();
    void thread_sum_V_fu_462_p3();
    void thread_tmp_280_cast_fu_346_p1();
    void thread_tmp_281_fu_367_p1();
    void thread_tmp_282_fu_392_p1();
    void thread_tmp_283_fu_424_p2();
    void thread_tmp_556_fu_301_p2();
    void thread_tmp_557_fu_350_p2();
    void thread_tmp_676_fu_259_p1();
    void thread_tmp_677_fu_470_p3();
    void thread_tmp_713_cast_fu_281_p1();
    void thread_tmp_717_cast_fu_306_p3();
    void thread_tmp_718_cast_fu_355_p1();
    void thread_tmp_76_fu_487_p4();
    void thread_tmp_77_fu_497_p1();
    void thread_tmp_78_fu_505_p3();
    void thread_tmp_cast_fu_297_p1();
    void thread_tmp_fu_255_p1();
    void thread_tmp_s_fu_273_p3();
    void thread_tmp_tr_fu_314_p1();
    void thread_underflow_fu_429_p2();
    void thread_w_36_fu_340_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
