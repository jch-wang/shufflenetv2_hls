// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_3x3_16_no_re_HH_
#define _subconv_3x3_16_no_re_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_qcK.h"

namespace ap_rtl {

struct subconv_3x3_16_no_re : public sc_module {
    // Port declarations 88
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
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
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_23_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_23_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_23_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_22_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_22_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_22_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_11_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_11_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_11_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_6_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_6_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_6_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_5_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_5_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_5_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_4_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_4_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_4_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_3_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_3_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_3_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_2_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_2_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_2_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_1_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_1_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_1_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_21_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_21_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_21_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_20_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_20_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_20_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_19_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_19_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_19_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_18_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_18_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_18_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_17_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_17_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_17_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_16_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_16_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_16_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_15_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_15_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_15_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_14_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_14_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_14_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_13_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_13_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_13_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_12_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_12_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_12_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_10_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_10_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_10_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_9_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_9_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_9_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_8_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_8_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_8_q0;
    sc_out< sc_lv<9> > buffer1_1_24_16x16_p_7_address0;
    sc_out< sc_logic > buffer1_1_24_16x16_p_7_ce0;
    sc_in< sc_lv<8> > buffer1_1_24_16x16_p_7_q0;


    // Module declarations
    subconv_3x3_16_no_re(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_16_no_re);

