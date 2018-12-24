// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_96_l_p_HH_
#define _shuffle_96_l_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct shuffle_96_l_p : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
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
    shuffle_96_l_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_96_l_p);

    ~shuffle_96_l_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U264;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_514_fu_211_p1;
    sc_signal< sc_lv<1> > tmp_514_reg_464;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > co_25_fu_221_p2;
    sc_signal< sc_lv<8> > co_25_reg_471;
    sc_signal< sc_lv<13> > tmp_465_cast_fu_257_p1;
    sc_signal< sc_lv<13> > tmp_465_cast_reg_476;
    sc_signal< sc_lv<1> > exitcond3_fu_215_p2;
    sc_signal< sc_lv<3> > arrayNo_reg_481;
    sc_signal< sc_lv<9> > tmp_470_cast_fu_311_p1;
    sc_signal< sc_lv<9> > tmp_470_cast_reg_486;
    sc_signal< sc_lv<3> > h_22_fu_321_p2;
    sc_signal< sc_lv<3> > h_22_reg_494;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<14> > tmp_393_fu_360_p2;
    sc_signal< sc_lv<14> > tmp_393_reg_499;
    sc_signal< sc_lv<1> > exitcond2_fu_315_p2;
    sc_signal< sc_lv<10> > tmp_395_fu_391_p2;
    sc_signal< sc_lv<10> > tmp_395_reg_504;
    sc_signal< sc_lv<3> > w_27_fu_403_p2;
    sc_signal< sc_lv<3> > w_27_reg_512;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<14> > tmp_396_fu_417_p2;
    sc_signal< sc_lv<14> > tmp_396_reg_517;
    sc_signal< sc_lv<1> > exitcond_fu_397_p2;
    sc_signal< sc_lv<8> > tmp_fu_439_p10;
    sc_signal< sc_lv<8> > tmp_reg_562;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > co_reg_178;
    sc_signal< sc_lv<3> > h_reg_189;
    sc_signal< sc_lv<3> > w_reg_200;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > tmp_480_cast_fu_427_p1;
    sc_signal< sc_lv<64> > tmp_479_cast_fu_460_p1;
    sc_signal< sc_lv<11> > tmp_s_fu_227_p3;
    sc_signal< sc_lv<9> > tmp_386_fu_239_p3;
    sc_signal< sc_lv<12> > p_shl2_cast_fu_235_p1;
    sc_signal< sc_lv<12> > p_shl3_cast_fu_247_p1;
    sc_signal< sc_lv<12> > tmp_387_fu_251_p2;
    sc_signal< sc_lv<4> > tmp_388_fu_271_p4;
    sc_signal< sc_lv<7> > tmp_389_fu_281_p3;
    sc_signal< sc_lv<5> > tmp_390_fu_293_p3;
    sc_signal< sc_lv<8> > p_shl_cast_fu_289_p1;
    sc_signal< sc_lv<8> > p_shl1_cast_fu_301_p1;
    sc_signal< sc_lv<8> > tmp_391_fu_305_p2;
    sc_signal< sc_lv<13> > tmp_213_cast_fu_331_p1;
    sc_signal< sc_lv<13> > tmp_392_fu_335_p2;
    sc_signal< sc_lv<11> > tmp_515_fu_340_p1;
    sc_signal< sc_lv<14> > p_shl6_cast_fu_344_p3;
    sc_signal< sc_lv<14> > p_shl7_cast_fu_352_p3;
    sc_signal< sc_lv<9> > tmp_213_cast9_fu_327_p1;
    sc_signal< sc_lv<9> > tmp_394_fu_366_p2;
    sc_signal< sc_lv<7> > tmp_516_fu_371_p1;
    sc_signal< sc_lv<10> > p_shl4_cast_fu_375_p3;
    sc_signal< sc_lv<10> > p_shl5_cast_fu_383_p3;
    sc_signal< sc_lv<14> > tmp_214_cast_fu_413_p1;
    sc_signal< sc_lv<10> > tmp_214_cast8_fu_409_p1;
    sc_signal< sc_lv<10> > tmp_397_fu_422_p2;
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
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
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
    void thread_co_25_fu_221_p2();
    void thread_exitcond2_fu_315_p2();
    void thread_exitcond3_fu_215_p2();
    void thread_exitcond_fu_397_p2();
    void thread_h_22_fu_321_p2();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl1_cast_fu_301_p1();
    void thread_p_shl2_cast_fu_235_p1();
    void thread_p_shl3_cast_fu_247_p1();
    void thread_p_shl4_cast_fu_375_p3();
    void thread_p_shl5_cast_fu_383_p3();
    void thread_p_shl6_cast_fu_344_p3();
    void thread_p_shl7_cast_fu_352_p3();
    void thread_p_shl_cast_fu_289_p1();
    void thread_tmp_213_cast9_fu_327_p1();
    void thread_tmp_213_cast_fu_331_p1();
    void thread_tmp_214_cast8_fu_409_p1();
    void thread_tmp_214_cast_fu_413_p1();
    void thread_tmp_386_fu_239_p3();
    void thread_tmp_387_fu_251_p2();
    void thread_tmp_388_fu_271_p4();
    void thread_tmp_389_fu_281_p3();
    void thread_tmp_390_fu_293_p3();
    void thread_tmp_391_fu_305_p2();
    void thread_tmp_392_fu_335_p2();
    void thread_tmp_393_fu_360_p2();
    void thread_tmp_394_fu_366_p2();
    void thread_tmp_395_fu_391_p2();
    void thread_tmp_396_fu_417_p2();
    void thread_tmp_397_fu_422_p2();
    void thread_tmp_465_cast_fu_257_p1();
    void thread_tmp_470_cast_fu_311_p1();
    void thread_tmp_479_cast_fu_460_p1();
    void thread_tmp_480_cast_fu_427_p1();
    void thread_tmp_514_fu_211_p1();
    void thread_tmp_515_fu_340_p1();
    void thread_tmp_516_fu_371_p1();
    void thread_tmp_s_fu_227_p3();
    void thread_w_27_fu_403_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
