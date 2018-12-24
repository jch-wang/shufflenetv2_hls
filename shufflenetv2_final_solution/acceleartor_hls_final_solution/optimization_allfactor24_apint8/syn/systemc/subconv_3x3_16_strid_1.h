// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_3x3_16_strid_1_HH_
#define _subconv_3x3_16_strid_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_g8j.h"
#include "ShuffleNetV2_mac_cud.h"

namespace ap_rtl {

struct subconv_3x3_16_strid_1 : public sc_module {
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
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_23_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_23_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_23_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_22_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_22_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_22_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_11_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_11_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_11_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_6_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_6_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_6_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_5_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_5_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_5_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_4_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_4_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_4_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_3_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_3_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_3_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_2_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_2_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_2_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_1_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_1_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_1_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_21_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_21_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_21_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_20_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_20_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_20_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_19_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_19_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_19_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_18_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_18_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_18_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_17_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_17_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_17_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_16_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_16_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_16_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_15_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_15_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_15_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_14_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_14_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_14_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_13_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_13_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_13_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_12_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_12_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_12_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_10_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_10_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_10_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_9_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_9_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_9_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_8_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_8_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_8_q0;
    sc_out< sc_lv<10> > ShuffleConvs_1_Downs_7_address0;
    sc_out< sc_logic > ShuffleConvs_1_Downs_7_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_1_Downs_7_q0;


    // Module declarations
    subconv_3x3_16_strid_1(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_16_strid_1);

