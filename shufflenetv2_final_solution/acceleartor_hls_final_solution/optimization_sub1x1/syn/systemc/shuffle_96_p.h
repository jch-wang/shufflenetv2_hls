// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_96_p_HH_
#define _shuffle_96_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct shuffle_96_p : public sc_module {
    // Port declarations 37
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > left_V_address0;
    sc_out< sc_logic > left_V_ce0;
    sc_in< sc_lv<8> > left_V_q0;
    sc_out< sc_lv<13> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_8_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_8_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_8_q0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_1_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_1_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_1_q0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_2_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_2_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_2_q0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_3_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_3_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_3_q0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_4_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_4_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_4_q0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_5_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_5_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_5_q0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_6_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_6_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_6_q0;
    sc_out< sc_lv<9> > buffer1_1_96_4x4_p_V_7_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_7_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_7_q0;


    // Module declarations
    shuffle_96_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_96_p);

    ~shuffle_96_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U300;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_510_fu_242_p1;
    sc_signal< sc_lv<1> > tmp_510_reg_589;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > co_24_fu_252_p2;
    sc_signal< sc_lv<8> > co_24_reg_596;
    sc_signal< sc_lv<13> > tmp_437_cast_fu_288_p1;
    sc_signal< sc_lv<13> > tmp_437_cast_reg_601;
    sc_signal< sc_lv<1> > exitcond5_fu_246_p2;
    sc_signal< sc_lv<12> > tmp_442_cast_fu_332_p1;
    sc_signal< sc_lv<12> > tmp_442_cast_reg_606;
    sc_signal< sc_lv<3> > arrayNo_reg_611;
    sc_signal< sc_lv<9> > tmp_447_cast_fu_386_p1;
    sc_signal< sc_lv<9> > tmp_447_cast_reg_616;
    sc_signal< sc_lv<3> > h_21_fu_396_p2;
    sc_signal< sc_lv<3> > h_21_reg_624;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<13> > tmp_378_fu_439_p2;
    sc_signal< sc_lv<13> > tmp_378_reg_629;
    sc_signal< sc_lv<1> > exitcond4_fu_390_p2;
    sc_signal< sc_lv<14> > tmp_380_fu_470_p2;
    sc_signal< sc_lv<14> > tmp_380_reg_634;
    sc_signal< sc_lv<10> > tmp_382_fu_501_p2;
    sc_signal< sc_lv<10> > tmp_382_reg_639;
    sc_signal< sc_lv<3> > w_26_fu_513_p2;
    sc_signal< sc_lv<3> > w_26_reg_647;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond_fu_507_p2;
    sc_signal< sc_lv<13> > output_V_addr_reg_657;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > tmp_fu_568_p10;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > co_reg_199;
    sc_signal< sc_lv<3> > h_reg_210;
    sc_signal< sc_lv<3> > w_reg_221;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > storemerge_reg_232;
    sc_signal< sc_lv<64> > tmp_460_cast_fu_536_p1;
    sc_signal< sc_lv<64> > tmp_461_cast_fu_546_p1;
    sc_signal< sc_lv<64> > tmp_462_cast_fu_556_p1;
    sc_signal< sc_lv<11> > tmp_s_fu_258_p3;
    sc_signal< sc_lv<9> > tmp_367_fu_270_p3;
    sc_signal< sc_lv<12> > p_shl4_cast_fu_266_p1;
    sc_signal< sc_lv<12> > p_shl5_cast_fu_278_p1;
    sc_signal< sc_lv<12> > tmp_368_fu_282_p2;
    sc_signal< sc_lv<7> > tmp_369_fu_292_p4;
    sc_signal< sc_lv<10> > tmp_370_fu_302_p3;
    sc_signal< sc_lv<8> > tmp_371_fu_314_p3;
    sc_signal< sc_lv<11> > p_shl2_cast_fu_310_p1;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_322_p1;
    sc_signal< sc_lv<11> > tmp_372_fu_326_p2;
    sc_signal< sc_lv<4> > tmp_373_fu_346_p4;
    sc_signal< sc_lv<7> > tmp_374_fu_356_p3;
    sc_signal< sc_lv<5> > tmp_375_fu_368_p3;
    sc_signal< sc_lv<8> > p_shl_cast_fu_364_p1;
    sc_signal< sc_lv<8> > p_shl1_cast_fu_376_p1;
    sc_signal< sc_lv<8> > tmp_376_fu_380_p2;
    sc_signal< sc_lv<12> > tmp_211_cast_fu_410_p1;
    sc_signal< sc_lv<12> > tmp_377_fu_414_p2;
    sc_signal< sc_lv<10> > tmp_511_fu_419_p1;
    sc_signal< sc_lv<13> > p_shl10_cast_fu_423_p3;
    sc_signal< sc_lv<13> > p_shl11_cast_fu_431_p3;
    sc_signal< sc_lv<13> > tmp_211_cast2_fu_406_p1;
    sc_signal< sc_lv<13> > tmp_379_fu_445_p2;
    sc_signal< sc_lv<11> > tmp_512_fu_450_p1;
    sc_signal< sc_lv<14> > p_shl8_cast_fu_454_p3;
    sc_signal< sc_lv<14> > p_shl9_cast_fu_462_p3;
    sc_signal< sc_lv<9> > tmp_211_cast1_fu_402_p1;
    sc_signal< sc_lv<9> > tmp_381_fu_476_p2;
    sc_signal< sc_lv<7> > tmp_513_fu_481_p1;
    sc_signal< sc_lv<10> > p_shl6_cast_fu_485_p3;
    sc_signal< sc_lv<10> > p_shl7_cast_fu_493_p3;
    sc_signal< sc_lv<13> > tmp_212_cast_fu_527_p1;
    sc_signal< sc_lv<13> > tmp_383_fu_531_p2;
    sc_signal< sc_lv<14> > tmp_212_cast2_fu_523_p1;
    sc_signal< sc_lv<14> > tmp_384_fu_541_p2;
    sc_signal< sc_lv<10> > tmp_212_cast1_fu_519_p1;
    sc_signal< sc_lv<10> > tmp_385_fu_551_p2;
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
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<8> ap_const_lv8_C0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
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
    void thread_buffer1_1_96_4x4_p_V_1_address0();
    void thread_buffer1_1_96_4x4_p_V_1_ce0();
    void thread_buffer1_1_96_4x4_p_V_2_address0();
    void thread_buffer1_1_96_4x4_p_V_2_ce0();
    void thread_buffer1_1_96_4x4_p_V_3_address0();
    void thread_buffer1_1_96_4x4_p_V_3_ce0();
    void thread_buffer1_1_96_4x4_p_V_4_address0();
    void thread_buffer1_1_96_4x4_p_V_4_ce0();
    void thread_buffer1_1_96_4x4_p_V_5_address0();
    void thread_buffer1_1_96_4x4_p_V_5_ce0();
    void thread_buffer1_1_96_4x4_p_V_6_address0();
    void thread_buffer1_1_96_4x4_p_V_6_ce0();
    void thread_buffer1_1_96_4x4_p_V_7_address0();
    void thread_buffer1_1_96_4x4_p_V_7_ce0();
    void thread_buffer1_1_96_4x4_p_V_8_address0();
    void thread_buffer1_1_96_4x4_p_V_8_ce0();
    void thread_co_24_fu_252_p2();
    void thread_exitcond4_fu_390_p2();
    void thread_exitcond5_fu_246_p2();
    void thread_exitcond_fu_507_p2();
    void thread_h_21_fu_396_p2();
    void thread_left_V_address0();
    void thread_left_V_ce0();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl10_cast_fu_423_p3();
    void thread_p_shl11_cast_fu_431_p3();
    void thread_p_shl1_cast_fu_376_p1();
    void thread_p_shl2_cast_fu_310_p1();
    void thread_p_shl3_cast_fu_322_p1();
    void thread_p_shl4_cast_fu_266_p1();
    void thread_p_shl5_cast_fu_278_p1();
    void thread_p_shl6_cast_fu_485_p3();
    void thread_p_shl7_cast_fu_493_p3();
    void thread_p_shl8_cast_fu_454_p3();
    void thread_p_shl9_cast_fu_462_p3();
    void thread_p_shl_cast_fu_364_p1();
    void thread_tmp_211_cast1_fu_402_p1();
    void thread_tmp_211_cast2_fu_406_p1();
    void thread_tmp_211_cast_fu_410_p1();
    void thread_tmp_212_cast1_fu_519_p1();
    void thread_tmp_212_cast2_fu_523_p1();
    void thread_tmp_212_cast_fu_527_p1();
    void thread_tmp_367_fu_270_p3();
    void thread_tmp_368_fu_282_p2();
    void thread_tmp_369_fu_292_p4();
    void thread_tmp_370_fu_302_p3();
    void thread_tmp_371_fu_314_p3();
    void thread_tmp_372_fu_326_p2();
    void thread_tmp_373_fu_346_p4();
    void thread_tmp_374_fu_356_p3();
    void thread_tmp_375_fu_368_p3();
    void thread_tmp_376_fu_380_p2();
    void thread_tmp_377_fu_414_p2();
    void thread_tmp_378_fu_439_p2();
    void thread_tmp_379_fu_445_p2();
    void thread_tmp_380_fu_470_p2();
    void thread_tmp_381_fu_476_p2();
    void thread_tmp_382_fu_501_p2();
    void thread_tmp_383_fu_531_p2();
    void thread_tmp_384_fu_541_p2();
    void thread_tmp_385_fu_551_p2();
    void thread_tmp_437_cast_fu_288_p1();
    void thread_tmp_442_cast_fu_332_p1();
    void thread_tmp_447_cast_fu_386_p1();
    void thread_tmp_460_cast_fu_536_p1();
    void thread_tmp_461_cast_fu_546_p1();
    void thread_tmp_462_cast_fu_556_p1();
    void thread_tmp_510_fu_242_p1();
    void thread_tmp_511_fu_419_p1();
    void thread_tmp_512_fu_450_p1();
    void thread_tmp_513_fu_481_p1();
    void thread_tmp_s_fu_258_p3();
    void thread_w_26_fu_513_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
