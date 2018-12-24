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

#include "ShuffleNetV2_mux_pcA.h"

namespace ap_rtl {

struct subconv_3x3_8_stride_1 : public sc_module {
    // Port declarations 52
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
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
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_11_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_11_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_11_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_10_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_10_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_10_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_7_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_7_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_7_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_6_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_6_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_6_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_5_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_5_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_5_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_4_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_4_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_4_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_3_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_3_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_3_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_2_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_2_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_2_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_1_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_1_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_1_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_9_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_9_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_9_q0;
    sc_out< sc_lv<10> > ShuffleConvs_2_Downs_8_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_8_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_8_q0;


    // Module declarations
    subconv_3x3_8_stride_1(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_8_stride_1);

    ~subconv_3x3_8_stride_1();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_pcA<1,1,8,8,8,8,8,8,8,8,8,8,8,8,32,8>* ShuffleNetV2_mux_pcA_x_U568;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > next_mul_fu_414_p2;
    sc_signal< sc_lv<15> > next_mul_reg_1131;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_14_cast_fu_447_p1;
    sc_signal< sc_lv<11> > tmp_14_cast_reg_1136;
    sc_signal< sc_lv<12> > tmp_17_cast_fu_481_p1;
    sc_signal< sc_lv<12> > tmp_17_cast_reg_1141;
    sc_signal< sc_lv<7> > co_1_fu_491_p2;
    sc_signal< sc_lv<7> > co_1_reg_1149;
    sc_signal< sc_lv<32> > arrayNo_cast_fu_497_p1;
    sc_signal< sc_lv<32> > arrayNo_cast_reg_1154;
    sc_signal< sc_lv<1> > exitcond1_fu_485_p2;
    sc_signal< sc_lv<11> > tmp_21_fu_535_p2;
    sc_signal< sc_lv<11> > tmp_21_reg_1159;
    sc_signal< sc_lv<7> > bias_V_addr_reg_1164;
    sc_signal< sc_lv<13> > tmp_24_fu_570_p2;
    sc_signal< sc_lv<13> > tmp_24_reg_1169;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > tmp_fu_582_p3;
    sc_signal< sc_lv<4> > tmp_reg_1177;
    sc_signal< sc_lv<1> > exitcond2_fu_576_p2;
    sc_signal< sc_lv<7> > idx_urem_fu_602_p3;
    sc_signal< sc_lv<12> > output_V_addr_reg_1187;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > tmp_2_fu_630_p3;
    sc_signal< sc_lv<4> > tmp_2_reg_1195;
    sc_signal< sc_lv<1> > exitcond3_fu_624_p2;
    sc_signal< sc_lv<3> > h_1_fu_638_p2;
    sc_signal< sc_lv<11> > tmp_29_fu_659_p2;
    sc_signal< sc_lv<11> > tmp_29_reg_1205;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > m_1_fu_671_p2;
    sc_signal< sc_lv<2> > m_1_reg_1213;
    sc_signal< sc_lv<11> > tmp_31_fu_713_p2;
    sc_signal< sc_lv<11> > tmp_31_reg_1218;
    sc_signal< sc_lv<1> > exitcond4_fu_665_p2;
    sc_signal< sc_lv<3> > w_1_fu_719_p2;
    sc_signal< sc_lv<3> > w_1_reg_1223;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > n_1_fu_745_p2;
    sc_signal< sc_lv<2> > n_1_reg_1236;
    sc_signal< sc_lv<1> > exitcond_fu_739_p2;
    sc_signal< sc_lv<8> > weight_V_load_reg_1301;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > tmp_1_fu_791_p14;
    sc_signal< sc_lv<8> > tmp_1_reg_1306;
    sc_signal< sc_lv<16> > p_Val2_5_fu_826_p2;
    sc_signal< sc_lv<16> > p_Val2_5_reg_1311;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > tmp_39_reg_1316;
    sc_signal< sc_lv<16> > p_Val2_6_fu_852_p2;
    sc_signal< sc_lv<16> > p_Val2_6_reg_1321;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > signbit_reg_1326;
    sc_signal< sc_lv<8> > p_Val2_8_fu_886_p2;
    sc_signal< sc_lv<8> > p_Val2_8_reg_1333;
    sc_signal< sc_lv<1> > newsignbit_fu_892_p3;
    sc_signal< sc_lv<1> > newsignbit_reg_1339;
    sc_signal< sc_lv<1> > carry_fu_906_p2;
    sc_signal< sc_lv<1> > carry_reg_1345;
    sc_signal< sc_lv<2> > tmp_12_reg_1352;
    sc_signal< sc_lv<1> > p_38_i_i_fu_964_p2;
    sc_signal< sc_lv<1> > p_38_i_i_reg_1358;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_13_fu_980_p2;
    sc_signal< sc_lv<1> > tmp_13_reg_1363;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_fu_991_p2;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_reg_1368;
    sc_signal< sc_lv<1> > underflow_fu_1008_p2;
    sc_signal< sc_lv<1> > underflow_reg_1373;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_1013_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_reg_1378;
    sc_signal< sc_lv<8> > sum_V_fu_1040_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > isneg_reg_1388;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > result_V_fu_1070_p2;
    sc_signal< sc_lv<8> > result_V_reg_1395;
    sc_signal< sc_lv<1> > newsignbit_1_reg_1401;
    sc_signal< sc_lv<7> > co_reg_310;
    sc_signal< sc_lv<15> > phi_mul_reg_321;
    sc_signal< sc_lv<7> > phi_urem_reg_332;
    sc_signal< sc_lv<3> > h_reg_344;
    sc_signal< sc_lv<3> > w_reg_356;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > p_Val2_s_reg_368;
    sc_signal< sc_lv<2> > m_reg_380;
    sc_signal< sc_lv<8> > p_Val2_4_reg_391;
    sc_signal< sc_lv<2> > n_reg_403;
    sc_signal< sc_lv<32> > co_cast_fu_420_p1;
    sc_signal< sc_lv<32> > tmp_27_cast_fu_619_p1;
    sc_signal< sc_lv<32> > tmp_35_cast_fu_734_p1;
    sc_signal< sc_lv<32> > tmp_36_cast_fu_775_p1;
    sc_signal< sc_lv<9> > tmp_8_fu_429_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_437_p1;
    sc_signal< sc_lv<10> > co_cast_cast_fu_425_p1;
    sc_signal< sc_lv<10> > tmp_14_fu_441_p2;
    sc_signal< sc_lv<10> > tmp_15_fu_451_p3;
    sc_signal< sc_lv<8> > tmp_16_fu_463_p3;
    sc_signal< sc_lv<11> > p_shl_cast_fu_459_p1;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_471_p1;
    sc_signal< sc_lv<11> > tmp_17_fu_475_p2;
    sc_signal< sc_lv<4> > tmp_18_fu_501_p4;
    sc_signal< sc_lv<7> > tmp_19_fu_511_p3;
    sc_signal< sc_lv<5> > tmp_20_fu_523_p3;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_519_p1;
    sc_signal< sc_lv<11> > p_shl4_cast_fu_531_p1;
    sc_signal< sc_lv<12> > h_cast9_cast_fu_541_p1;
    sc_signal< sc_lv<12> > tmp_22_fu_545_p2;
    sc_signal< sc_lv<10> > tmp_23_fu_550_p1;
    sc_signal< sc_lv<13> > p_shl5_cast_fu_554_p3;
    sc_signal< sc_lv<13> > p_shl6_cast_fu_562_p3;
    sc_signal< sc_lv<7> > next_urem_fu_590_p2;
    sc_signal< sc_lv<1> > tmp_25_fu_596_p2;
    sc_signal< sc_lv<13> > w_cast8_cast_fu_610_p1;
    sc_signal< sc_lv<13> > tmp_26_fu_614_p2;
    sc_signal< sc_lv<11> > m_cast7_cast_fu_644_p1;
    sc_signal< sc_lv<11> > tmp_27_fu_648_p2;
    sc_signal< sc_lv<11> > tmp_28_fu_653_p2;
    sc_signal< sc_lv<2> > tmp2_fu_677_p2;
    sc_signal< sc_lv<4> > tmp2_cast_fu_683_p1;
    sc_signal< sc_lv<4> > tmp_s_fu_687_p2;
    sc_signal< sc_lv<11> > tmp_cast_cast_fu_692_p1;
    sc_signal< sc_lv<11> > tmp_30_fu_696_p2;
    sc_signal< sc_lv<11> > tmp_33_fu_701_p2;
    sc_signal< sc_lv<11> > tmp_37_fu_707_p2;
    sc_signal< sc_lv<11> > n_cast6_cast_fu_725_p1;
    sc_signal< sc_lv<11> > tmp_32_fu_729_p2;
    sc_signal< sc_lv<2> > tmp3_fu_751_p2;
    sc_signal< sc_lv<4> > tmp3_cast_fu_757_p1;
    sc_signal< sc_lv<4> > tmp_6_fu_761_p2;
    sc_signal< sc_lv<11> > tmp_6_cast_cast_fu_766_p1;
    sc_signal< sc_lv<11> > tmp_34_fu_770_p2;
    sc_signal< sc_lv<8> > p_Val2_5_fu_826_p0;
    sc_signal< sc_lv<8> > p_Val2_5_fu_826_p1;
    sc_signal< sc_lv<14> > tmp_7_fu_840_p3;
    sc_signal< sc_lv<16> > tmp_11_cast_fu_848_p1;
    sc_signal< sc_lv<8> > p_Val2_7_fu_865_p4;
    sc_signal< sc_lv<8> > tmp_9_fu_875_p1;
    sc_signal< sc_lv<1> > tmp_40_fu_878_p3;
    sc_signal< sc_lv<1> > tmp_10_fu_900_p2;
    sc_signal< sc_lv<1> > Range1_all_ones_fu_929_p2;
    sc_signal< sc_lv<1> > Range1_all_zeros_fu_934_p2;
    sc_signal< sc_lv<1> > tmp_42_fu_922_p3;
    sc_signal< sc_lv<1> > tmp_11_fu_946_p2;
    sc_signal< sc_lv<1> > p_41_i_i_fu_952_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_939_p3;
    sc_signal< sc_lv<1> > p_not_i_i_fu_969_p2;
    sc_signal< sc_lv<1> > brmerge_i_i1_fu_975_p2;
    sc_signal< sc_lv<1> > deleted_ones_fu_957_p3;
    sc_signal< sc_lv<1> > tmp4_demorgan_fu_996_p2;
    sc_signal< sc_lv<1> > tmp4_fu_1002_p2;
    sc_signal< sc_lv<1> > overflow_fu_985_p2;
    sc_signal< sc_lv<1> > tmp5_fu_1019_p2;
    sc_signal< sc_lv<1> > underflow_not_fu_1023_p2;
    sc_signal< sc_lv<8> > p_Val2_8_mux_fu_1028_p3;
    sc_signal< sc_lv<8> > p_Val2_8_39_fu_1034_p3;
    sc_signal< sc_lv<9> > tmp_4_fu_1052_p1;
    sc_signal< sc_lv<9> > tmp_3_fu_1048_p1;
    sc_signal< sc_lv<9> > p_Val2_2_fu_1056_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_1084_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_1098_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_1094_p2;
    sc_signal< sc_lv<1> > underflow_1_fu_1089_p2;
    sc_signal< sc_lv<1> > brmerge9_fu_1103_p2;
    sc_signal< sc_lv<8> > result_V_mux_fu_1108_p3;
    sc_signal< sc_lv<8> > p_result_V_fu_1115_p3;
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
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<15> ap_const_lv15_AB;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<7> ap_const_lv7_C;
    static const sc_lv<11> ap_const_lv11_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<11> ap_const_lv11_3;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_80;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Range1_all_ones_fu_929_p2();
    void thread_Range1_all_zeros_fu_934_p2();
    void thread_ShuffleConvs_2_Downs_10_address0();
    void thread_ShuffleConvs_2_Downs_10_ce0();
    void thread_ShuffleConvs_2_Downs_11_address0();
    void thread_ShuffleConvs_2_Downs_11_ce0();
    void thread_ShuffleConvs_2_Downs_1_address0();
    void thread_ShuffleConvs_2_Downs_1_ce0();
    void thread_ShuffleConvs_2_Downs_2_address0();
    void thread_ShuffleConvs_2_Downs_2_ce0();
    void thread_ShuffleConvs_2_Downs_3_address0();
    void thread_ShuffleConvs_2_Downs_3_ce0();
    void thread_ShuffleConvs_2_Downs_4_address0();
    void thread_ShuffleConvs_2_Downs_4_ce0();
    void thread_ShuffleConvs_2_Downs_5_address0();
    void thread_ShuffleConvs_2_Downs_5_ce0();
    void thread_ShuffleConvs_2_Downs_6_address0();
    void thread_ShuffleConvs_2_Downs_6_ce0();
    void thread_ShuffleConvs_2_Downs_7_address0();
    void thread_ShuffleConvs_2_Downs_7_ce0();
    void thread_ShuffleConvs_2_Downs_8_address0();
    void thread_ShuffleConvs_2_Downs_8_ce0();
    void thread_ShuffleConvs_2_Downs_9_address0();
    void thread_ShuffleConvs_2_Downs_9_ce0();
    void thread_ShuffleConvs_2_Downs_address0();
    void thread_ShuffleConvs_2_Downs_ce0();
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
    void thread_arrayNo_cast_fu_497_p1();
    void thread_bias_V_address0();
    void thread_bias_V_ce0();
    void thread_brmerge40_demorgan_i_fu_991_p2();
    void thread_brmerge9_fu_1103_p2();
    void thread_brmerge_i_i1_fu_975_p2();
    void thread_brmerge_i_i_fu_1094_p2();
    void thread_brmerge_i_i_i_fu_1013_p2();
    void thread_carry_fu_906_p2();
    void thread_co_1_fu_491_p2();
    void thread_co_cast_cast_fu_425_p1();
    void thread_co_cast_fu_420_p1();
    void thread_deleted_ones_fu_957_p3();
    void thread_deleted_zeros_fu_939_p3();
    void thread_exitcond1_fu_485_p2();
    void thread_exitcond2_fu_576_p2();
    void thread_exitcond3_fu_624_p2();
    void thread_exitcond4_fu_665_p2();
    void thread_exitcond_fu_739_p2();
    void thread_h_1_fu_638_p2();
    void thread_h_cast9_cast_fu_541_p1();
    void thread_idx_urem_fu_602_p3();
    void thread_isneg_not_fu_1098_p2();
    void thread_m_1_fu_671_p2();
    void thread_m_cast7_cast_fu_644_p1();
    void thread_n_1_fu_745_p2();
    void thread_n_cast6_cast_fu_725_p1();
    void thread_newsignbit_fu_892_p3();
    void thread_next_mul_fu_414_p2();
    void thread_next_urem_fu_590_p2();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_overflow_fu_985_p2();
    void thread_p_38_i_i_fu_964_p2();
    void thread_p_41_i_i_fu_952_p2();
    void thread_p_Val2_2_fu_1056_p2();
    void thread_p_Val2_5_fu_826_p0();
    void thread_p_Val2_5_fu_826_p1();
    void thread_p_Val2_5_fu_826_p2();
    void thread_p_Val2_6_fu_852_p2();
    void thread_p_Val2_7_fu_865_p4();
    void thread_p_Val2_8_39_fu_1034_p3();
    void thread_p_Val2_8_fu_886_p2();
    void thread_p_Val2_8_mux_fu_1028_p3();
    void thread_p_not_i_i_fu_969_p2();
    void thread_p_result_V_fu_1115_p3();
    void thread_p_shl1_cast_fu_471_p1();
    void thread_p_shl2_cast_fu_437_p1();
    void thread_p_shl3_cast_fu_519_p1();
    void thread_p_shl4_cast_fu_531_p1();
    void thread_p_shl5_cast_fu_554_p3();
    void thread_p_shl6_cast_fu_562_p3();
    void thread_p_shl_cast_fu_459_p1();
    void thread_result_V_fu_1070_p2();
    void thread_result_V_mux_fu_1108_p3();
    void thread_sum_V_fu_1040_p3();
    void thread_tmp2_cast_fu_683_p1();
    void thread_tmp2_fu_677_p2();
    void thread_tmp3_cast_fu_757_p1();
    void thread_tmp3_fu_751_p2();
    void thread_tmp4_demorgan_fu_996_p2();
    void thread_tmp4_fu_1002_p2();
    void thread_tmp5_fu_1019_p2();
    void thread_tmp_10_fu_900_p2();
    void thread_tmp_11_cast_fu_848_p1();
    void thread_tmp_11_fu_946_p2();
    void thread_tmp_13_fu_980_p2();
    void thread_tmp_14_cast_fu_447_p1();
    void thread_tmp_14_fu_441_p2();
    void thread_tmp_15_fu_451_p3();
    void thread_tmp_16_fu_463_p3();
    void thread_tmp_17_cast_fu_481_p1();
    void thread_tmp_17_fu_475_p2();
    void thread_tmp_18_fu_501_p4();
    void thread_tmp_19_fu_511_p3();
    void thread_tmp_20_fu_523_p3();
    void thread_tmp_21_fu_535_p2();
    void thread_tmp_22_fu_545_p2();
    void thread_tmp_23_fu_550_p1();
    void thread_tmp_24_fu_570_p2();
    void thread_tmp_25_fu_596_p2();
    void thread_tmp_26_fu_614_p2();
    void thread_tmp_27_cast_fu_619_p1();
    void thread_tmp_27_fu_648_p2();
    void thread_tmp_28_fu_653_p2();
    void thread_tmp_29_fu_659_p2();
    void thread_tmp_2_fu_630_p3();
    void thread_tmp_30_fu_696_p2();
    void thread_tmp_31_fu_713_p2();
    void thread_tmp_32_fu_729_p2();
    void thread_tmp_33_fu_701_p2();
    void thread_tmp_34_fu_770_p2();
    void thread_tmp_35_cast_fu_734_p1();
    void thread_tmp_36_cast_fu_775_p1();
    void thread_tmp_37_fu_707_p2();
    void thread_tmp_3_fu_1048_p1();
    void thread_tmp_40_fu_878_p3();
    void thread_tmp_42_fu_922_p3();
    void thread_tmp_4_fu_1052_p1();
    void thread_tmp_5_fu_1084_p2();
    void thread_tmp_6_cast_cast_fu_766_p1();
    void thread_tmp_6_fu_761_p2();
    void thread_tmp_7_fu_840_p3();
    void thread_tmp_8_fu_429_p3();
    void thread_tmp_9_fu_875_p1();
    void thread_tmp_cast_cast_fu_692_p1();
    void thread_tmp_fu_582_p3();
    void thread_tmp_s_fu_687_p2();
    void thread_underflow_1_fu_1089_p2();
    void thread_underflow_fu_1008_p2();
    void thread_underflow_not_fu_1023_p2();
    void thread_w_1_fu_719_p2();
    void thread_w_cast8_cast_fu_610_p1();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
