// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_24_p_HH_
#define _shuffle_24_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct shuffle_24_p : public sc_module {
    // Port declarations 37
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > left_V_address0;
    sc_out< sc_logic > left_V_ce0;
    sc_in< sc_lv<8> > left_V_q0;
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
    shuffle_24_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_24_p);

    ~shuffle_24_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U151;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_538_fu_246_p1;
    sc_signal< sc_lv<1> > tmp_538_reg_581;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > co_32_fu_256_p2;
    sc_signal< sc_lv<6> > co_32_reg_588;
    sc_signal< sc_lv<11> > tmp_497_fu_286_p2;
    sc_signal< sc_lv<11> > tmp_497_reg_593;
    sc_signal< sc_lv<1> > exitcond5_fu_250_p2;
    sc_signal< sc_lv<10> > tmp_501_fu_326_p2;
    sc_signal< sc_lv<10> > tmp_501_reg_598;
    sc_signal< sc_lv<3> > arrayNo_reg_603;
    sc_signal< sc_lv<7> > tmp_505_fu_376_p2;
    sc_signal< sc_lv<7> > tmp_505_reg_608;
    sc_signal< sc_lv<5> > h_28_fu_388_p2;
    sc_signal< sc_lv<5> > h_28_reg_616;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<14> > tmp_507_fu_431_p2;
    sc_signal< sc_lv<14> > tmp_507_reg_621;
    sc_signal< sc_lv<1> > exitcond4_fu_382_p2;
    sc_signal< sc_lv<15> > tmp_509_fu_462_p2;
    sc_signal< sc_lv<15> > tmp_509_reg_626;
    sc_signal< sc_lv<11> > tmp_511_fu_493_p2;
    sc_signal< sc_lv<11> > tmp_511_reg_631;
    sc_signal< sc_lv<5> > w_32_fu_505_p2;
    sc_signal< sc_lv<5> > w_32_reg_639;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond_fu_499_p2;
    sc_signal< sc_lv<14> > output_V_addr_reg_649;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > tmp_fu_560_p10;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > co_reg_203;
    sc_signal< sc_lv<5> > h_reg_214;
    sc_signal< sc_lv<5> > w_reg_225;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > storemerge_reg_236;
    sc_signal< sc_lv<64> > tmp_631_cast_fu_528_p1;
    sc_signal< sc_lv<64> > tmp_632_cast_fu_538_p1;
    sc_signal< sc_lv<64> > tmp_633_cast_fu_548_p1;
    sc_signal< sc_lv<10> > tmp_s_fu_262_p3;
    sc_signal< sc_lv<7> > tmp_496_fu_274_p3;
    sc_signal< sc_lv<11> > p_shl5_cast_fu_282_p1;
    sc_signal< sc_lv<11> > p_shl4_cast_fu_270_p1;
    sc_signal< sc_lv<5> > tmp_498_fu_292_p4;
    sc_signal< sc_lv<9> > tmp_499_fu_302_p3;
    sc_signal< sc_lv<6> > tmp_500_fu_314_p3;
    sc_signal< sc_lv<10> > p_shl3_cast_fu_322_p1;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_310_p1;
    sc_signal< sc_lv<2> > tmp_502_fu_342_p4;
    sc_signal< sc_lv<6> > tmp_503_fu_352_p3;
    sc_signal< sc_lv<3> > tmp_504_fu_364_p3;
    sc_signal< sc_lv<7> > p_shl1_cast_fu_372_p1;
    sc_signal< sc_lv<7> > p_shl_cast_fu_360_p1;
    sc_signal< sc_lv<10> > tmp_238_cast_fu_402_p1;
    sc_signal< sc_lv<10> > tmp_506_fu_406_p2;
    sc_signal< sc_lv<11> > tmp_539_fu_419_p3;
    sc_signal< sc_lv<14> > p_shl10_cast_fu_411_p3;
    sc_signal< sc_lv<14> > p_shl11_cast_fu_427_p1;
    sc_signal< sc_lv<11> > tmp_238_cast2_fu_398_p1;
    sc_signal< sc_lv<11> > tmp_508_fu_437_p2;
    sc_signal< sc_lv<12> > tmp_540_fu_450_p3;
    sc_signal< sc_lv<15> > p_shl8_cast_fu_442_p3;
    sc_signal< sc_lv<15> > p_shl9_cast_fu_458_p1;
    sc_signal< sc_lv<7> > tmp_238_cast1_fu_394_p1;
    sc_signal< sc_lv<7> > tmp_510_fu_468_p2;
    sc_signal< sc_lv<8> > tmp_541_fu_481_p3;
    sc_signal< sc_lv<11> > p_shl6_cast_fu_473_p3;
    sc_signal< sc_lv<11> > p_shl7_cast_fu_489_p1;
    sc_signal< sc_lv<14> > tmp_239_cast_fu_519_p1;
    sc_signal< sc_lv<14> > tmp_512_fu_523_p2;
    sc_signal< sc_lv<15> > tmp_239_cast2_fu_515_p1;
    sc_signal< sc_lv<15> > tmp_513_fu_533_p2;
    sc_signal< sc_lv<11> > tmp_239_cast1_fu_511_p1;
    sc_signal< sc_lv<11> > tmp_514_fu_543_p2;
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
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_6;
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
    void thread_ap_CS_fsm_state7();
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
    void thread_co_32_fu_256_p2();
    void thread_exitcond4_fu_382_p2();
    void thread_exitcond5_fu_250_p2();
    void thread_exitcond_fu_499_p2();
    void thread_h_28_fu_388_p2();
    void thread_left_V_address0();
    void thread_left_V_ce0();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl10_cast_fu_411_p3();
    void thread_p_shl11_cast_fu_427_p1();
    void thread_p_shl1_cast_fu_372_p1();
    void thread_p_shl2_cast_fu_310_p1();
    void thread_p_shl3_cast_fu_322_p1();
    void thread_p_shl4_cast_fu_270_p1();
    void thread_p_shl5_cast_fu_282_p1();
    void thread_p_shl6_cast_fu_473_p3();
    void thread_p_shl7_cast_fu_489_p1();
    void thread_p_shl8_cast_fu_442_p3();
    void thread_p_shl9_cast_fu_458_p1();
    void thread_p_shl_cast_fu_360_p1();
    void thread_tmp_238_cast1_fu_394_p1();
    void thread_tmp_238_cast2_fu_398_p1();
    void thread_tmp_238_cast_fu_402_p1();
    void thread_tmp_239_cast1_fu_511_p1();
    void thread_tmp_239_cast2_fu_515_p1();
    void thread_tmp_239_cast_fu_519_p1();
    void thread_tmp_496_fu_274_p3();
    void thread_tmp_497_fu_286_p2();
    void thread_tmp_498_fu_292_p4();
    void thread_tmp_499_fu_302_p3();
    void thread_tmp_500_fu_314_p3();
    void thread_tmp_501_fu_326_p2();
    void thread_tmp_502_fu_342_p4();
    void thread_tmp_503_fu_352_p3();
    void thread_tmp_504_fu_364_p3();
    void thread_tmp_505_fu_376_p2();
    void thread_tmp_506_fu_406_p2();
    void thread_tmp_507_fu_431_p2();
    void thread_tmp_508_fu_437_p2();
    void thread_tmp_509_fu_462_p2();
    void thread_tmp_510_fu_468_p2();
    void thread_tmp_511_fu_493_p2();
    void thread_tmp_512_fu_523_p2();
    void thread_tmp_513_fu_533_p2();
    void thread_tmp_514_fu_543_p2();
    void thread_tmp_538_fu_246_p1();
    void thread_tmp_539_fu_419_p3();
    void thread_tmp_540_fu_450_p3();
    void thread_tmp_541_fu_481_p3();
    void thread_tmp_631_cast_fu_528_p1();
    void thread_tmp_632_cast_fu_538_p1();
    void thread_tmp_633_cast_fu_548_p1();
    void thread_tmp_s_fu_262_p3();
    void thread_w_32_fu_505_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
