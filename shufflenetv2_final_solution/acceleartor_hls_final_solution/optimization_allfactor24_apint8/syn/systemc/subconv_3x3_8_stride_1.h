// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_3x3_8_stride_1_HH_
#define _subconv_3x3_8_stride_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mac_cud.h"

namespace ap_rtl {

struct subconv_3x3_8_stride_1 : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > input_V_address0;
    sc_out< sc_logic > input_V_ce0;
    sc_in< sc_lv<8> > input_V_q0;
    sc_out< sc_lv<10> > weight_V_address0;
    sc_out< sc_logic > weight_V_ce0;
    sc_in< sc_lv<8> > weight_V_q0;
    sc_out< sc_lv<7> > bias_V_address0;
    sc_out< sc_logic > bias_V_ce0;
    sc_in< sc_lv<8> > bias_V_q0;
    sc_out< sc_lv<12> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;


    // Module declarations
    subconv_3x3_8_stride_1(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_8_stride_1);

    ~subconv_3x3_8_stride_1();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mac_cud<1,1,8,8,8,8>* ShuffleNetV2_mac_cud_x_U668;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > tmp_4_fu_220_p2;
    sc_signal< sc_lv<11> > tmp_4_reg_514;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_7_cast_fu_244_p1;
    sc_signal< sc_lv<11> > tmp_7_cast_reg_519;
    sc_signal< sc_lv<12> > tmp_12_cast_fu_254_p1;
    sc_signal< sc_lv<12> > tmp_12_cast_reg_524;
    sc_signal< sc_lv<7> > co_1_fu_264_p2;
    sc_signal< sc_lv<7> > co_1_reg_532;
    sc_signal< sc_lv<7> > bias_V_addr_reg_537;
    sc_signal< sc_lv<1> > exitcond1_fu_258_p2;
    sc_signal< sc_lv<13> > tmp_12_fu_299_p2;
    sc_signal< sc_lv<13> > tmp_12_reg_542;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > tmp_fu_311_p3;
    sc_signal< sc_lv<4> > tmp_reg_550;
    sc_signal< sc_lv<1> > exitcond2_fu_305_p2;
    sc_signal< sc_lv<12> > output_V_addr_reg_555;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > tmp_2_fu_339_p3;
    sc_signal< sc_lv<4> > tmp_2_reg_563;
    sc_signal< sc_lv<1> > exitcond3_fu_333_p2;
    sc_signal< sc_lv<3> > h_1_fu_347_p2;
    sc_signal< sc_lv<11> > tmp_16_fu_368_p2;
    sc_signal< sc_lv<11> > tmp_16_reg_573;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > m_1_fu_380_p2;
    sc_signal< sc_lv<2> > m_1_reg_581;
    sc_signal< sc_lv<15> > tmp_20_fu_434_p2;
    sc_signal< sc_lv<15> > tmp_20_reg_586;
    sc_signal< sc_lv<1> > exitcond4_fu_374_p2;
    sc_signal< sc_lv<3> > w_1_fu_440_p2;
    sc_signal< sc_lv<3> > w_1_reg_591;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > n_1_fu_466_p2;
    sc_signal< sc_lv<2> > n_1_reg_604;
    sc_signal< sc_lv<1> > exitcond_fu_460_p2;
    sc_signal< sc_lv<8> > weight_V_load_reg_614;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > input_V_load_reg_619;
    sc_signal< sc_lv<8> > grp_fu_508_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<7> > co_reg_106;
    sc_signal< sc_lv<3> > h_reg_117;
    sc_signal< sc_lv<3> > w_reg_129;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > p_s_reg_141;
    sc_signal< sc_lv<2> > m_reg_153;
    sc_signal< sc_lv<8> > p_09_1_reg_164;
    sc_signal< sc_lv<2> > n_reg_176;
    sc_signal< sc_lv<32> > co_cast7_fu_187_p1;
    sc_signal< sc_lv<32> > tmp_17_cast_fu_328_p1;
    sc_signal< sc_lv<32> > tmp_25_cast_fu_455_p1;
    sc_signal< sc_lv<32> > tmp_26_cast_fu_496_p1;
    sc_signal< sc_lv<10> > tmp_1_fu_196_p3;
    sc_signal< sc_lv<8> > tmp_3_fu_208_p3;
    sc_signal< sc_lv<11> > p_shl4_cast_fu_216_p1;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_204_p1;
    sc_signal< sc_lv<9> > tmp_6_fu_226_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_234_p1;
    sc_signal< sc_lv<10> > co_cast7_cast_fu_192_p1;
    sc_signal< sc_lv<10> > tmp_7_fu_238_p2;
    sc_signal< sc_lv<11> > tmp_s_fu_248_p2;
    sc_signal< sc_lv<12> > h_cast6_cast_fu_270_p1;
    sc_signal< sc_lv<12> > tmp_10_fu_274_p2;
    sc_signal< sc_lv<10> > tmp_11_fu_279_p1;
    sc_signal< sc_lv<13> > p_shl5_cast_fu_283_p3;
    sc_signal< sc_lv<13> > p_shl6_cast_fu_291_p3;
    sc_signal< sc_lv<13> > w_cast5_cast_fu_319_p1;
    sc_signal< sc_lv<13> > tmp_13_fu_323_p2;
    sc_signal< sc_lv<11> > m_cast4_cast_fu_353_p1;
    sc_signal< sc_lv<11> > tmp_14_fu_357_p2;
    sc_signal< sc_lv<11> > tmp_15_fu_362_p2;
    sc_signal< sc_lv<2> > tmp1_fu_386_p2;
    sc_signal< sc_lv<4> > tmp1_cast_fu_392_p1;
    sc_signal< sc_lv<4> > tmp_5_fu_396_p2;
    sc_signal< sc_lv<11> > tmp_5_cast_cast_fu_401_p1;
    sc_signal< sc_lv<11> > tmp_17_fu_405_p2;
    sc_signal< sc_lv<14> > tmp_18_fu_410_p3;
    sc_signal< sc_lv<12> > tmp_19_fu_422_p3;
    sc_signal< sc_lv<15> > p_shl8_cast_fu_418_p1;
    sc_signal< sc_lv<15> > p_shl9_cast_fu_430_p1;
    sc_signal< sc_lv<11> > n_cast3_cast_fu_446_p1;
    sc_signal< sc_lv<11> > tmp_21_fu_450_p2;
    sc_signal< sc_lv<2> > tmp2_fu_472_p2;
    sc_signal< sc_lv<4> > tmp2_cast_fu_478_p1;
    sc_signal< sc_lv<4> > tmp_8_fu_482_p2;
    sc_signal< sc_lv<15> > tmp_8_cast_cast_fu_487_p1;
    sc_signal< sc_lv<15> > tmp_22_fu_491_p2;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<11> ap_const_lv11_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
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
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bias_V_address0();
    void thread_bias_V_ce0();
    void thread_co_1_fu_264_p2();
    void thread_co_cast7_cast_fu_192_p1();
    void thread_co_cast7_fu_187_p1();
    void thread_exitcond1_fu_258_p2();
    void thread_exitcond2_fu_305_p2();
    void thread_exitcond3_fu_333_p2();
    void thread_exitcond4_fu_374_p2();
    void thread_exitcond_fu_460_p2();
    void thread_h_1_fu_347_p2();
    void thread_h_cast6_cast_fu_270_p1();
    void thread_input_V_address0();
    void thread_input_V_ce0();
    void thread_m_1_fu_380_p2();
    void thread_m_cast4_cast_fu_353_p1();
    void thread_n_1_fu_466_p2();
    void thread_n_cast3_cast_fu_446_p1();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl2_cast_fu_234_p1();
    void thread_p_shl3_cast_fu_204_p1();
    void thread_p_shl4_cast_fu_216_p1();
    void thread_p_shl5_cast_fu_283_p3();
    void thread_p_shl6_cast_fu_291_p3();
    void thread_p_shl8_cast_fu_418_p1();
    void thread_p_shl9_cast_fu_430_p1();
    void thread_tmp1_cast_fu_392_p1();
    void thread_tmp1_fu_386_p2();
    void thread_tmp2_cast_fu_478_p1();
    void thread_tmp2_fu_472_p2();
    void thread_tmp_10_fu_274_p2();
    void thread_tmp_11_fu_279_p1();
    void thread_tmp_12_cast_fu_254_p1();
    void thread_tmp_12_fu_299_p2();
    void thread_tmp_13_fu_323_p2();
    void thread_tmp_14_fu_357_p2();
    void thread_tmp_15_fu_362_p2();
    void thread_tmp_16_fu_368_p2();
    void thread_tmp_17_cast_fu_328_p1();
    void thread_tmp_17_fu_405_p2();
    void thread_tmp_18_fu_410_p3();
    void thread_tmp_19_fu_422_p3();
    void thread_tmp_1_fu_196_p3();
    void thread_tmp_20_fu_434_p2();
    void thread_tmp_21_fu_450_p2();
    void thread_tmp_22_fu_491_p2();
    void thread_tmp_25_cast_fu_455_p1();
    void thread_tmp_26_cast_fu_496_p1();
    void thread_tmp_2_fu_339_p3();
    void thread_tmp_3_fu_208_p3();
    void thread_tmp_4_fu_220_p2();
    void thread_tmp_5_cast_cast_fu_401_p1();
    void thread_tmp_5_fu_396_p2();
    void thread_tmp_6_fu_226_p3();
    void thread_tmp_7_cast_fu_244_p1();
    void thread_tmp_7_fu_238_p2();
    void thread_tmp_8_cast_cast_fu_487_p1();
    void thread_tmp_8_fu_482_p2();
    void thread_tmp_fu_311_p3();
    void thread_tmp_s_fu_248_p2();
    void thread_w_1_fu_440_p2();
    void thread_w_cast5_cast_fu_319_p1();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
