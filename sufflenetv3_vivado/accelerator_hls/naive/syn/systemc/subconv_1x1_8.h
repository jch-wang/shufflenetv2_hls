// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_1x1_8_HH_
#define _subconv_1x1_8_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_faddbkb.h"
#include "ShuffleNetV2_fmulcud.h"
#include "ShuffleNetV2_fcmpdEe.h"

namespace ap_rtl {

struct subconv_1x1_8 : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<12> > weight_address0;
    sc_out< sc_logic > weight_ce0;
    sc_in< sc_lv<32> > weight_q0;
    sc_out< sc_lv<6> > bias_address0;
    sc_out< sc_logic > bias_ce0;
    sc_in< sc_lv<32> > bias_q0;
    sc_out< sc_lv<12> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    subconv_1x1_8(sc_module_name name);
    SC_HAS_PROCESS(subconv_1x1_8);

    ~subconv_1x1_8();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_faddbkb<1,5,32,32,32>* ShuffleNetV2_faddbkb_x_U54;
    ShuffleNetV2_fmulcud<1,4,32,32,32>* ShuffleNetV2_fmulcud_x_U55;
    ShuffleNetV2_fcmpdEe<1,1,32,32,1>* ShuffleNetV2_fcmpdEe_x_U56;
    sc_signal< sc_lv<23> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > co_8_fu_172_p2;
    sc_signal< sc_lv<6> > co_8_reg_392;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<13> > tmp_99_fu_207_p2;
    sc_signal< sc_lv<13> > tmp_99_reg_397;
    sc_signal< sc_lv<1> > exitcond3_fu_166_p2;
    sc_signal< sc_lv<10> > tmp_142_cast_fu_221_p1;
    sc_signal< sc_lv<10> > tmp_142_cast_reg_402;
    sc_signal< sc_lv<6> > bias_addr_reg_407;
    sc_signal< sc_lv<4> > h_8_fu_231_p2;
    sc_signal< sc_lv<4> > h_8_reg_415;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<10> > tmp_cast_fu_237_p1;
    sc_signal< sc_lv<10> > tmp_cast_reg_420;
    sc_signal< sc_lv<1> > exitcond2_fu_225_p2;
    sc_signal< sc_lv<13> > tmp_145_cast_fu_246_p3;
    sc_signal< sc_lv<13> > tmp_145_cast_reg_425;
    sc_signal< sc_lv<4> > w_8_fu_260_p2;
    sc_signal< sc_lv<4> > w_8_reg_433;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<13> > tmp_82_cast_fu_266_p1;
    sc_signal< sc_lv<13> > tmp_82_cast_reg_438;
    sc_signal< sc_lv<1> > exitcond1_fu_254_p2;
    sc_signal< sc_lv<12> > output_addr_reg_443;
    sc_signal< sc_lv<6> > ci_2_fu_286_p2;
    sc_signal< sc_lv<6> > ci_2_reg_451;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond_fu_280_p2;
    sc_signal< sc_lv<32> > weight_load_reg_466;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > input_load_reg_471;
    sc_signal< sc_lv<32> > grp_fu_157_p2;
    sc_signal< sc_lv<32> > tmp_84_reg_476;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > grp_fu_152_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > bias_load_reg_486;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > result_reg_491;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > tmp_9_fu_161_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_498;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<6> > co_reg_96;
    sc_signal< sc_lv<4> > h_reg_107;
    sc_signal< sc_lv<4> > w_reg_118;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<32> > sum_reg_129;
    sc_signal< sc_lv<6> > ci_reg_141;
    sc_signal< sc_lv<64> > tmp_fu_178_p1;
    sc_signal< sc_lv<64> > tmp_146_cast_fu_275_p1;
    sc_signal< sc_lv<64> > tmp_152_cast_fu_326_p1;
    sc_signal< sc_lv<64> > tmp_153_cast_fu_336_p1;
    sc_signal< sc_lv<32> > grp_fu_152_p1;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<12> > tmp_s_fu_183_p3;
    sc_signal< sc_lv<10> > tmp_98_fu_195_p3;
    sc_signal< sc_lv<13> > p_shl_cast_fu_191_p1;
    sc_signal< sc_lv<13> > p_shl1_cast_fu_203_p1;
    sc_signal< sc_lv<9> > tmp_100_fu_213_p3;
    sc_signal< sc_lv<10> > tmp_101_fu_241_p2;
    sc_signal< sc_lv<13> > tmp_102_fu_270_p2;
    sc_signal< sc_lv<9> > tmp_103_fu_296_p3;
    sc_signal< sc_lv<10> > tmp_148_cast_fu_304_p1;
    sc_signal< sc_lv<10> > tmp_104_fu_308_p2;
    sc_signal< sc_lv<13> > tmp_151_cast_fu_313_p3;
    sc_signal< sc_lv<13> > tmp_105_fu_321_p2;
    sc_signal< sc_lv<13> > tmp_83_cast_fu_292_p1;
    sc_signal< sc_lv<13> > tmp_106_fu_331_p2;
    sc_signal< sc_lv<32> > result_to_int_fu_341_p1;
    sc_signal< sc_lv<8> > tmp_6_fu_344_p4;
    sc_signal< sc_lv<23> > tmp_89_fu_354_p1;
    sc_signal< sc_lv<1> > notrhs_fu_364_p2;
    sc_signal< sc_lv<1> > notlhs_fu_358_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_370_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_376_p2;
    sc_signal< sc_lv<23> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<23> ap_ST_fsm_state1;
    static const sc_lv<23> ap_ST_fsm_state2;
    static const sc_lv<23> ap_ST_fsm_state3;
    static const sc_lv<23> ap_ST_fsm_state4;
    static const sc_lv<23> ap_ST_fsm_state5;
    static const sc_lv<23> ap_ST_fsm_state6;
    static const sc_lv<23> ap_ST_fsm_state7;
    static const sc_lv<23> ap_ST_fsm_state8;
    static const sc_lv<23> ap_ST_fsm_state9;
    static const sc_lv<23> ap_ST_fsm_state10;
    static const sc_lv<23> ap_ST_fsm_state11;
    static const sc_lv<23> ap_ST_fsm_state12;
    static const sc_lv<23> ap_ST_fsm_state13;
    static const sc_lv<23> ap_ST_fsm_state14;
    static const sc_lv<23> ap_ST_fsm_state15;
    static const sc_lv<23> ap_ST_fsm_state16;
    static const sc_lv<23> ap_ST_fsm_state17;
    static const sc_lv<23> ap_ST_fsm_state18;
    static const sc_lv<23> ap_ST_fsm_state19;
    static const sc_lv<23> ap_ST_fsm_state20;
    static const sc_lv<23> ap_ST_fsm_state21;
    static const sc_lv<23> ap_ST_fsm_state22;
    static const sc_lv<23> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bias_address0();
    void thread_bias_ce0();
    void thread_ci_2_fu_286_p2();
    void thread_co_8_fu_172_p2();
    void thread_exitcond1_fu_254_p2();
    void thread_exitcond2_fu_225_p2();
    void thread_exitcond3_fu_166_p2();
    void thread_exitcond_fu_280_p2();
    void thread_grp_fu_152_p1();
    void thread_h_8_fu_231_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_notlhs_fu_358_p2();
    void thread_notrhs_fu_364_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_203_p1();
    void thread_p_shl_cast_fu_191_p1();
    void thread_result_to_int_fu_341_p1();
    void thread_tmp_100_fu_213_p3();
    void thread_tmp_101_fu_241_p2();
    void thread_tmp_102_fu_270_p2();
    void thread_tmp_103_fu_296_p3();
    void thread_tmp_104_fu_308_p2();
    void thread_tmp_105_fu_321_p2();
    void thread_tmp_106_fu_331_p2();
    void thread_tmp_10_fu_376_p2();
    void thread_tmp_142_cast_fu_221_p1();
    void thread_tmp_145_cast_fu_246_p3();
    void thread_tmp_146_cast_fu_275_p1();
    void thread_tmp_148_cast_fu_304_p1();
    void thread_tmp_151_cast_fu_313_p3();
    void thread_tmp_152_cast_fu_326_p1();
    void thread_tmp_153_cast_fu_336_p1();
    void thread_tmp_6_fu_344_p4();
    void thread_tmp_82_cast_fu_266_p1();
    void thread_tmp_83_cast_fu_292_p1();
    void thread_tmp_89_fu_354_p1();
    void thread_tmp_8_fu_370_p2();
    void thread_tmp_98_fu_195_p3();
    void thread_tmp_99_fu_207_p2();
    void thread_tmp_cast_fu_237_p1();
    void thread_tmp_fu_178_p1();
    void thread_tmp_s_fu_183_p3();
    void thread_w_8_fu_260_p2();
    void thread_weight_address0();
    void thread_weight_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
