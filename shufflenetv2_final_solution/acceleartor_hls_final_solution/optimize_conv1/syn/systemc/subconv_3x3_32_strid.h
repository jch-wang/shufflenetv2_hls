// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_3x3_32_strid_HH_
#define _subconv_3x3_32_strid_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct subconv_3x3_32_strid : public sc_module {
    // Port declarations 40
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<12> > input_0_V_address0;
    sc_out< sc_logic > input_0_V_ce0;
    sc_in< sc_lv<8> > input_0_V_q0;
    sc_out< sc_lv<12> > input_1_V_address0;
    sc_out< sc_logic > input_1_V_ce0;
    sc_in< sc_lv<8> > input_1_V_q0;
    sc_out< sc_lv<12> > input_2_V_address0;
    sc_out< sc_logic > input_2_V_ce0;
    sc_in< sc_lv<8> > input_2_V_q0;
    sc_out< sc_lv<12> > input_3_V_address0;
    sc_out< sc_logic > input_3_V_ce0;
    sc_in< sc_lv<8> > input_3_V_q0;
    sc_out< sc_lv<12> > input_4_V_address0;
    sc_out< sc_logic > input_4_V_ce0;
    sc_in< sc_lv<8> > input_4_V_q0;
    sc_out< sc_lv<12> > input_5_V_address0;
    sc_out< sc_logic > input_5_V_ce0;
    sc_in< sc_lv<8> > input_5_V_q0;
    sc_out< sc_lv<12> > input_6_V_address0;
    sc_out< sc_logic > input_6_V_ce0;
    sc_in< sc_lv<8> > input_6_V_q0;
    sc_out< sc_lv<12> > input_7_V_address0;
    sc_out< sc_logic > input_7_V_ce0;
    sc_in< sc_lv<8> > input_7_V_q0;
    sc_out< sc_lv<8> > weight_V_address0;
    sc_out< sc_logic > weight_V_ce0;
    sc_in< sc_lv<8> > weight_V_q0;
    sc_out< sc_lv<5> > bias_V_address0;
    sc_out< sc_logic > bias_V_ce0;
    sc_in< sc_lv<8> > bias_V_q0;
    sc_out< sc_lv<13> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;


    // Module declarations
    subconv_3x3_32_strid(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_32_strid);

    ~subconv_3x3_32_strid();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U43;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > co_4_fu_334_p2;
    sc_signal< sc_lv<5> > co_4_reg_1013;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<9> > tmp_109_cast_fu_367_p1;
    sc_signal< sc_lv<9> > tmp_109_cast_reg_1018;
    sc_signal< sc_lv<1> > exitcond4_fu_328_p2;
    sc_signal< sc_lv<10> > tmp_100_fu_395_p2;
    sc_signal< sc_lv<10> > tmp_100_reg_1023;
    sc_signal< sc_lv<3> > tmp_101_fu_401_p1;
    sc_signal< sc_lv<3> > tmp_101_reg_1028;
    sc_signal< sc_lv<8> > tmp_104_fu_439_p2;
    sc_signal< sc_lv<8> > tmp_104_reg_1033;
    sc_signal< sc_lv<5> > bias_V_addr_reg_1038;
    sc_signal< sc_lv<6> > tmp_s_fu_451_p3;
    sc_signal< sc_lv<6> > tmp_s_reg_1046;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond5_fu_445_p2;
    sc_signal< sc_lv<14> > tmp_107_fu_488_p2;
    sc_signal< sc_lv<14> > tmp_107_reg_1051;
    sc_signal< sc_lv<6> > tmp_61_fu_500_p3;
    sc_signal< sc_lv<6> > tmp_61_reg_1059;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond6_fu_494_p2;
    sc_signal< sc_lv<5> > h_4_fu_508_p2;
    sc_signal< sc_lv<2> > m_4_fu_520_p2;
    sc_signal< sc_lv<2> > m_4_reg_1072;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<9> > tmp_111_fu_541_p2;
    sc_signal< sc_lv<9> > tmp_111_reg_1077;
    sc_signal< sc_lv<1> > exitcond7_fu_514_p2;
    sc_signal< sc_lv<13> > tmp_114_fu_591_p2;
    sc_signal< sc_lv<13> > tmp_114_reg_1082;
    sc_signal< sc_lv<14> > tmp_108_fu_601_p2;
    sc_signal< sc_lv<14> > tmp_108_reg_1087;
    sc_signal< sc_lv<5> > w_4_fu_606_p2;
    sc_signal< sc_lv<5> > w_4_reg_1092;
    sc_signal< sc_lv<2> > n_4_fu_618_p2;
    sc_signal< sc_lv<2> > n_4_reg_1100;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond_fu_612_p2;
    sc_signal< sc_lv<8> > weight_V_load_reg_1150;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > tmp_59_fu_674_p10;
    sc_signal< sc_lv<8> > tmp_59_reg_1155;
    sc_signal< sc_lv<16> > p_Val2_3_fu_701_p2;
    sc_signal< sc_lv<16> > p_Val2_3_reg_1160;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > tmp_118_reg_1165;
    sc_signal< sc_lv<16> > p_Val2_29_fu_727_p2;
    sc_signal< sc_lv<16> > p_Val2_29_reg_1170;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > signbit_reg_1175;
    sc_signal< sc_lv<8> > p_Val2_31_fu_761_p2;
    sc_signal< sc_lv<8> > p_Val2_31_reg_1182;
    sc_signal< sc_lv<1> > newsignbit_fu_767_p3;
    sc_signal< sc_lv<1> > newsignbit_reg_1188;
    sc_signal< sc_lv<1> > carry_fu_781_p2;
    sc_signal< sc_lv<1> > carry_reg_1194;
    sc_signal< sc_lv<2> > tmp_75_reg_1201;
    sc_signal< sc_lv<1> > p_38_i_i_fu_839_p2;
    sc_signal< sc_lv<1> > p_38_i_i_reg_1207;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_77_fu_855_p2;
    sc_signal< sc_lv<1> > tmp_77_reg_1212;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_fu_866_p2;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_reg_1217;
    sc_signal< sc_lv<1> > underflow_fu_883_p2;
    sc_signal< sc_lv<1> > underflow_reg_1222;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_888_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_reg_1227;
    sc_signal< sc_lv<8> > sum_V_fu_915_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > isneg_reg_1237;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > result_V_fu_945_p2;
    sc_signal< sc_lv<8> > result_V_reg_1244;
    sc_signal< sc_lv<1> > newsignbit_5_reg_1250;
    sc_signal< sc_lv<5> > co_reg_247;
    sc_signal< sc_lv<5> > h_reg_258;
    sc_signal< sc_lv<5> > w_reg_270;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > p_Val2_s_reg_282;
    sc_signal< sc_lv<2> > m_reg_294;
    sc_signal< sc_lv<8> > p_Val2_28_reg_305;
    sc_signal< sc_lv<2> > n_reg_317;
    sc_signal< sc_lv<64> > tmp_fu_340_p1;
    sc_signal< sc_lv<64> > tmp_128_cast_fu_633_p1;
    sc_signal< sc_lv<64> > tmp_129_cast_fu_662_p1;
    sc_signal< sc_lv<64> > tmp_120_cast_fu_1006_p1;
    sc_signal< sc_lv<7> > tmp_96_fu_349_p3;
    sc_signal< sc_lv<8> > p_shl4_cast_fu_357_p1;
    sc_signal< sc_lv<8> > tmp_cast_fu_345_p1;
    sc_signal< sc_lv<8> > tmp_97_fu_361_p2;
    sc_signal< sc_lv<9> > tmp_98_fu_371_p3;
    sc_signal< sc_lv<6> > tmp_99_fu_383_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_379_p1;
    sc_signal< sc_lv<10> > p_shl3_cast_fu_391_p1;
    sc_signal< sc_lv<2> > newIndex_fu_405_p4;
    sc_signal< sc_lv<7> > tmp_102_fu_415_p3;
    sc_signal< sc_lv<3> > tmp_103_fu_427_p3;
    sc_signal< sc_lv<8> > p_shl_cast_fu_423_p1;
    sc_signal< sc_lv<8> > p_shl1_cast_fu_435_p1;
    sc_signal< sc_lv<10> > tmp_60_cast_fu_459_p1;
    sc_signal< sc_lv<10> > tmp_105_fu_463_p2;
    sc_signal< sc_lv<11> > tmp_106_fu_476_p3;
    sc_signal< sc_lv<14> > p_shl6_cast_fu_484_p1;
    sc_signal< sc_lv<14> > p_shl5_cast_fu_468_p3;
    sc_signal< sc_lv<9> > tmp_66_cast_fu_526_p1;
    sc_signal< sc_lv<9> > tmp_109_fu_530_p2;
    sc_signal< sc_lv<9> > tmp_110_fu_535_p2;
    sc_signal< sc_lv<2> > tmp2_fu_547_p2;
    sc_signal< sc_lv<6> > tmp2_cast_fu_553_p1;
    sc_signal< sc_lv<6> > tmp_67_fu_557_p2;
    sc_signal< sc_lv<8> > tmp_68_cast_fu_562_p1;
    sc_signal< sc_lv<8> > tmp_112_fu_566_p2;
    sc_signal< sc_lv<9> > tmp_113_fu_579_p3;
    sc_signal< sc_lv<13> > p_shl8_cast_fu_587_p1;
    sc_signal< sc_lv<13> > p_shl7_cast_fu_571_p3;
    sc_signal< sc_lv<14> > tmp_65_cast_fu_597_p1;
    sc_signal< sc_lv<9> > tmp_69_cast_fu_624_p1;
    sc_signal< sc_lv<9> > tmp_115_fu_628_p2;
    sc_signal< sc_lv<2> > tmp3_fu_638_p2;
    sc_signal< sc_lv<6> > tmp3_cast_fu_644_p1;
    sc_signal< sc_lv<6> > tmp_70_fu_648_p2;
    sc_signal< sc_lv<13> > tmp_71_cast_fu_653_p1;
    sc_signal< sc_lv<13> > tmp_116_fu_657_p2;
    sc_signal< sc_lv<8> > p_Val2_3_fu_701_p0;
    sc_signal< sc_lv<8> > p_Val2_3_fu_701_p1;
    sc_signal< sc_lv<14> > tmp_72_fu_715_p3;
    sc_signal< sc_lv<16> > tmp_89_cast_fu_723_p1;
    sc_signal< sc_lv<8> > p_Val2_30_fu_740_p4;
    sc_signal< sc_lv<8> > tmp_73_fu_750_p1;
    sc_signal< sc_lv<1> > tmp_119_fu_753_p3;
    sc_signal< sc_lv<1> > tmp_74_fu_775_p2;
    sc_signal< sc_lv<1> > Range1_all_ones_fu_804_p2;
    sc_signal< sc_lv<1> > Range1_all_zeros_fu_809_p2;
    sc_signal< sc_lv<1> > tmp_121_fu_797_p3;
    sc_signal< sc_lv<1> > tmp_76_fu_821_p2;
    sc_signal< sc_lv<1> > p_41_i_i_fu_827_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_814_p3;
    sc_signal< sc_lv<1> > p_not_i_i_fu_844_p2;
    sc_signal< sc_lv<1> > brmerge_i_i4_fu_850_p2;
    sc_signal< sc_lv<1> > deleted_ones_fu_832_p3;
    sc_signal< sc_lv<1> > tmp4_demorgan_fu_871_p2;
    sc_signal< sc_lv<1> > tmp4_fu_877_p2;
    sc_signal< sc_lv<1> > overflow_fu_860_p2;
    sc_signal< sc_lv<1> > tmp5_fu_894_p2;
    sc_signal< sc_lv<1> > underflow_not_fu_898_p2;
    sc_signal< sc_lv<8> > p_Val2_32_mux_fu_903_p3;
    sc_signal< sc_lv<8> > p_Val2_s_45_fu_909_p3;
    sc_signal< sc_lv<9> > tmp_62_fu_923_p1;
    sc_signal< sc_lv<9> > tmp_63_fu_927_p1;
    sc_signal< sc_lv<9> > p_Val2_26_fu_931_p2;
    sc_signal< sc_lv<1> > tmp_64_fu_959_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_973_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_969_p2;
    sc_signal< sc_lv<1> > underflow_5_fu_964_p2;
    sc_signal< sc_lv<1> > brmerge9_fu_978_p2;
    sc_signal< sc_lv<8> > result_V_mux_fu_983_p3;
    sc_signal< sc_lv<8> > p_result_V_fu_990_p3;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
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
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_80;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Range1_all_ones_fu_804_p2();
    void thread_Range1_all_zeros_fu_809_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
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
    void thread_brmerge40_demorgan_i_fu_866_p2();
    void thread_brmerge9_fu_978_p2();
    void thread_brmerge_i_i4_fu_850_p2();
    void thread_brmerge_i_i_fu_969_p2();
    void thread_brmerge_i_i_i_fu_888_p2();
    void thread_carry_fu_781_p2();
    void thread_co_4_fu_334_p2();
    void thread_deleted_ones_fu_832_p3();
    void thread_deleted_zeros_fu_814_p3();
    void thread_exitcond4_fu_328_p2();
    void thread_exitcond5_fu_445_p2();
    void thread_exitcond6_fu_494_p2();
    void thread_exitcond7_fu_514_p2();
    void thread_exitcond_fu_612_p2();
    void thread_h_4_fu_508_p2();
    void thread_input_0_V_address0();
    void thread_input_0_V_ce0();
    void thread_input_1_V_address0();
    void thread_input_1_V_ce0();
    void thread_input_2_V_address0();
    void thread_input_2_V_ce0();
    void thread_input_3_V_address0();
    void thread_input_3_V_ce0();
    void thread_input_4_V_address0();
    void thread_input_4_V_ce0();
    void thread_input_5_V_address0();
    void thread_input_5_V_ce0();
    void thread_input_6_V_address0();
    void thread_input_6_V_ce0();
    void thread_input_7_V_address0();
    void thread_input_7_V_ce0();
    void thread_isneg_not_fu_973_p2();
    void thread_m_4_fu_520_p2();
    void thread_n_4_fu_618_p2();
    void thread_newIndex_fu_405_p4();
    void thread_newsignbit_fu_767_p3();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_overflow_fu_860_p2();
    void thread_p_38_i_i_fu_839_p2();
    void thread_p_41_i_i_fu_827_p2();
    void thread_p_Val2_26_fu_931_p2();
    void thread_p_Val2_29_fu_727_p2();
    void thread_p_Val2_30_fu_740_p4();
    void thread_p_Val2_31_fu_761_p2();
    void thread_p_Val2_32_mux_fu_903_p3();
    void thread_p_Val2_3_fu_701_p0();
    void thread_p_Val2_3_fu_701_p1();
    void thread_p_Val2_3_fu_701_p2();
    void thread_p_Val2_s_45_fu_909_p3();
    void thread_p_not_i_i_fu_844_p2();
    void thread_p_result_V_fu_990_p3();
    void thread_p_shl1_cast_fu_435_p1();
    void thread_p_shl2_cast_fu_379_p1();
    void thread_p_shl3_cast_fu_391_p1();
    void thread_p_shl4_cast_fu_357_p1();
    void thread_p_shl5_cast_fu_468_p3();
    void thread_p_shl6_cast_fu_484_p1();
    void thread_p_shl7_cast_fu_571_p3();
    void thread_p_shl8_cast_fu_587_p1();
    void thread_p_shl_cast_fu_423_p1();
    void thread_result_V_fu_945_p2();
    void thread_result_V_mux_fu_983_p3();
    void thread_sum_V_fu_915_p3();
    void thread_tmp2_cast_fu_553_p1();
    void thread_tmp2_fu_547_p2();
    void thread_tmp3_cast_fu_644_p1();
    void thread_tmp3_fu_638_p2();
    void thread_tmp4_demorgan_fu_871_p2();
    void thread_tmp4_fu_877_p2();
    void thread_tmp5_fu_894_p2();
    void thread_tmp_100_fu_395_p2();
    void thread_tmp_101_fu_401_p1();
    void thread_tmp_102_fu_415_p3();
    void thread_tmp_103_fu_427_p3();
    void thread_tmp_104_fu_439_p2();
    void thread_tmp_105_fu_463_p2();
    void thread_tmp_106_fu_476_p3();
    void thread_tmp_107_fu_488_p2();
    void thread_tmp_108_fu_601_p2();
    void thread_tmp_109_cast_fu_367_p1();
    void thread_tmp_109_fu_530_p2();
    void thread_tmp_110_fu_535_p2();
    void thread_tmp_111_fu_541_p2();
    void thread_tmp_112_fu_566_p2();
    void thread_tmp_113_fu_579_p3();
    void thread_tmp_114_fu_591_p2();
    void thread_tmp_115_fu_628_p2();
    void thread_tmp_116_fu_657_p2();
    void thread_tmp_119_fu_753_p3();
    void thread_tmp_120_cast_fu_1006_p1();
    void thread_tmp_121_fu_797_p3();
    void thread_tmp_128_cast_fu_633_p1();
    void thread_tmp_129_cast_fu_662_p1();
    void thread_tmp_60_cast_fu_459_p1();
    void thread_tmp_61_fu_500_p3();
    void thread_tmp_62_fu_923_p1();
    void thread_tmp_63_fu_927_p1();
    void thread_tmp_64_fu_959_p2();
    void thread_tmp_65_cast_fu_597_p1();
    void thread_tmp_66_cast_fu_526_p1();
    void thread_tmp_67_fu_557_p2();
    void thread_tmp_68_cast_fu_562_p1();
    void thread_tmp_69_cast_fu_624_p1();
    void thread_tmp_70_fu_648_p2();
    void thread_tmp_71_cast_fu_653_p1();
    void thread_tmp_72_fu_715_p3();
    void thread_tmp_73_fu_750_p1();
    void thread_tmp_74_fu_775_p2();
    void thread_tmp_76_fu_821_p2();
    void thread_tmp_77_fu_855_p2();
    void thread_tmp_89_cast_fu_723_p1();
    void thread_tmp_96_fu_349_p3();
    void thread_tmp_97_fu_361_p2();
    void thread_tmp_98_fu_371_p3();
    void thread_tmp_99_fu_383_p3();
    void thread_tmp_cast_fu_345_p1();
    void thread_tmp_fu_340_p1();
    void thread_tmp_s_fu_451_p3();
    void thread_underflow_5_fu_964_p2();
    void thread_underflow_fu_883_p2();
    void thread_underflow_not_fu_898_p2();
    void thread_w_4_fu_606_p2();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