    ~subconv_3x3_16_no_re();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_qcK<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* ShuffleNetV2_mux_qcK_x_U236;
    sc_signal< sc_lv<14> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > tmp_202_cast_fu_562_p1;
    sc_signal< sc_lv<9> > tmp_202_cast_reg_1203;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > tmp_192_fu_590_p2;
    sc_signal< sc_lv<10> > tmp_192_reg_1208;
    sc_signal< sc_lv<5> > co_6_fu_602_p2;
    sc_signal< sc_lv<5> > co_6_reg_1216;
    sc_signal< sc_lv<5> > bias_V_addr_reg_1221;
    sc_signal< sc_lv<1> > exitcond5_fu_596_p2;
    sc_signal< sc_lv<14> > tmp_195_fu_637_p2;
    sc_signal< sc_lv<14> > tmp_195_reg_1226;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<13> > output_V_addr_reg_1234;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > h_6_fu_669_p2;
    sc_signal< sc_lv<1> > exitcond7_fu_663_p2;
    sc_signal< sc_lv<9> > tmp_199_fu_690_p2;
    sc_signal< sc_lv<9> > tmp_199_reg_1247;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > m_6_fu_702_p2;
    sc_signal< sc_lv<2> > m_6_reg_1255;
    sc_signal< sc_lv<10> > tmp_202_fu_748_p2;
    sc_signal< sc_lv<10> > tmp_202_reg_1260;
    sc_signal< sc_lv<1> > exitcond8_fu_696_p2;
    sc_signal< sc_lv<8> > weight_V_addr_reg_1265;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > n_6_fu_774_p2;
    sc_signal< sc_lv<2> > n_6_reg_1273;
    sc_signal< sc_lv<10> > tmp_204_fu_800_p2;
    sc_signal< sc_lv<10> > tmp_204_reg_1278;
    sc_signal< sc_lv<1> > exitcond_fu_768_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > weight_V_load_reg_1403;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > tmp_77_fu_832_p26;
    sc_signal< sc_lv<8> > tmp_77_reg_1408;
    sc_signal< sc_lv<16> > p_Val2_7_fu_892_p2;
    sc_signal< sc_lv<16> > p_Val2_7_reg_1413;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_206_reg_1418;
    sc_signal< sc_lv<16> > p_Val2_57_fu_918_p2;
    sc_signal< sc_lv<16> > p_Val2_57_reg_1423;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > signbit_reg_1428;
    sc_signal< sc_lv<8> > p_Val2_59_fu_952_p2;
    sc_signal< sc_lv<8> > p_Val2_59_reg_1435;
    sc_signal< sc_lv<1> > newsignbit_fu_958_p3;
    sc_signal< sc_lv<1> > newsignbit_reg_1441;
    sc_signal< sc_lv<1> > carry_fu_972_p2;
    sc_signal< sc_lv<1> > carry_reg_1447;
    sc_signal< sc_lv<2> > tmp_81_reg_1454;
    sc_signal< sc_lv<1> > p_38_i_i_fu_1030_p2;
    sc_signal< sc_lv<1> > p_38_i_i_reg_1460;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > tmp_83_fu_1046_p2;
    sc_signal< sc_lv<1> > tmp_83_reg_1465;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_fu_1057_p2;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_reg_1470;
    sc_signal< sc_lv<1> > underflow_fu_1074_p2;
    sc_signal< sc_lv<1> > underflow_reg_1475;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_1079_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_reg_1480;
    sc_signal< sc_lv<8> > sum_V_fu_1106_p3;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > isneg_reg_1490;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > result_V_fu_1136_p2;
    sc_signal< sc_lv<8> > result_V_reg_1497;
    sc_signal< sc_lv<1> > newsignbit_9_reg_1503;
    sc_signal< sc_lv<5> > w_6_fu_1150_p2;
    sc_signal< sc_lv<5> > w_6_reg_1510;
    sc_signal< sc_lv<5> > co_reg_453;
    sc_signal< sc_lv<1> > exitcond6_fu_643_p2;
    sc_signal< sc_lv<5> > h_reg_465;
    sc_signal< sc_lv<5> > w_reg_477;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > p_Val2_s_reg_489;
    sc_signal< sc_lv<2> > m_reg_501;
    sc_signal< sc_lv<8> > p_Val2_56_reg_512;
    sc_signal< sc_lv<2> > n_reg_524;
    sc_signal< sc_lv<32> > co_cast_fu_535_p1;
    sc_signal< sc_lv<32> > tmp_210_cast_fu_658_p1;
    sc_signal< sc_lv<32> > tmp_217_cast_fu_763_p1;
    sc_signal< sc_lv<32> > tmp_218_cast_fu_805_p1;
    sc_signal< sc_lv<7> > tmp_188_fu_544_p3;
    sc_signal< sc_lv<8> > p_shl2_cast_fu_552_p1;
    sc_signal< sc_lv<8> > co_cast_cast_fu_540_p1;
    sc_signal< sc_lv<8> > tmp_189_fu_556_p2;
    sc_signal< sc_lv<9> > tmp_190_fu_566_p3;
    sc_signal< sc_lv<6> > tmp_191_fu_578_p3;
    sc_signal< sc_lv<10> > p_shl1_cast_fu_586_p1;
    sc_signal< sc_lv<10> > p_shl_cast_fu_574_p1;
    sc_signal< sc_lv<10> > h_cast9_cast_fu_608_p1;
    sc_signal< sc_lv<10> > tmp_193_fu_612_p2;
    sc_signal< sc_lv<11> > tmp_194_fu_625_p3;
    sc_signal< sc_lv<14> > p_shl3_cast_fu_617_p3;
    sc_signal< sc_lv<14> > p_shl4_cast_fu_633_p1;
    sc_signal< sc_lv<14> > w_cast8_cast_fu_649_p1;
    sc_signal< sc_lv<14> > tmp_196_fu_653_p2;
    sc_signal< sc_lv<9> > m_cast7_cast_fu_675_p1;
    sc_signal< sc_lv<9> > tmp_197_fu_679_p2;
    sc_signal< sc_lv<9> > tmp_198_fu_684_p2;
    sc_signal< sc_lv<2> > tmp2_fu_708_p2;
    sc_signal< sc_lv<5> > tmp2_cast_fu_714_p1;
    sc_signal< sc_lv<5> > tmp_75_fu_718_p2;
    sc_signal< sc_lv<9> > tmp_200_fu_724_p3;
    sc_signal< sc_lv<6> > tmp_201_fu_736_p3;
    sc_signal< sc_lv<10> > p_shl7_cast_fu_744_p1;
    sc_signal< sc_lv<10> > p_shl6_cast_fu_732_p1;
    sc_signal< sc_lv<9> > n_cast6_cast_fu_754_p1;
    sc_signal< sc_lv<9> > tmp_203_fu_758_p2;
    sc_signal< sc_lv<2> > tmp3_fu_780_p2;
    sc_signal< sc_lv<5> > tmp3_cast_fu_786_p1;
    sc_signal< sc_lv<5> > tmp_76_fu_790_p2;
    sc_signal< sc_lv<10> > tmp_121_cast_cast_fu_796_p1;
    sc_signal< sc_lv<8> > p_Val2_7_fu_892_p0;
    sc_signal< sc_lv<8> > p_Val2_7_fu_892_p1;
    sc_signal< sc_lv<14> > tmp_78_fu_906_p3;
    sc_signal< sc_lv<16> > tmp_123_cast_fu_914_p1;
    sc_signal< sc_lv<8> > p_Val2_58_fu_931_p4;
    sc_signal< sc_lv<8> > tmp_79_fu_941_p1;
    sc_signal< sc_lv<1> > tmp_207_fu_944_p3;
    sc_signal< sc_lv<1> > tmp_80_fu_966_p2;
    sc_signal< sc_lv<1> > Range1_all_ones_fu_995_p2;
    sc_signal< sc_lv<1> > Range1_all_zeros_fu_1000_p2;
    sc_signal< sc_lv<1> > tmp_209_fu_988_p3;
    sc_signal< sc_lv<1> > tmp_82_fu_1012_p2;
    sc_signal< sc_lv<1> > p_41_i_i_fu_1018_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_1005_p3;
    sc_signal< sc_lv<1> > p_not_i_i_fu_1035_p2;
    sc_signal< sc_lv<1> > brmerge_i_i6_fu_1041_p2;
    sc_signal< sc_lv<1> > deleted_ones_fu_1023_p3;
    sc_signal< sc_lv<1> > tmp4_demorgan_fu_1062_p2;
    sc_signal< sc_lv<1> > tmp4_fu_1068_p2;
    sc_signal< sc_lv<1> > overflow_fu_1051_p2;
    sc_signal< sc_lv<1> > tmp5_fu_1085_p2;
    sc_signal< sc_lv<1> > underflow_not_fu_1089_p2;
    sc_signal< sc_lv<8> > p_Val2_48_mux_fu_1094_p3;
    sc_signal< sc_lv<8> > p_Val2_s_79_fu_1100_p3;
    sc_signal< sc_lv<9> > tmp_s_fu_1118_p1;
    sc_signal< sc_lv<9> > tmp_fu_1114_p1;
    sc_signal< sc_lv<9> > p_Val2_54_fu_1122_p2;
    sc_signal< sc_lv<1> > tmp_74_fu_1156_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_1170_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_1166_p2;
    sc_signal< sc_lv<1> > underflow_9_fu_1161_p2;
    sc_signal< sc_lv<1> > brmerge9_fu_1175_p2;
    sc_signal< sc_lv<8> > result_V_mux_fu_1180_p3;
    sc_signal< sc_lv<8> > p_result_V_fu_1187_p3;
    sc_signal< sc_lv<14> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<14> ap_ST_fsm_state1;
    static const sc_lv<14> ap_ST_fsm_state2;
    static const sc_lv<14> ap_ST_fsm_state3;
    static const sc_lv<14> ap_ST_fsm_state4;
    static const sc_lv<14> ap_ST_fsm_state5;
    static const sc_lv<14> ap_ST_fsm_state6;
    static const sc_lv<14> ap_ST_fsm_state7;
    static const sc_lv<14> ap_ST_fsm_state8;
    static const sc_lv<14> ap_ST_fsm_state9;
    static const sc_lv<14> ap_ST_fsm_state10;
    static const sc_lv<14> ap_ST_fsm_state11;
    static const sc_lv<14> ap_ST_fsm_state12;
    static const sc_lv<14> ap_ST_fsm_state13;
    static const sc_lv<14> ap_ST_fsm_state14;
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
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_80;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Range1_all_ones_fu_995_p2();
    void thread_Range1_all_zeros_fu_1000_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
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
    void thread_brmerge40_demorgan_i_fu_1057_p2();
    void thread_brmerge9_fu_1175_p2();
    void thread_brmerge_i_i6_fu_1041_p2();
    void thread_brmerge_i_i_fu_1166_p2();
    void thread_brmerge_i_i_i_fu_1079_p2();
    void thread_buffer1_1_24_16x16_p_10_address0();
    void thread_buffer1_1_24_16x16_p_10_ce0();
    void thread_buffer1_1_24_16x16_p_11_address0();
    void thread_buffer1_1_24_16x16_p_11_ce0();
    void thread_buffer1_1_24_16x16_p_12_address0();
    void thread_buffer1_1_24_16x16_p_12_ce0();
    void thread_buffer1_1_24_16x16_p_13_address0();
    void thread_buffer1_1_24_16x16_p_13_ce0();
    void thread_buffer1_1_24_16x16_p_14_address0();
    void thread_buffer1_1_24_16x16_p_14_ce0();
    void thread_buffer1_1_24_16x16_p_15_address0();
    void thread_buffer1_1_24_16x16_p_15_ce0();
    void thread_buffer1_1_24_16x16_p_16_address0();
    void thread_buffer1_1_24_16x16_p_16_ce0();
    void thread_buffer1_1_24_16x16_p_17_address0();
    void thread_buffer1_1_24_16x16_p_17_ce0();
    void thread_buffer1_1_24_16x16_p_18_address0();
    void thread_buffer1_1_24_16x16_p_18_ce0();
    void thread_buffer1_1_24_16x16_p_19_address0();
    void thread_buffer1_1_24_16x16_p_19_ce0();
    void thread_buffer1_1_24_16x16_p_1_address0();
    void thread_buffer1_1_24_16x16_p_1_ce0();
    void thread_buffer1_1_24_16x16_p_20_address0();
    void thread_buffer1_1_24_16x16_p_20_ce0();
    void thread_buffer1_1_24_16x16_p_21_address0();
    void thread_buffer1_1_24_16x16_p_21_ce0();
    void thread_buffer1_1_24_16x16_p_22_address0();
    void thread_buffer1_1_24_16x16_p_22_ce0();
    void thread_buffer1_1_24_16x16_p_23_address0();
    void thread_buffer1_1_24_16x16_p_23_ce0();
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
    void thread_buffer1_1_24_16x16_p_8_address0();
    void thread_buffer1_1_24_16x16_p_8_ce0();
    void thread_buffer1_1_24_16x16_p_9_address0();
    void thread_buffer1_1_24_16x16_p_9_ce0();
    void thread_buffer1_1_24_16x16_p_address0();
    void thread_buffer1_1_24_16x16_p_ce0();
    void thread_carry_fu_972_p2();
    void thread_co_6_fu_602_p2();
    void thread_co_cast_cast_fu_540_p1();
    void thread_co_cast_fu_535_p1();
    void thread_deleted_ones_fu_1023_p3();
    void thread_deleted_zeros_fu_1005_p3();
    void thread_exitcond5_fu_596_p2();
    void thread_exitcond6_fu_643_p2();
    void thread_exitcond7_fu_663_p2();
    void thread_exitcond8_fu_696_p2();
    void thread_exitcond_fu_768_p2();
    void thread_h_6_fu_669_p2();
    void thread_h_cast9_cast_fu_608_p1();
    void thread_isneg_not_fu_1170_p2();
    void thread_m_6_fu_702_p2();
    void thread_m_cast7_cast_fu_675_p1();
    void thread_n_6_fu_774_p2();
    void thread_n_cast6_cast_fu_754_p1();
    void thread_newsignbit_fu_958_p3();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_overflow_fu_1051_p2();
    void thread_p_38_i_i_fu_1030_p2();
    void thread_p_41_i_i_fu_1018_p2();
    void thread_p_Val2_48_mux_fu_1094_p3();
    void thread_p_Val2_54_fu_1122_p2();
    void thread_p_Val2_57_fu_918_p2();
    void thread_p_Val2_58_fu_931_p4();
    void thread_p_Val2_59_fu_952_p2();
    void thread_p_Val2_7_fu_892_p0();
    void thread_p_Val2_7_fu_892_p1();
    void thread_p_Val2_7_fu_892_p2();
    void thread_p_Val2_s_79_fu_1100_p3();
    void thread_p_not_i_i_fu_1035_p2();
    void thread_p_result_V_fu_1187_p3();
    void thread_p_shl1_cast_fu_586_p1();
    void thread_p_shl2_cast_fu_552_p1();
    void thread_p_shl3_cast_fu_617_p3();
    void thread_p_shl4_cast_fu_633_p1();
    void thread_p_shl6_cast_fu_732_p1();
    void thread_p_shl7_cast_fu_744_p1();
    void thread_p_shl_cast_fu_574_p1();
    void thread_result_V_fu_1136_p2();
    void thread_result_V_mux_fu_1180_p3();
    void thread_sum_V_fu_1106_p3();
    void thread_tmp2_cast_fu_714_p1();
    void thread_tmp2_fu_708_p2();
    void thread_tmp3_cast_fu_786_p1();
    void thread_tmp3_fu_780_p2();
    void thread_tmp4_demorgan_fu_1062_p2();
    void thread_tmp4_fu_1068_p2();
    void thread_tmp5_fu_1085_p2();
    void thread_tmp_121_cast_cast_fu_796_p1();
    void thread_tmp_123_cast_fu_914_p1();
    void thread_tmp_188_fu_544_p3();
    void thread_tmp_189_fu_556_p2();
    void thread_tmp_190_fu_566_p3();
    void thread_tmp_191_fu_578_p3();
    void thread_tmp_192_fu_590_p2();
    void thread_tmp_193_fu_612_p2();
    void thread_tmp_194_fu_625_p3();
    void thread_tmp_195_fu_637_p2();
    void thread_tmp_196_fu_653_p2();
    void thread_tmp_197_fu_679_p2();
    void thread_tmp_198_fu_684_p2();
    void thread_tmp_199_fu_690_p2();
    void thread_tmp_200_fu_724_p3();
    void thread_tmp_201_fu_736_p3();
    void thread_tmp_202_cast_fu_562_p1();
    void thread_tmp_202_fu_748_p2();
    void thread_tmp_203_fu_758_p2();
    void thread_tmp_204_fu_800_p2();
    void thread_tmp_207_fu_944_p3();
    void thread_tmp_209_fu_988_p3();
    void thread_tmp_210_cast_fu_658_p1();
    void thread_tmp_217_cast_fu_763_p1();
    void thread_tmp_218_cast_fu_805_p1();
    void thread_tmp_74_fu_1156_p2();
    void thread_tmp_75_fu_718_p2();
    void thread_tmp_76_fu_790_p2();
    void thread_tmp_78_fu_906_p3();
    void thread_tmp_79_fu_941_p1();
    void thread_tmp_80_fu_966_p2();
    void thread_tmp_82_fu_1012_p2();
    void thread_tmp_83_fu_1046_p2();
    void thread_tmp_fu_1114_p1();
    void thread_tmp_s_fu_1118_p1();
    void thread_underflow_9_fu_1161_p2();
    void thread_underflow_fu_1074_p2();
    void thread_underflow_not_fu_1089_p2();
    void thread_w_6_fu_1150_p2();
    void thread_w_cast8_cast_fu_649_p1();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