    ~subconv_3x3_16_strid_1();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_g8j<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,32,8>* ShuffleNetV2_mux_g8j_x_U308;
    ShuffleNetV2_mac_cud<1,1,8,8,8,8>* ShuffleNetV2_mac_cud_x_U309;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<13> > next_mul_fu_542_p2;
    sc_signal< sc_lv<13> > next_mul_reg_997;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > tmp_142_cast_fu_575_p1;
    sc_signal< sc_lv<10> > tmp_142_cast_reg_1002;
    sc_signal< sc_lv<10> > tmp_119_fu_603_p2;
    sc_signal< sc_lv<10> > tmp_119_reg_1007;
    sc_signal< sc_lv<6> > co_5_fu_615_p2;
    sc_signal< sc_lv<6> > co_5_reg_1015;
    sc_signal< sc_lv<6> > bias_V_addr_reg_1020;
    sc_signal< sc_lv<1> > exitcond8_fu_609_p2;
    sc_signal< sc_lv<32> > arrayNo_cast_fu_641_p1;
    sc_signal< sc_lv<32> > arrayNo_cast_reg_1025;
    sc_signal< sc_lv<11> > tmp_122_fu_679_p2;
    sc_signal< sc_lv<11> > tmp_122_reg_1030;
    sc_signal< sc_lv<14> > tmp_124_fu_718_p2;
    sc_signal< sc_lv<14> > tmp_124_reg_1035;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > tmp_fu_730_p3;
    sc_signal< sc_lv<5> > tmp_reg_1043;
    sc_signal< sc_lv<1> > exitcond9_fu_724_p2;
    sc_signal< sc_lv<13> > output_V_addr_reg_1048;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > tmp_s_fu_758_p3;
    sc_signal< sc_lv<5> > tmp_s_reg_1056;
    sc_signal< sc_lv<1> > exitcond1_fu_752_p2;
    sc_signal< sc_lv<4> > h_5_fu_766_p2;
    sc_signal< sc_lv<10> > tmp_127_fu_787_p2;
    sc_signal< sc_lv<10> > tmp_127_reg_1066;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > m_5_fu_799_p2;
    sc_signal< sc_lv<2> > m_5_reg_1074;
    sc_signal< sc_lv<11> > tmp_129_fu_841_p2;
    sc_signal< sc_lv<11> > tmp_129_reg_1079;
    sc_signal< sc_lv<1> > exitcond2_fu_793_p2;
    sc_signal< sc_lv<4> > w_5_fu_847_p2;
    sc_signal< sc_lv<4> > w_5_reg_1084;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > n_5_fu_873_p2;
    sc_signal< sc_lv<2> > n_5_reg_1097;
    sc_signal< sc_lv<1> > exitcond_fu_867_p2;
    sc_signal< sc_lv<8> > weight_V_load_reg_1222;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > tmp_4_fu_931_p26;
    sc_signal< sc_lv<8> > tmp_4_reg_1227;
    sc_signal< sc_lv<8> > grp_fu_991_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<6> > co_reg_450;
    sc_signal< sc_lv<13> > phi_mul_reg_461;
    sc_signal< sc_lv<4> > h_reg_472;
    sc_signal< sc_lv<4> > w_reg_484;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > p_s_reg_496;
    sc_signal< sc_lv<2> > m_reg_508;
    sc_signal< sc_lv<8> > p_09_1_reg_519;
    sc_signal< sc_lv<2> > n_reg_531;
    sc_signal< sc_lv<32> > co_cast7_fu_548_p1;
    sc_signal< sc_lv<32> > tmp_157_cast_fu_747_p1;
    sc_signal< sc_lv<32> > tmp_165_cast_fu_862_p1;
    sc_signal< sc_lv<32> > tmp_166_cast_fu_903_p1;
    sc_signal< sc_lv<8> > tmp_115_fu_557_p3;
    sc_signal< sc_lv<9> > p_shl2_cast_fu_565_p1;
    sc_signal< sc_lv<9> > co_cast7_cast_fu_553_p1;
    sc_signal< sc_lv<9> > tmp_116_fu_569_p2;
    sc_signal< sc_lv<9> > tmp_117_fu_579_p3;
    sc_signal< sc_lv<7> > tmp_118_fu_591_p3;
    sc_signal< sc_lv<10> > p_shl1_cast_fu_599_p1;
    sc_signal< sc_lv<10> > p_shl_cast_fu_587_p1;
    sc_signal< sc_lv<1> > tmp_120_fu_621_p2;
    sc_signal< sc_lv<6> > tmp_121_fu_627_p2;
    sc_signal< sc_lv<6> > arrayNo_fu_633_p3;
    sc_signal< sc_lv<2> > tmp_86_fu_645_p4;
    sc_signal< sc_lv<6> > tmp_87_fu_655_p3;
    sc_signal< sc_lv<3> > tmp_88_fu_667_p3;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_663_p1;
    sc_signal< sc_lv<11> > p_shl4_cast_fu_675_p1;
    sc_signal< sc_lv<10> > h_cast6_cast_fu_685_p1;
    sc_signal< sc_lv<10> > tmp_123_fu_689_p2;
    sc_signal< sc_lv<13> > tmp_89_fu_694_p3;
    sc_signal< sc_lv<11> > tmp_90_fu_706_p3;
    sc_signal< sc_lv<14> > p_shl5_cast_fu_702_p1;
    sc_signal< sc_lv<14> > p_shl6_cast_fu_714_p1;
    sc_signal< sc_lv<14> > w_cast5_cast_fu_738_p1;
    sc_signal< sc_lv<14> > tmp_125_fu_742_p2;
    sc_signal< sc_lv<10> > m_cast4_cast_fu_772_p1;
    sc_signal< sc_lv<10> > tmp_126_fu_776_p2;
    sc_signal< sc_lv<10> > tmp_91_fu_781_p2;
    sc_signal< sc_lv<2> > tmp1_fu_805_p2;
    sc_signal< sc_lv<5> > tmp1_cast_fu_811_p1;
    sc_signal< sc_lv<5> > tmp_6_fu_815_p2;
    sc_signal< sc_lv<11> > tmp_6_cast_cast_fu_820_p1;
    sc_signal< sc_lv<11> > tmp_128_fu_824_p2;
    sc_signal< sc_lv<11> > tmp_92_fu_829_p2;
    sc_signal< sc_lv<11> > tmp_93_fu_835_p2;
    sc_signal< sc_lv<10> > n_cast3_cast_fu_853_p1;
    sc_signal< sc_lv<10> > tmp_130_fu_857_p2;
    sc_signal< sc_lv<2> > tmp2_fu_879_p2;
    sc_signal< sc_lv<5> > tmp2_cast_fu_885_p1;
    sc_signal< sc_lv<5> > tmp_8_fu_889_p2;
    sc_signal< sc_lv<11> > tmp_8_cast_cast_fu_894_p1;
    sc_signal< sc_lv<11> > tmp_131_fu_898_p2;
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
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<13> ap_const_lv13_56;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_18;
    static const sc_lv<6> ap_const_lv6_28;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<10> ap_const_lv10_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<11> ap_const_lv11_4;
    static const sc_lv<11> ap_const_lv11_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ShuffleConvs_1_Downs_10_address0();
    void thread_ShuffleConvs_1_Downs_10_ce0();
    void thread_ShuffleConvs_1_Downs_11_address0();
    void thread_ShuffleConvs_1_Downs_11_ce0();
    void thread_ShuffleConvs_1_Downs_12_address0();
    void thread_ShuffleConvs_1_Downs_12_ce0();
    void thread_ShuffleConvs_1_Downs_13_address0();
    void thread_ShuffleConvs_1_Downs_13_ce0();
    void thread_ShuffleConvs_1_Downs_14_address0();
    void thread_ShuffleConvs_1_Downs_14_ce0();
    void thread_ShuffleConvs_1_Downs_15_address0();
    void thread_ShuffleConvs_1_Downs_15_ce0();
    void thread_ShuffleConvs_1_Downs_16_address0();
    void thread_ShuffleConvs_1_Downs_16_ce0();
    void thread_ShuffleConvs_1_Downs_17_address0();
    void thread_ShuffleConvs_1_Downs_17_ce0();
    void thread_ShuffleConvs_1_Downs_18_address0();
    void thread_ShuffleConvs_1_Downs_18_ce0();
    void thread_ShuffleConvs_1_Downs_19_address0();
    void thread_ShuffleConvs_1_Downs_19_ce0();
    void thread_ShuffleConvs_1_Downs_1_address0();
    void thread_ShuffleConvs_1_Downs_1_ce0();
    void thread_ShuffleConvs_1_Downs_20_address0();
    void thread_ShuffleConvs_1_Downs_20_ce0();
    void thread_ShuffleConvs_1_Downs_21_address0();
    void thread_ShuffleConvs_1_Downs_21_ce0();
    void thread_ShuffleConvs_1_Downs_22_address0();
    void thread_ShuffleConvs_1_Downs_22_ce0();
    void thread_ShuffleConvs_1_Downs_23_address0();
    void thread_ShuffleConvs_1_Downs_23_ce0();
    void thread_ShuffleConvs_1_Downs_2_address0();
    void thread_ShuffleConvs_1_Downs_2_ce0();
    void thread_ShuffleConvs_1_Downs_3_address0();
    void thread_ShuffleConvs_1_Downs_3_ce0();
    void thread_ShuffleConvs_1_Downs_4_address0();
    void thread_ShuffleConvs_1_Downs_4_ce0();
    void thread_ShuffleConvs_1_Downs_5_address0();
    void thread_ShuffleConvs_1_Downs_5_ce0();
    void thread_ShuffleConvs_1_Downs_6_address0();
    void thread_ShuffleConvs_1_Downs_6_ce0();
    void thread_ShuffleConvs_1_Downs_7_address0();
    void thread_ShuffleConvs_1_Downs_7_ce0();
    void thread_ShuffleConvs_1_Downs_8_address0();
    void thread_ShuffleConvs_1_Downs_8_ce0();
    void thread_ShuffleConvs_1_Downs_9_address0();
    void thread_ShuffleConvs_1_Downs_9_ce0();
    void thread_ShuffleConvs_1_Downs_address0();
    void thread_ShuffleConvs_1_Downs_ce0();
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
    void thread_arrayNo_cast_fu_641_p1();
    void thread_arrayNo_fu_633_p3();
    void thread_bias_V_address0();
    void thread_bias_V_ce0();
    void thread_co_5_fu_615_p2();
    void thread_co_cast7_cast_fu_553_p1();
    void thread_co_cast7_fu_548_p1();
    void thread_exitcond1_fu_752_p2();
    void thread_exitcond2_fu_793_p2();
    void thread_exitcond8_fu_609_p2();
    void thread_exitcond9_fu_724_p2();
    void thread_exitcond_fu_867_p2();
    void thread_h_5_fu_766_p2();
    void thread_h_cast6_cast_fu_685_p1();
    void thread_m_5_fu_799_p2();
    void thread_m_cast4_cast_fu_772_p1();
    void thread_n_5_fu_873_p2();
    void thread_n_cast3_cast_fu_853_p1();
    void thread_next_mul_fu_542_p2();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl1_cast_fu_599_p1();
    void thread_p_shl2_cast_fu_565_p1();
    void thread_p_shl3_cast_fu_663_p1();
    void thread_p_shl4_cast_fu_675_p1();
    void thread_p_shl5_cast_fu_702_p1();
    void thread_p_shl6_cast_fu_714_p1();
    void thread_p_shl_cast_fu_587_p1();
    void thread_tmp1_cast_fu_811_p1();
    void thread_tmp1_fu_805_p2();
    void thread_tmp2_cast_fu_885_p1();
    void thread_tmp2_fu_879_p2();
    void thread_tmp_115_fu_557_p3();
    void thread_tmp_116_fu_569_p2();
    void thread_tmp_117_fu_579_p3();
    void thread_tmp_118_fu_591_p3();
    void thread_tmp_119_fu_603_p2();
    void thread_tmp_120_fu_621_p2();
    void thread_tmp_121_fu_627_p2();
    void thread_tmp_122_fu_679_p2();
    void thread_tmp_123_fu_689_p2();
    void thread_tmp_124_fu_718_p2();
    void thread_tmp_125_fu_742_p2();
    void thread_tmp_126_fu_776_p2();
    void thread_tmp_127_fu_787_p2();
    void thread_tmp_128_fu_824_p2();
    void thread_tmp_129_fu_841_p2();
    void thread_tmp_130_fu_857_p2();
    void thread_tmp_131_fu_898_p2();
    void thread_tmp_142_cast_fu_575_p1();
    void thread_tmp_157_cast_fu_747_p1();
    void thread_tmp_165_cast_fu_862_p1();
    void thread_tmp_166_cast_fu_903_p1();
    void thread_tmp_6_cast_cast_fu_820_p1();
    void thread_tmp_6_fu_815_p2();
    void thread_tmp_86_fu_645_p4();
    void thread_tmp_87_fu_655_p3();
    void thread_tmp_88_fu_667_p3();
    void thread_tmp_89_fu_694_p3();
    void thread_tmp_8_cast_cast_fu_894_p1();
    void thread_tmp_8_fu_889_p2();
    void thread_tmp_90_fu_706_p3();
    void thread_tmp_91_fu_781_p2();
    void thread_tmp_92_fu_829_p2();
    void thread_tmp_93_fu_835_p2();
    void thread_tmp_fu_730_p3();
    void thread_tmp_s_fu_758_p3();
    void thread_w_5_fu_847_p2();
    void thread_w_cast5_cast_fu_738_p1();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
