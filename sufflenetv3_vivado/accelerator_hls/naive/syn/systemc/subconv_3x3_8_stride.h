// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_3x3_8_stride_HH_
#define _subconv_3x3_8_stride_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_faddbkb.h"
#include "ShuffleNetV2_fmulcud.h"

namespace ap_rtl {

struct subconv_3x3_8_stride : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<10> > weight_address0;
    sc_out< sc_logic > weight_ce0;
    sc_in< sc_lv<32> > weight_q0;
    sc_out< sc_lv<7> > bias_address0;
    sc_out< sc_logic > bias_ce0;
    sc_in< sc_lv<32> > bias_q0;
    sc_out< sc_lv<11> > output_0_address0;
    sc_out< sc_logic > output_0_ce0;
    sc_out< sc_logic > output_0_we0;
    sc_out< sc_lv<32> > output_0_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    subconv_3x3_8_stride(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_8_stride);

    ~subconv_3x3_8_stride();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_faddbkb<1,5,32,32,32>* ShuffleNetV2_faddbkb_x_U117;
    ShuffleNetV2_fmulcud<1,4,32,32,32>* ShuffleNetV2_fmulcud_x_U118;
    sc_signal< sc_lv<24> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > co_1_fu_193_p2;
    sc_signal< sc_lv<7> > co_1_reg_483;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_15_cast_fu_216_p1;
    sc_signal< sc_lv<11> > tmp_15_cast_reg_488;
    sc_signal< sc_lv<1> > exitcond4_fu_187_p2;
    sc_signal< sc_lv<10> > p_shl_cast_fu_228_p1;
    sc_signal< sc_lv<10> > p_shl_cast_reg_493;
    sc_signal< sc_lv<11> > tmp_17_cast_fu_238_p1;
    sc_signal< sc_lv<11> > tmp_17_cast_reg_498;
    sc_signal< sc_lv<7> > bias_addr_reg_503;
    sc_signal< sc_lv<3> > h_1_fu_248_p2;
    sc_signal< sc_lv<3> > h_1_reg_511;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > tmp_2_cast_fu_260_p1;
    sc_signal< sc_lv<4> > tmp_2_cast_reg_516;
    sc_signal< sc_lv<1> > exitcond3_fu_242_p2;
    sc_signal< sc_lv<12> > tmp_23_cast_fu_273_p3;
    sc_signal< sc_lv<12> > tmp_23_cast_reg_522;
    sc_signal< sc_lv<3> > w_1_fu_287_p2;
    sc_signal< sc_lv<3> > w_1_reg_530;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > tmp_5_cast_fu_299_p1;
    sc_signal< sc_lv<4> > tmp_5_cast_reg_535;
    sc_signal< sc_lv<1> > exitcond2_fu_281_p2;
    sc_signal< sc_lv<4> > tmp_1_fu_303_p2;
    sc_signal< sc_lv<4> > tmp_1_reg_540;
    sc_signal< sc_lv<2> > m_1_fu_319_p2;
    sc_signal< sc_lv<2> > m_1_reg_548;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<11> > tmp_15_fu_340_p2;
    sc_signal< sc_lv<11> > tmp_15_reg_553;
    sc_signal< sc_lv<1> > exitcond1_fu_313_p2;
    sc_signal< sc_lv<14> > tmp_31_cast_fu_370_p3;
    sc_signal< sc_lv<14> > tmp_31_cast_reg_558;
    sc_signal< sc_lv<1> > sel_tmp_fu_388_p2;
    sc_signal< sc_lv<1> > sel_tmp_reg_563;
    sc_signal< sc_lv<12> > tmp_8_fu_397_p2;
    sc_signal< sc_lv<12> > tmp_8_reg_568;
    sc_signal< sc_lv<2> > n_1_fu_412_p2;
    sc_signal< sc_lv<2> > n_1_reg_576;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<11> > tmp_17_fu_422_p2;
    sc_signal< sc_lv<11> > tmp_17_reg_581;
    sc_signal< sc_lv<1> > exitcond_fu_406_p2;
    sc_signal< sc_lv<1> > p_not_fu_427_p2;
    sc_signal< sc_lv<1> > p_not_reg_586;
    sc_signal< sc_lv<14> > tmp_18_fu_451_p2;
    sc_signal< sc_lv<14> > tmp_18_reg_591;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > weight_load_reg_606;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > tmp_12_fu_468_p3;
    sc_signal< sc_lv<32> > tmp_12_reg_611;
    sc_signal< sc_lv<32> > grp_fu_183_p2;
    sc_signal< sc_lv<32> > tmp_13_reg_616;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > grp_fu_177_p2;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<32> > bias_load_reg_626;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<32> > result_reg_631;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<7> > co_reg_97;
    sc_signal< sc_lv<3> > h_reg_108;
    sc_signal< sc_lv<3> > w_reg_119;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<32> > sum_reg_131;
    sc_signal< sc_lv<2> > m_reg_143;
    sc_signal< sc_lv<32> > sum_1_reg_154;
    sc_signal< sc_lv<2> > n_reg_166;
    sc_signal< sc_lv<64> > tmp_fu_199_p1;
    sc_signal< sc_lv<64> > tmp_32_cast_fu_456_p1;
    sc_signal< sc_lv<64> > tmp_33_cast_fu_460_p1;
    sc_signal< sc_lv<64> > tmp_25_cast_fu_476_p1;
    sc_signal< sc_lv<32> > grp_fu_177_p0;
    sc_signal< sc_lv<32> > grp_fu_177_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<10> > tmp_s_fu_208_p3;
    sc_signal< sc_lv<9> > tmp_2_fu_220_p3;
    sc_signal< sc_lv<10> > tmp_cast_fu_204_p1;
    sc_signal< sc_lv<10> > tmp_3_fu_232_p2;
    sc_signal< sc_lv<3> > tmp_5_fu_254_p2;
    sc_signal< sc_lv<10> > tmp_3_cast_fu_264_p1;
    sc_signal< sc_lv<10> > tmp_6_fu_268_p2;
    sc_signal< sc_lv<3> > tmp_7_fu_293_p2;
    sc_signal< sc_lv<11> > tmp_8_cast_fu_325_p1;
    sc_signal< sc_lv<11> > tmp_11_fu_329_p2;
    sc_signal< sc_lv<11> > tmp_14_fu_334_p2;
    sc_signal< sc_lv<2> > tmp3_fu_346_p2;
    sc_signal< sc_lv<4> > tmp3_cast_fu_352_p1;
    sc_signal< sc_lv<4> > tmp_4_fu_356_p2;
    sc_signal< sc_lv<11> > tmp_7_cast_fu_361_p1;
    sc_signal< sc_lv<11> > tmp_16_fu_365_p2;
    sc_signal< sc_lv<3> > m_cast8_cast_fu_309_p1;
    sc_signal< sc_lv<3> > tmp_9_fu_378_p2;
    sc_signal< sc_lv<4> > tmp_9_cast_fu_384_p1;
    sc_signal< sc_lv<12> > tmp_6_cast_fu_393_p1;
    sc_signal< sc_lv<11> > tmp_cast_19_fu_418_p1;
    sc_signal< sc_lv<4> > n_cast6_fu_402_p1;
    sc_signal< sc_lv<2> > tmp4_fu_432_p2;
    sc_signal< sc_lv<4> > tmp4_cast_fu_438_p1;
    sc_signal< sc_lv<4> > tmp_10_fu_442_p2;
    sc_signal< sc_lv<14> > tmp_11_cast_fu_447_p1;
    sc_signal< sc_lv<1> > sel_tmp1_fu_464_p2;
    sc_signal< sc_lv<24> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<24> ap_ST_fsm_state1;
    static const sc_lv<24> ap_ST_fsm_state2;
    static const sc_lv<24> ap_ST_fsm_state3;
    static const sc_lv<24> ap_ST_fsm_state4;
    static const sc_lv<24> ap_ST_fsm_state5;
    static const sc_lv<24> ap_ST_fsm_state6;
    static const sc_lv<24> ap_ST_fsm_state7;
    static const sc_lv<24> ap_ST_fsm_state8;
    static const sc_lv<24> ap_ST_fsm_state9;
    static const sc_lv<24> ap_ST_fsm_state10;
    static const sc_lv<24> ap_ST_fsm_state11;
    static const sc_lv<24> ap_ST_fsm_state12;
    static const sc_lv<24> ap_ST_fsm_state13;
    static const sc_lv<24> ap_ST_fsm_state14;
    static const sc_lv<24> ap_ST_fsm_state15;
    static const sc_lv<24> ap_ST_fsm_state16;
    static const sc_lv<24> ap_ST_fsm_state17;
    static const sc_lv<24> ap_ST_fsm_state18;
    static const sc_lv<24> ap_ST_fsm_state19;
    static const sc_lv<24> ap_ST_fsm_state20;
    static const sc_lv<24> ap_ST_fsm_state21;
    static const sc_lv<24> ap_ST_fsm_state22;
    static const sc_lv<24> ap_ST_fsm_state23;
    static const sc_lv<24> ap_ST_fsm_state24;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<11> ap_const_lv11_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bias_address0();
    void thread_bias_ce0();
    void thread_co_1_fu_193_p2();
    void thread_exitcond1_fu_313_p2();
    void thread_exitcond2_fu_281_p2();
    void thread_exitcond3_fu_242_p2();
    void thread_exitcond4_fu_187_p2();
    void thread_exitcond_fu_406_p2();
    void thread_grp_fu_177_p0();
    void thread_grp_fu_177_p1();
    void thread_h_1_fu_248_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_m_1_fu_319_p2();
    void thread_m_cast8_cast_fu_309_p1();
    void thread_n_1_fu_412_p2();
    void thread_n_cast6_fu_402_p1();
    void thread_output_0_address0();
    void thread_output_0_ce0();
    void thread_output_0_d0();
    void thread_output_0_we0();
    void thread_p_not_fu_427_p2();
    void thread_p_shl_cast_fu_228_p1();
    void thread_sel_tmp1_fu_464_p2();
    void thread_sel_tmp_fu_388_p2();
    void thread_tmp3_cast_fu_352_p1();
    void thread_tmp3_fu_346_p2();
    void thread_tmp4_cast_fu_438_p1();
    void thread_tmp4_fu_432_p2();
    void thread_tmp_10_fu_442_p2();
    void thread_tmp_11_cast_fu_447_p1();
    void thread_tmp_11_fu_329_p2();
    void thread_tmp_12_fu_468_p3();
    void thread_tmp_14_fu_334_p2();
    void thread_tmp_15_cast_fu_216_p1();
    void thread_tmp_15_fu_340_p2();
    void thread_tmp_16_fu_365_p2();
    void thread_tmp_17_cast_fu_238_p1();
    void thread_tmp_17_fu_422_p2();
    void thread_tmp_18_fu_451_p2();
    void thread_tmp_1_fu_303_p2();
    void thread_tmp_23_cast_fu_273_p3();
    void thread_tmp_25_cast_fu_476_p1();
    void thread_tmp_2_cast_fu_260_p1();
    void thread_tmp_2_fu_220_p3();
    void thread_tmp_31_cast_fu_370_p3();
    void thread_tmp_32_cast_fu_456_p1();
    void thread_tmp_33_cast_fu_460_p1();
    void thread_tmp_3_cast_fu_264_p1();
    void thread_tmp_3_fu_232_p2();
    void thread_tmp_4_fu_356_p2();
    void thread_tmp_5_cast_fu_299_p1();
    void thread_tmp_5_fu_254_p2();
    void thread_tmp_6_cast_fu_393_p1();
    void thread_tmp_6_fu_268_p2();
    void thread_tmp_7_cast_fu_361_p1();
    void thread_tmp_7_fu_293_p2();
    void thread_tmp_8_cast_fu_325_p1();
    void thread_tmp_8_fu_397_p2();
    void thread_tmp_9_cast_fu_384_p1();
    void thread_tmp_9_fu_378_p2();
    void thread_tmp_cast_19_fu_418_p1();
    void thread_tmp_cast_fu_204_p1();
    void thread_tmp_fu_199_p1();
    void thread_tmp_s_fu_208_p3();
    void thread_w_1_fu_287_p2();
    void thread_weight_address0();
    void thread_weight_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif