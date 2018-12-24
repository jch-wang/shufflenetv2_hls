// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_24_l_p_HH_
#define _shuffle_24_l_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct shuffle_24_l_p : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_7_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_7_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_7_q0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_6_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_6_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_6_q0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_5_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_5_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_5_q0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_4_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_4_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_4_q0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_3_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_3_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_3_q0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_2_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_2_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_2_q0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_1_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_1_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_1_q0;
    sc_out< sc_lv<10> > buffer1_1_24_16x16_p_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_q0;


    // Module declarations
    shuffle_24_l_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_24_l_p);

    ~shuffle_24_l_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U107;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_542_fu_213_p1;
    sc_signal< sc_lv<1> > tmp_542_reg_458;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > co_33_fu_223_p2;
    sc_signal< sc_lv<6> > co_33_reg_465;
    sc_signal< sc_lv<11> > tmp_516_fu_253_p2;
    sc_signal< sc_lv<11> > tmp_516_reg_470;
    sc_signal< sc_lv<1> > exitcond3_fu_217_p2;
    sc_signal< sc_lv<3> > arrayNo_reg_475;
    sc_signal< sc_lv<7> > tmp_520_fu_303_p2;
    sc_signal< sc_lv<7> > tmp_520_reg_480;
    sc_signal< sc_lv<5> > h_29_fu_315_p2;
    sc_signal< sc_lv<5> > h_29_reg_488;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<15> > tmp_522_fu_354_p2;
    sc_signal< sc_lv<15> > tmp_522_reg_493;
    sc_signal< sc_lv<1> > exitcond2_fu_309_p2;
    sc_signal< sc_lv<11> > tmp_524_fu_385_p2;
    sc_signal< sc_lv<11> > tmp_524_reg_498;
    sc_signal< sc_lv<5> > w_33_fu_397_p2;
    sc_signal< sc_lv<5> > w_33_reg_506;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<15> > tmp_525_fu_411_p2;
    sc_signal< sc_lv<15> > tmp_525_reg_511;
    sc_signal< sc_lv<1> > exitcond_fu_391_p2;
    sc_signal< sc_lv<8> > tmp_fu_433_p10;
    sc_signal< sc_lv<8> > tmp_reg_556;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<6> > co_reg_180;
    sc_signal< sc_lv<5> > h_reg_191;
    sc_signal< sc_lv<5> > w_reg_202;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > tmp_651_cast_fu_421_p1;
    sc_signal< sc_lv<64> > tmp_650_cast_fu_454_p1;
    sc_signal< sc_lv<10> > tmp_s_fu_229_p3;
    sc_signal< sc_lv<7> > tmp_515_fu_241_p3;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_249_p1;
    sc_signal< sc_lv<11> > p_shl2_cast_fu_237_p1;
    sc_signal< sc_lv<2> > tmp_517_fu_269_p4;
    sc_signal< sc_lv<6> > tmp_518_fu_279_p3;
    sc_signal< sc_lv<3> > tmp_519_fu_291_p3;
    sc_signal< sc_lv<7> > p_shl1_cast_fu_299_p1;
    sc_signal< sc_lv<7> > p_shl_cast_fu_287_p1;
    sc_signal< sc_lv<11> > tmp_240_cast_fu_325_p1;
    sc_signal< sc_lv<11> > tmp_521_fu_329_p2;
    sc_signal< sc_lv<12> > tmp_543_fu_342_p3;
    sc_signal< sc_lv<15> > p_shl6_cast_fu_334_p3;
    sc_signal< sc_lv<15> > p_shl7_cast_fu_350_p1;
    sc_signal< sc_lv<7> > tmp_240_cast9_fu_321_p1;
    sc_signal< sc_lv<7> > tmp_523_fu_360_p2;
    sc_signal< sc_lv<8> > tmp_544_fu_373_p3;
    sc_signal< sc_lv<11> > p_shl4_cast_fu_365_p3;
    sc_signal< sc_lv<11> > p_shl5_cast_fu_381_p1;
    sc_signal< sc_lv<15> > tmp_241_cast_fu_407_p1;
    sc_signal< sc_lv<11> > tmp_241_cast8_fu_403_p1;
    sc_signal< sc_lv<11> > tmp_526_fu_416_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_12;
    static const sc_lv<5> ap_const_lv5_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_buffer1_1_24_16x16_p_1_address0();
    void thread_buffer1_1_24_16x16_p_1_ce0();
    void thread_buffer1_1_24_16x16_p_2_address0();
    void thread_buffer1_1_24_16x16_p_2_ce0();
    void thread_buffer1_1_24_16x16_p_3_address0();
    void thread_buffer1_1_24_16x16_p_3_ce0();
    void thread_buffer1_1_24_16x16_p_4_address0();
    void thread_buffer1_1_24_16x16_p_4_ce0();
    void thread_buffer1_1_24_16x16_p_5_address0();
    void thread_buffer1_1_24_16x16_p_5_ce0();
    void thread_buffer1_1_24_16x16_p_6_address0();
    void thread_buffer1_1_24_16x16_p_6_ce0();
    void thread_buffer1_1_24_16x16_p_7_address0();
    void thread_buffer1_1_24_16x16_p_7_ce0();
    void thread_buffer1_1_24_16x16_p_address0();
    void thread_buffer1_1_24_16x16_p_ce0();
    void thread_co_33_fu_223_p2();
    void thread_exitcond2_fu_309_p2();
    void thread_exitcond3_fu_217_p2();
    void thread_exitcond_fu_391_p2();
    void thread_h_29_fu_315_p2();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl1_cast_fu_299_p1();
    void thread_p_shl2_cast_fu_237_p1();
    void thread_p_shl3_cast_fu_249_p1();
    void thread_p_shl4_cast_fu_365_p3();
    void thread_p_shl5_cast_fu_381_p1();
    void thread_p_shl6_cast_fu_334_p3();
    void thread_p_shl7_cast_fu_350_p1();
    void thread_p_shl_cast_fu_287_p1();
    void thread_tmp_240_cast9_fu_321_p1();
    void thread_tmp_240_cast_fu_325_p1();
    void thread_tmp_241_cast8_fu_403_p1();
    void thread_tmp_241_cast_fu_407_p1();
    void thread_tmp_515_fu_241_p3();
    void thread_tmp_516_fu_253_p2();
    void thread_tmp_517_fu_269_p4();
    void thread_tmp_518_fu_279_p3();
    void thread_tmp_519_fu_291_p3();
    void thread_tmp_520_fu_303_p2();
    void thread_tmp_521_fu_329_p2();
    void thread_tmp_522_fu_354_p2();
    void thread_tmp_523_fu_360_p2();
    void thread_tmp_524_fu_385_p2();
    void thread_tmp_525_fu_411_p2();
    void thread_tmp_526_fu_416_p2();
    void thread_tmp_542_fu_213_p1();
    void thread_tmp_543_fu_342_p3();
    void thread_tmp_544_fu_373_p3();
    void thread_tmp_650_cast_fu_454_p1();
    void thread_tmp_651_cast_fu_421_p1();
    void thread_tmp_s_fu_229_p3();
    void thread_w_33_fu_397_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif