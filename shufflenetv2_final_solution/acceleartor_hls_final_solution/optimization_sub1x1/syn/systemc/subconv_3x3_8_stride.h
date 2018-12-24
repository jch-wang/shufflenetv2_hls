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

#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct subconv_3x3_8_stride : public sc_module {
    // Port declarations 40
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
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_7_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_7_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_7_q0;
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_6_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_6_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_6_q0;
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_5_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_5_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_5_q0;
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_4_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_4_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_4_q0;
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_3_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_3_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_3_q0;
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_2_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_2_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_2_q0;
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_1_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_1_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_1_q0;
    sc_out< sc_lv<11> > ShuffleConvs_2_Downs_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_2_Downs_q0;


    // Module declarations
    subconv_3x3_8_stride(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_8_stride);

    ~subconv_3x3_8_stride();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U233;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > co_1_fu_336_p2;
    sc_signal< sc_lv<7> > co_1_reg_1023;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_42_cast_fu_369_p1;
    sc_signal< sc_lv<11> > tmp_42_cast_reg_1028;
    sc_signal< sc_lv<1> > exitcond1_fu_330_p2;
    sc_signal< sc_lv<12> > tmp_45_cast_fu_403_p1;
    sc_signal< sc_lv<12> > tmp_45_cast_reg_1033;
    sc_signal< sc_lv<3> > tmp_37_fu_407_p1;
    sc_signal< sc_lv<3> > tmp_37_reg_1038;
    sc_signal< sc_lv<8> > tmp_39_fu_445_p2;
    sc_signal< sc_lv<8> > tmp_39_reg_1043;
    sc_signal< sc_lv<7> > bias_V_addr_reg_1048;
    sc_signal< sc_lv<4> > tmp_2_fu_457_p3;
    sc_signal< sc_lv<4> > tmp_2_reg_1056;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond2_fu_451_p2;
    sc_signal< sc_lv<13> > tmp_42_fu_494_p2;
    sc_signal< sc_lv<13> > tmp_42_reg_1061;
    sc_signal< sc_lv<4> > tmp_5_fu_506_p3;
    sc_signal< sc_lv<4> > tmp_5_reg_1069;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond3_fu_500_p2;
    sc_signal< sc_lv<3> > h_1_fu_514_p2;
    sc_signal< sc_lv<2> > m_1_fu_526_p2;
    sc_signal< sc_lv<2> > m_1_reg_1082;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<11> > tmp_46_fu_547_p2;
    sc_signal< sc_lv<11> > tmp_46_reg_1087;
    sc_signal< sc_lv<1> > exitcond4_fu_520_p2;
    sc_signal< sc_lv<12> > tmp_50_fu_601_p2;
    sc_signal< sc_lv<12> > tmp_50_reg_1092;
    sc_signal< sc_lv<13> > tmp_43_fu_611_p2;
    sc_signal< sc_lv<13> > tmp_43_reg_1097;
    sc_signal< sc_lv<3> > w_1_fu_616_p2;
    sc_signal< sc_lv<3> > w_1_reg_1102;
    sc_signal< sc_lv<2> > n_1_fu_628_p2;
    sc_signal< sc_lv<2> > n_1_reg_1110;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond_fu_622_p2;
    sc_signal< sc_lv<8> > weight_V_load_reg_1160;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > tmp_13_fu_684_p10;
    sc_signal< sc_lv<8> > tmp_13_reg_1165;
    sc_signal< sc_lv<16> > p_Val2_5_fu_711_p2;
    sc_signal< sc_lv<16> > p_Val2_5_reg_1170;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > tmp_54_reg_1175;
    sc_signal< sc_lv<16> > p_Val2_6_fu_737_p2;
    sc_signal< sc_lv<16> > p_Val2_6_reg_1180;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > signbit_reg_1185;
    sc_signal< sc_lv<8> > p_Val2_8_fu_771_p2;
    sc_signal< sc_lv<8> > p_Val2_8_reg_1192;
    sc_signal< sc_lv<1> > newsignbit_fu_777_p3;
    sc_signal< sc_lv<1> > newsignbit_reg_1198;
    sc_signal< sc_lv<1> > carry_fu_791_p2;
    sc_signal< sc_lv<1> > carry_reg_1204;
    sc_signal< sc_lv<2> > tmp_19_reg_1211;
    sc_signal< sc_lv<1> > p_38_i_i_fu_849_p2;
    sc_signal< sc_lv<1> > p_38_i_i_reg_1217;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_20_fu_865_p2;
    sc_signal< sc_lv<1> > tmp_20_reg_1222;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_fu_876_p2;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_reg_1227;
    sc_signal< sc_lv<1> > underflow_fu_893_p2;
    sc_signal< sc_lv<1> > underflow_reg_1232;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_898_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_reg_1237;
    sc_signal< sc_lv<8> > sum_V_fu_925_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > isneg_reg_1247;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > result_V_fu_955_p2;
    sc_signal< sc_lv<8> > result_V_reg_1254;
    sc_signal< sc_lv<1> > newsignbit_2_reg_1260;
    sc_signal< sc_lv<7> > co_reg_249;
    sc_signal< sc_lv<3> > h_reg_260;
    sc_signal< sc_lv<3> > w_reg_272;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > p_Val2_s_reg_284;
    sc_signal< sc_lv<2> > m_reg_296;
    sc_signal< sc_lv<8> > p_Val2_4_reg_307;
    sc_signal< sc_lv<2> > n_reg_319;
    sc_signal< sc_lv<64> > tmp_fu_342_p1;
    sc_signal< sc_lv<64> > tmp_61_cast_fu_643_p1;
    sc_signal< sc_lv<64> > tmp_62_cast_fu_672_p1;
    sc_signal< sc_lv<64> > tmp_53_cast_fu_1016_p1;
    sc_signal< sc_lv<9> > tmp_s_fu_351_p3;
    sc_signal< sc_lv<10> > p_shl4_cast_fu_359_p1;
    sc_signal< sc_lv<10> > tmp_cast_fu_347_p1;
    sc_signal< sc_lv<10> > tmp_32_fu_363_p2;
    sc_signal< sc_lv<10> > tmp_33_fu_373_p3;
    sc_signal< sc_lv<8> > tmp_34_fu_385_p3;
    sc_signal< sc_lv<11> > p_shl2_cast_fu_381_p1;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_393_p1;
    sc_signal< sc_lv<11> > tmp_35_fu_397_p2;
    sc_signal< sc_lv<4> > newIndex_fu_411_p4;
    sc_signal< sc_lv<7> > tmp_36_fu_421_p3;
    sc_signal< sc_lv<5> > tmp_38_fu_433_p3;
    sc_signal< sc_lv<8> > p_shl_cast_fu_429_p1;
    sc_signal< sc_lv<8> > p_shl1_cast_fu_441_p1;
    sc_signal< sc_lv<12> > tmp_3_cast_fu_465_p1;
    sc_signal< sc_lv<12> > tmp_40_fu_469_p2;
    sc_signal< sc_lv<10> > tmp_41_fu_474_p1;
    sc_signal< sc_lv<13> > p_shl5_cast_fu_478_p3;
    sc_signal< sc_lv<13> > p_shl6_cast_fu_486_p3;
    sc_signal< sc_lv<11> > tmp_1_cast_fu_532_p1;
    sc_signal< sc_lv<11> > tmp_44_fu_536_p2;
    sc_signal< sc_lv<11> > tmp_45_fu_541_p2;
    sc_signal< sc_lv<2> > tmp2_fu_553_p2;
    sc_signal< sc_lv<4> > tmp2_cast_fu_559_p1;
    sc_signal< sc_lv<4> > tmp_8_fu_563_p2;
    sc_signal< sc_lv<8> > tmp_cast_26_fu_568_p1;
    sc_signal< sc_lv<8> > tmp_47_fu_572_p2;
    sc_signal< sc_lv<11> > tmp_48_fu_577_p3;
    sc_signal< sc_lv<9> > tmp_49_fu_589_p3;
    sc_signal< sc_lv<12> > p_shl8_cast_fu_597_p1;
    sc_signal< sc_lv<12> > p_shl7_cast_fu_585_p1;
    sc_signal< sc_lv<13> > tmp_9_cast_fu_607_p1;
    sc_signal< sc_lv<11> > tmp_10_cast_fu_634_p1;
    sc_signal< sc_lv<11> > tmp_51_fu_638_p2;
    sc_signal< sc_lv<2> > tmp3_fu_648_p2;
    sc_signal< sc_lv<4> > tmp3_cast_fu_654_p1;
    sc_signal< sc_lv<4> > tmp_11_fu_658_p2;
    sc_signal< sc_lv<12> > tmp_12_cast_fu_663_p1;
    sc_signal< sc_lv<12> > tmp_52_fu_667_p2;
    sc_signal< sc_lv<8> > p_Val2_5_fu_711_p0;
    sc_signal< sc_lv<8> > p_Val2_5_fu_711_p1;
    sc_signal< sc_lv<14> > tmp_14_fu_725_p3;
    sc_signal< sc_lv<16> > tmp_17_cast_fu_733_p1;
    sc_signal< sc_lv<8> > p_Val2_7_fu_750_p4;
    sc_signal< sc_lv<8> > tmp_16_fu_760_p1;
    sc_signal< sc_lv<1> > tmp_55_fu_763_p3;
    sc_signal< sc_lv<1> > tmp_17_fu_785_p2;
    sc_signal< sc_lv<1> > Range1_all_ones_fu_814_p2;
    sc_signal< sc_lv<1> > Range1_all_zeros_fu_819_p2;
    sc_signal< sc_lv<1> > tmp_57_fu_807_p3;
    sc_signal< sc_lv<1> > tmp_18_fu_831_p2;
    sc_signal< sc_lv<1> > p_41_i_i_fu_837_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_824_p3;
    sc_signal< sc_lv<1> > p_not_i_i_fu_854_p2;
    sc_signal< sc_lv<1> > brmerge_i_i1_fu_860_p2;
    sc_signal< sc_lv<1> > deleted_ones_fu_842_p3;
    sc_signal< sc_lv<1> > tmp4_demorgan_fu_881_p2;
    sc_signal< sc_lv<1> > tmp4_fu_887_p2;
    sc_signal< sc_lv<1> > overflow_fu_870_p2;
    sc_signal< sc_lv<1> > tmp5_fu_904_p2;
    sc_signal< sc_lv<1> > underflow_not_fu_908_p2;
    sc_signal< sc_lv<8> > p_Val2_8_mux_fu_913_p3;
    sc_signal< sc_lv<8> > p_Val2_8_28_fu_919_p3;
    sc_signal< sc_lv<9> > tmp_6_fu_933_p1;
    sc_signal< sc_lv<9> > tmp_7_fu_937_p1;
    sc_signal< sc_lv<9> > p_Val2_2_fu_941_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_969_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_983_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_979_p2;
    sc_signal< sc_lv<1> > underflow_2_fu_974_p2;
    sc_signal< sc_lv<1> > brmerge9_fu_988_p2;
    sc_signal< sc_lv<8> > result_V_mux_fu_993_p3;
    sc_signal< sc_lv<8> > p_result_V_fu_1000_p3;
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
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<11> ap_const_lv11_2;
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
    void thread_Range1_all_ones_fu_814_p2();
    void thread_Range1_all_zeros_fu_819_p2();
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
    void thread_bias_V_address0();
    void thread_bias_V_ce0();
    void thread_brmerge40_demorgan_i_fu_876_p2();
    void thread_brmerge9_fu_988_p2();
    void thread_brmerge_i_i1_fu_860_p2();
    void thread_brmerge_i_i_fu_979_p2();
    void thread_brmerge_i_i_i_fu_898_p2();
    void thread_carry_fu_791_p2();
    void thread_co_1_fu_336_p2();
    void thread_deleted_ones_fu_842_p3();
    void thread_deleted_zeros_fu_824_p3();
    void thread_exitcond1_fu_330_p2();
    void thread_exitcond2_fu_451_p2();
    void thread_exitcond3_fu_500_p2();
    void thread_exitcond4_fu_520_p2();
    void thread_exitcond_fu_622_p2();
    void thread_h_1_fu_514_p2();
    void thread_isneg_not_fu_983_p2();
    void thread_m_1_fu_526_p2();
    void thread_n_1_fu_628_p2();
    void thread_newIndex_fu_411_p4();
    void thread_newsignbit_fu_777_p3();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_overflow_fu_870_p2();
    void thread_p_38_i_i_fu_849_p2();
    void thread_p_41_i_i_fu_837_p2();
    void thread_p_Val2_2_fu_941_p2();
    void thread_p_Val2_5_fu_711_p0();
    void thread_p_Val2_5_fu_711_p1();
    void thread_p_Val2_5_fu_711_p2();
    void thread_p_Val2_6_fu_737_p2();
    void thread_p_Val2_7_fu_750_p4();
    void thread_p_Val2_8_28_fu_919_p3();
    void thread_p_Val2_8_fu_771_p2();
    void thread_p_Val2_8_mux_fu_913_p3();
    void thread_p_not_i_i_fu_854_p2();
    void thread_p_result_V_fu_1000_p3();
    void thread_p_shl1_cast_fu_441_p1();
    void thread_p_shl2_cast_fu_381_p1();
    void thread_p_shl3_cast_fu_393_p1();
    void thread_p_shl4_cast_fu_359_p1();
    void thread_p_shl5_cast_fu_478_p3();
    void thread_p_shl6_cast_fu_486_p3();
    void thread_p_shl7_cast_fu_585_p1();
    void thread_p_shl8_cast_fu_597_p1();
    void thread_p_shl_cast_fu_429_p1();
    void thread_result_V_fu_955_p2();
    void thread_result_V_mux_fu_993_p3();
    void thread_sum_V_fu_925_p3();
    void thread_tmp2_cast_fu_559_p1();
    void thread_tmp2_fu_553_p2();
    void thread_tmp3_cast_fu_654_p1();
    void thread_tmp3_fu_648_p2();
    void thread_tmp4_demorgan_fu_881_p2();
    void thread_tmp4_fu_887_p2();
    void thread_tmp5_fu_904_p2();
    void thread_tmp_10_cast_fu_634_p1();
    void thread_tmp_11_fu_658_p2();
    void thread_tmp_12_cast_fu_663_p1();
    void thread_tmp_14_fu_725_p3();
    void thread_tmp_16_fu_760_p1();
    void thread_tmp_17_cast_fu_733_p1();
    void thread_tmp_17_fu_785_p2();
    void thread_tmp_18_fu_831_p2();
    void thread_tmp_1_cast_fu_532_p1();
    void thread_tmp_20_fu_865_p2();
    void thread_tmp_2_fu_457_p3();
    void thread_tmp_32_fu_363_p2();
    void thread_tmp_33_fu_373_p3();
    void thread_tmp_34_fu_385_p3();
    void thread_tmp_35_fu_397_p2();
    void thread_tmp_36_fu_421_p3();
    void thread_tmp_37_fu_407_p1();
    void thread_tmp_38_fu_433_p3();
    void thread_tmp_39_fu_445_p2();
    void thread_tmp_3_cast_fu_465_p1();
    void thread_tmp_40_fu_469_p2();
    void thread_tmp_41_fu_474_p1();
    void thread_tmp_42_cast_fu_369_p1();
    void thread_tmp_42_fu_494_p2();
    void thread_tmp_43_fu_611_p2();
    void thread_tmp_44_fu_536_p2();
    void thread_tmp_45_cast_fu_403_p1();
    void thread_tmp_45_fu_541_p2();
    void thread_tmp_46_fu_547_p2();
    void thread_tmp_47_fu_572_p2();
    void thread_tmp_48_fu_577_p3();
    void thread_tmp_49_fu_589_p3();
    void thread_tmp_4_fu_969_p2();
    void thread_tmp_50_fu_601_p2();
    void thread_tmp_51_fu_638_p2();
    void thread_tmp_52_fu_667_p2();
    void thread_tmp_53_cast_fu_1016_p1();
    void thread_tmp_55_fu_763_p3();
    void thread_tmp_57_fu_807_p3();
    void thread_tmp_5_fu_506_p3();
    void thread_tmp_61_cast_fu_643_p1();
    void thread_tmp_62_cast_fu_672_p1();
    void thread_tmp_6_fu_933_p1();
    void thread_tmp_7_fu_937_p1();
    void thread_tmp_8_fu_563_p2();
    void thread_tmp_9_cast_fu_607_p1();
    void thread_tmp_cast_26_fu_568_p1();
    void thread_tmp_cast_fu_347_p1();
    void thread_tmp_fu_342_p1();
    void thread_tmp_s_fu_351_p3();
    void thread_underflow_2_fu_974_p2();
    void thread_underflow_fu_893_p2();
    void thread_underflow_not_fu_908_p2();
    void thread_w_1_fu_616_p2();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
