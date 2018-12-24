// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_3x3_8_no_rel_HH_
#define _subconv_3x3_8_no_rel_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_fYi.h"

namespace ap_rtl {

struct subconv_3x3_8_no_rel : public sc_module {
    // Port declarations 88
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<9> > weight_V_address0;
    sc_out< sc_logic > weight_V_ce0;
    sc_in< sc_lv<8> > weight_V_q0;
    sc_out< sc_lv<6> > bias_V_address0;
    sc_out< sc_logic > bias_V_ce0;
    sc_in< sc_lv<8> > bias_V_q0;
    sc_out< sc_lv<13> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_24_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_24_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_24_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_1_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_1_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_1_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_2_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_2_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_2_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_3_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_3_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_3_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_4_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_4_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_4_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_5_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_5_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_5_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_6_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_6_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_6_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_7_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_7_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_7_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_8_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_8_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_8_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_9_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_9_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_9_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_10_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_10_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_10_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_11_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_11_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_11_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_12_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_12_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_12_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_13_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_13_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_13_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_14_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_14_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_14_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_15_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_15_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_15_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_16_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_16_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_16_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_17_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_17_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_17_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_18_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_18_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_18_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_19_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_19_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_19_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_20_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_20_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_20_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_21_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_21_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_21_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_22_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_22_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_22_q0;
    sc_out< sc_lv<8> > buffer1_1_48_8x8_p_V_23_address0;
    sc_out< sc_logic > buffer1_1_48_8x8_p_V_23_ce0;
    sc_in< sc_lv<8> > buffer1_1_48_8x8_p_V_23_q0;


    // Module declarations
    subconv_3x3_8_no_rel(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_8_no_rel);

    ~subconv_3x3_8_no_rel();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_fYi<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,32,8>* ShuffleNetV2_mux_fYi_x_U443;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<13> > next_mul_fu_566_p2;
    sc_signal< sc_lv<13> > next_mul_reg_1315;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > tmp_59_cast_fu_599_p1;
    sc_signal< sc_lv<10> > tmp_59_cast_reg_1320;
    sc_signal< sc_lv<10> > tmp_58_fu_627_p2;
    sc_signal< sc_lv<10> > tmp_58_reg_1325;
    sc_signal< sc_lv<6> > co_2_fu_639_p2;
    sc_signal< sc_lv<6> > co_2_reg_1333;
    sc_signal< sc_lv<32> > arrayNo_cast_fu_665_p1;
    sc_signal< sc_lv<32> > arrayNo_cast_reg_1338;
    sc_signal< sc_lv<1> > exitcond5_fu_633_p2;
    sc_signal< sc_lv<10> > tmp_64_fu_703_p2;
    sc_signal< sc_lv<10> > tmp_64_reg_1343;
    sc_signal< sc_lv<6> > bias_V_addr_reg_1348;
    sc_signal< sc_lv<14> > tmp_68_fu_742_p2;
    sc_signal< sc_lv<14> > tmp_68_reg_1353;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<13> > output_V_addr_reg_1361;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > h_2_fu_774_p2;
    sc_signal< sc_lv<1> > exitcond7_fu_768_p2;
    sc_signal< sc_lv<10> > tmp_72_fu_795_p2;
    sc_signal< sc_lv<10> > tmp_72_reg_1374;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > m_2_fu_807_p2;
    sc_signal< sc_lv<2> > m_2_reg_1382;
    sc_signal< sc_lv<4> > tmp_20_fu_823_p2;
    sc_signal< sc_lv<4> > tmp_20_reg_1387;
    sc_signal< sc_lv<1> > exitcond8_fu_801_p2;
    sc_signal< sc_lv<9> > tmp_74_fu_861_p2;
    sc_signal< sc_lv<9> > tmp_74_reg_1392;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<2> > n_2_fu_887_p2;
    sc_signal< sc_lv<2> > n_2_reg_1405;
    sc_signal< sc_lv<9> > tmp_78_fu_913_p2;
    sc_signal< sc_lv<9> > tmp_78_reg_1410;
    sc_signal< sc_lv<1> > exitcond_fu_881_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > weight_V_load_reg_1535;
    sc_signal< sc_lv<8> > tmp_18_fu_945_p26;
    sc_signal< sc_lv<8> > tmp_18_reg_1540;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<16> > p_Val2_1_fu_1004_p2;
    sc_signal< sc_lv<16> > p_Val2_1_reg_1545;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_80_reg_1550;
    sc_signal< sc_lv<16> > p_Val2_15_fu_1030_p2;
    sc_signal< sc_lv<16> > p_Val2_15_reg_1555;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > signbit_reg_1560;
    sc_signal< sc_lv<8> > p_Val2_17_fu_1064_p2;
    sc_signal< sc_lv<8> > p_Val2_17_reg_1567;
    sc_signal< sc_lv<1> > newsignbit_fu_1070_p3;
    sc_signal< sc_lv<1> > newsignbit_reg_1573;
    sc_signal< sc_lv<1> > carry_fu_1084_p2;
    sc_signal< sc_lv<1> > carry_reg_1579;
    sc_signal< sc_lv<2> > tmp_25_reg_1586;
    sc_signal< sc_lv<1> > p_38_i_i_fu_1142_p2;
    sc_signal< sc_lv<1> > p_38_i_i_reg_1592;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > tmp_27_fu_1158_p2;
    sc_signal< sc_lv<1> > tmp_27_reg_1597;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_fu_1169_p2;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_reg_1602;
    sc_signal< sc_lv<1> > underflow_fu_1186_p2;
    sc_signal< sc_lv<1> > underflow_reg_1607;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_1191_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_reg_1612;
    sc_signal< sc_lv<8> > sum_V_fu_1218_p3;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > isneg_reg_1622;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > result_V_fu_1248_p2;
    sc_signal< sc_lv<8> > result_V_reg_1629;
    sc_signal< sc_lv<1> > newsignbit_3_reg_1635;
    sc_signal< sc_lv<4> > w_2_fu_1309_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<6> > co_reg_474;
    sc_signal< sc_lv<1> > exitcond6_fu_748_p2;
    sc_signal< sc_lv<13> > phi_mul_reg_485;
    sc_signal< sc_lv<4> > h_reg_496;
    sc_signal< sc_lv<4> > w_reg_508;
    sc_signal< sc_lv<8> > p_Val2_s_reg_520;
    sc_signal< sc_lv<2> > m_reg_532;
    sc_signal< sc_lv<8> > p_Val2_14_reg_543;
    sc_signal< sc_lv<2> > n_reg_555;
    sc_signal< sc_lv<32> > co_cast_fu_572_p1;
    sc_signal< sc_lv<32> > tmp_74_cast_fu_763_p1;
    sc_signal< sc_lv<32> > tmp_82_cast_fu_876_p1;
    sc_signal< sc_lv<32> > tmp_83_cast_fu_918_p1;
    sc_signal< sc_lv<8> > tmp_54_fu_581_p3;
    sc_signal< sc_lv<9> > p_shl2_cast_fu_589_p1;
    sc_signal< sc_lv<9> > co_cast_cast_fu_577_p1;
    sc_signal< sc_lv<9> > tmp_55_fu_593_p2;
    sc_signal< sc_lv<9> > tmp_56_fu_603_p3;
    sc_signal< sc_lv<7> > tmp_57_fu_615_p3;
    sc_signal< sc_lv<10> > p_shl1_cast_fu_623_p1;
    sc_signal< sc_lv<10> > p_shl_cast_fu_611_p1;
    sc_signal< sc_lv<1> > tmp_59_fu_645_p2;
    sc_signal< sc_lv<6> > tmp_60_fu_651_p2;
    sc_signal< sc_lv<6> > arrayNo_fu_657_p3;
    sc_signal< sc_lv<2> > tmp_61_fu_669_p4;
    sc_signal< sc_lv<5> > tmp_62_fu_679_p3;
    sc_signal< sc_lv<3> > tmp_63_fu_691_p3;
    sc_signal< sc_lv<10> > p_shl3_cast_fu_687_p1;
    sc_signal< sc_lv<10> > p_shl4_cast_fu_699_p1;
    sc_signal< sc_lv<10> > h_cast9_cast_fu_709_p1;
    sc_signal< sc_lv<10> > tmp_65_fu_713_p2;
    sc_signal< sc_lv<13> > tmp_66_fu_718_p3;
    sc_signal< sc_lv<11> > tmp_67_fu_730_p3;
    sc_signal< sc_lv<14> > p_shl5_cast_fu_726_p1;
    sc_signal< sc_lv<14> > p_shl6_cast_fu_738_p1;
    sc_signal< sc_lv<14> > w_cast8_cast_fu_754_p1;
    sc_signal< sc_lv<14> > tmp_69_fu_758_p2;
    sc_signal< sc_lv<10> > m_cast7_cast_fu_780_p1;
    sc_signal< sc_lv<10> > tmp_70_fu_784_p2;
    sc_signal< sc_lv<10> > tmp_71_fu_789_p2;
    sc_signal< sc_lv<2> > tmp2_fu_813_p2;
    sc_signal< sc_lv<4> > tmp2_cast_fu_819_p1;
    sc_signal< sc_lv<10> > tmp_24_cast_cast_fu_829_p1;
    sc_signal< sc_lv<10> > tmp_73_fu_832_p2;
    sc_signal< sc_lv<6> > tmp_75_fu_837_p1;
    sc_signal< sc_lv<8> > tmp_76_fu_849_p1;
    sc_signal< sc_lv<9> > p_shl8_cast_fu_841_p3;
    sc_signal< sc_lv<9> > p_shl9_cast_fu_853_p3;
    sc_signal< sc_lv<10> > n_cast6_cast_fu_867_p1;
    sc_signal< sc_lv<10> > tmp_77_fu_871_p2;
    sc_signal< sc_lv<2> > tmp3_fu_893_p2;
    sc_signal< sc_lv<4> > tmp3_cast_fu_899_p1;
    sc_signal< sc_lv<4> > tmp_21_fu_903_p2;
    sc_signal< sc_lv<9> > tmp_28_cast_cast_fu_909_p1;
    sc_signal< sc_lv<8> > p_Val2_1_fu_1004_p0;
    sc_signal< sc_lv<8> > p_Val2_1_fu_1004_p1;
    sc_signal< sc_lv<14> > tmp_22_fu_1018_p3;
    sc_signal< sc_lv<16> > tmp_30_cast_fu_1026_p1;
    sc_signal< sc_lv<8> > p_Val2_16_fu_1043_p4;
    sc_signal< sc_lv<8> > tmp_23_fu_1053_p1;
    sc_signal< sc_lv<1> > tmp_81_fu_1056_p3;
    sc_signal< sc_lv<1> > tmp_24_fu_1078_p2;
    sc_signal< sc_lv<1> > Range1_all_ones_fu_1107_p2;
    sc_signal< sc_lv<1> > Range1_all_zeros_fu_1112_p2;
    sc_signal< sc_lv<1> > tmp_83_fu_1100_p3;
    sc_signal< sc_lv<1> > tmp_26_fu_1124_p2;
    sc_signal< sc_lv<1> > p_41_i_i_fu_1130_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_1117_p3;
    sc_signal< sc_lv<1> > p_not_i_i_fu_1147_p2;
    sc_signal< sc_lv<1> > brmerge_i_i2_fu_1153_p2;
    sc_signal< sc_lv<1> > deleted_ones_fu_1135_p3;
    sc_signal< sc_lv<1> > tmp4_demorgan_fu_1174_p2;
    sc_signal< sc_lv<1> > tmp4_fu_1180_p2;
    sc_signal< sc_lv<1> > overflow_fu_1163_p2;
    sc_signal< sc_lv<1> > tmp5_fu_1197_p2;
    sc_signal< sc_lv<1> > underflow_not_fu_1201_p2;
    sc_signal< sc_lv<8> > p_Val2_16_mux_fu_1206_p3;
    sc_signal< sc_lv<8> > p_Val2_s_45_fu_1212_p3;
    sc_signal< sc_lv<9> > tmp_s_fu_1230_p1;
    sc_signal< sc_lv<9> > tmp_fu_1226_p1;
    sc_signal< sc_lv<9> > p_Val2_12_fu_1234_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_1262_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_1276_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_1272_p2;
    sc_signal< sc_lv<1> > underflow_3_fu_1267_p2;
    sc_signal< sc_lv<1> > brmerge9_fu_1281_p2;
    sc_signal< sc_lv<8> > result_V_mux_fu_1286_p3;
    sc_signal< sc_lv<8> > p_result_V_fu_1293_p3;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_state4;
    static const sc_lv<15> ap_ST_fsm_state5;
    static const sc_lv<15> ap_ST_fsm_state6;
    static const sc_lv<15> ap_ST_fsm_state7;
    static const sc_lv<15> ap_ST_fsm_state8;
    static const sc_lv<15> ap_ST_fsm_state9;
    static const sc_lv<15> ap_ST_fsm_state10;
    static const sc_lv<15> ap_ST_fsm_state11;
    static const sc_lv<15> ap_ST_fsm_state12;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_state15;
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
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<13> ap_const_lv13_56;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_18;
    static const sc_lv<6> ap_const_lv6_28;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<10> ap_const_lv10_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_80;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Range1_all_ones_fu_1107_p2();
    void thread_Range1_all_zeros_fu_1112_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
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
    void thread_arrayNo_cast_fu_665_p1();
    void thread_arrayNo_fu_657_p3();
    void thread_bias_V_address0();
    void thread_bias_V_ce0();
    void thread_brmerge40_demorgan_i_fu_1169_p2();
    void thread_brmerge9_fu_1281_p2();
    void thread_brmerge_i_i2_fu_1153_p2();
    void thread_brmerge_i_i_fu_1272_p2();
    void thread_brmerge_i_i_i_fu_1191_p2();
    void thread_buffer1_1_48_8x8_p_V_10_address0();
    void thread_buffer1_1_48_8x8_p_V_10_ce0();
    void thread_buffer1_1_48_8x8_p_V_11_address0();
    void thread_buffer1_1_48_8x8_p_V_11_ce0();
    void thread_buffer1_1_48_8x8_p_V_12_address0();
    void thread_buffer1_1_48_8x8_p_V_12_ce0();
    void thread_buffer1_1_48_8x8_p_V_13_address0();
    void thread_buffer1_1_48_8x8_p_V_13_ce0();
    void thread_buffer1_1_48_8x8_p_V_14_address0();
    void thread_buffer1_1_48_8x8_p_V_14_ce0();
    void thread_buffer1_1_48_8x8_p_V_15_address0();
    void thread_buffer1_1_48_8x8_p_V_15_ce0();
    void thread_buffer1_1_48_8x8_p_V_16_address0();
    void thread_buffer1_1_48_8x8_p_V_16_ce0();
    void thread_buffer1_1_48_8x8_p_V_17_address0();
    void thread_buffer1_1_48_8x8_p_V_17_ce0();
    void thread_buffer1_1_48_8x8_p_V_18_address0();
    void thread_buffer1_1_48_8x8_p_V_18_ce0();
    void thread_buffer1_1_48_8x8_p_V_19_address0();
    void thread_buffer1_1_48_8x8_p_V_19_ce0();
    void thread_buffer1_1_48_8x8_p_V_1_address0();
    void thread_buffer1_1_48_8x8_p_V_1_ce0();
    void thread_buffer1_1_48_8x8_p_V_20_address0();
    void thread_buffer1_1_48_8x8_p_V_20_ce0();
    void thread_buffer1_1_48_8x8_p_V_21_address0();
    void thread_buffer1_1_48_8x8_p_V_21_ce0();
    void thread_buffer1_1_48_8x8_p_V_22_address0();
    void thread_buffer1_1_48_8x8_p_V_22_ce0();
    void thread_buffer1_1_48_8x8_p_V_23_address0();
    void thread_buffer1_1_48_8x8_p_V_23_ce0();
    void thread_buffer1_1_48_8x8_p_V_24_address0();
    void thread_buffer1_1_48_8x8_p_V_24_ce0();
    void thread_buffer1_1_48_8x8_p_V_2_address0();
    void thread_buffer1_1_48_8x8_p_V_2_ce0();
    void thread_buffer1_1_48_8x8_p_V_3_address0();
    void thread_buffer1_1_48_8x8_p_V_3_ce0();
    void thread_buffer1_1_48_8x8_p_V_4_address0();
    void thread_buffer1_1_48_8x8_p_V_4_ce0();
    void thread_buffer1_1_48_8x8_p_V_5_address0();
    void thread_buffer1_1_48_8x8_p_V_5_ce0();
    void thread_buffer1_1_48_8x8_p_V_6_address0();
    void thread_buffer1_1_48_8x8_p_V_6_ce0();
    void thread_buffer1_1_48_8x8_p_V_7_address0();
    void thread_buffer1_1_48_8x8_p_V_7_ce0();
    void thread_buffer1_1_48_8x8_p_V_8_address0();
    void thread_buffer1_1_48_8x8_p_V_8_ce0();
    void thread_buffer1_1_48_8x8_p_V_9_address0();
    void thread_buffer1_1_48_8x8_p_V_9_ce0();
    void thread_carry_fu_1084_p2();
    void thread_co_2_fu_639_p2();
    void thread_co_cast_cast_fu_577_p1();
    void thread_co_cast_fu_572_p1();
    void thread_deleted_ones_fu_1135_p3();
    void thread_deleted_zeros_fu_1117_p3();
    void thread_exitcond5_fu_633_p2();
    void thread_exitcond6_fu_748_p2();
    void thread_exitcond7_fu_768_p2();
    void thread_exitcond8_fu_801_p2();
    void thread_exitcond_fu_881_p2();
    void thread_h_2_fu_774_p2();
    void thread_h_cast9_cast_fu_709_p1();
    void thread_isneg_not_fu_1276_p2();
    void thread_m_2_fu_807_p2();
    void thread_m_cast7_cast_fu_780_p1();
    void thread_n_2_fu_887_p2();
    void thread_n_cast6_cast_fu_867_p1();
    void thread_newsignbit_fu_1070_p3();
    void thread_next_mul_fu_566_p2();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_overflow_fu_1163_p2();
    void thread_p_38_i_i_fu_1142_p2();
    void thread_p_41_i_i_fu_1130_p2();
    void thread_p_Val2_12_fu_1234_p2();
    void thread_p_Val2_15_fu_1030_p2();
    void thread_p_Val2_16_fu_1043_p4();
    void thread_p_Val2_16_mux_fu_1206_p3();
    void thread_p_Val2_17_fu_1064_p2();
    void thread_p_Val2_1_fu_1004_p0();
    void thread_p_Val2_1_fu_1004_p1();
    void thread_p_Val2_1_fu_1004_p2();
    void thread_p_Val2_s_45_fu_1212_p3();
    void thread_p_not_i_i_fu_1147_p2();
    void thread_p_result_V_fu_1293_p3();
    void thread_p_shl1_cast_fu_623_p1();
    void thread_p_shl2_cast_fu_589_p1();
    void thread_p_shl3_cast_fu_687_p1();
    void thread_p_shl4_cast_fu_699_p1();
    void thread_p_shl5_cast_fu_726_p1();
    void thread_p_shl6_cast_fu_738_p1();
    void thread_p_shl8_cast_fu_841_p3();
    void thread_p_shl9_cast_fu_853_p3();
    void thread_p_shl_cast_fu_611_p1();
    void thread_result_V_fu_1248_p2();
    void thread_result_V_mux_fu_1286_p3();
    void thread_sum_V_fu_1218_p3();
    void thread_tmp2_cast_fu_819_p1();
    void thread_tmp2_fu_813_p2();
    void thread_tmp3_cast_fu_899_p1();
    void thread_tmp3_fu_893_p2();
    void thread_tmp4_demorgan_fu_1174_p2();
    void thread_tmp4_fu_1180_p2();
    void thread_tmp5_fu_1197_p2();
    void thread_tmp_19_fu_1262_p2();
    void thread_tmp_20_fu_823_p2();
    void thread_tmp_21_fu_903_p2();
    void thread_tmp_22_fu_1018_p3();
    void thread_tmp_23_fu_1053_p1();
    void thread_tmp_24_cast_cast_fu_829_p1();
    void thread_tmp_24_fu_1078_p2();
    void thread_tmp_26_fu_1124_p2();
    void thread_tmp_27_fu_1158_p2();
    void thread_tmp_28_cast_cast_fu_909_p1();
    void thread_tmp_30_cast_fu_1026_p1();
    void thread_tmp_54_fu_581_p3();
    void thread_tmp_55_fu_593_p2();
    void thread_tmp_56_fu_603_p3();
    void thread_tmp_57_fu_615_p3();
    void thread_tmp_58_fu_627_p2();
    void thread_tmp_59_cast_fu_599_p1();
    void thread_tmp_59_fu_645_p2();
    void thread_tmp_60_fu_651_p2();
    void thread_tmp_61_fu_669_p4();
    void thread_tmp_62_fu_679_p3();
    void thread_tmp_63_fu_691_p3();
    void thread_tmp_64_fu_703_p2();
    void thread_tmp_65_fu_713_p2();
    void thread_tmp_66_fu_718_p3();
    void thread_tmp_67_fu_730_p3();
    void thread_tmp_68_fu_742_p2();
    void thread_tmp_69_fu_758_p2();
    void thread_tmp_70_fu_784_p2();
    void thread_tmp_71_fu_789_p2();
    void thread_tmp_72_fu_795_p2();
    void thread_tmp_73_fu_832_p2();
    void thread_tmp_74_cast_fu_763_p1();
    void thread_tmp_74_fu_861_p2();
    void thread_tmp_75_fu_837_p1();
    void thread_tmp_76_fu_849_p1();
    void thread_tmp_77_fu_871_p2();
    void thread_tmp_78_fu_913_p2();
    void thread_tmp_81_fu_1056_p3();
    void thread_tmp_82_cast_fu_876_p1();
    void thread_tmp_83_cast_fu_918_p1();
    void thread_tmp_83_fu_1100_p3();
    void thread_tmp_fu_1226_p1();
    void thread_tmp_s_fu_1230_p1();
    void thread_underflow_3_fu_1267_p2();
    void thread_underflow_fu_1186_p2();
    void thread_underflow_not_fu_1201_p2();
    void thread_w_2_fu_1309_p2();
    void thread_w_cast8_cast_fu_754_p1();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
