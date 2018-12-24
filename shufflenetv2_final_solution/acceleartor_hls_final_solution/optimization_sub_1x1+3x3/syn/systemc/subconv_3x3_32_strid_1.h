// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_3x3_32_strid_1_HH_
#define _subconv_3x3_32_strid_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_eOg.h"
#include "ShuffleNetV2_mac_cud.h"

namespace ap_rtl {

struct subconv_3x3_32_strid_1 : public sc_module {
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
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_23_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_23_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_23_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_22_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_22_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_22_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_11_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_11_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_11_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_6_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_6_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_6_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_5_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_5_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_5_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_4_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_4_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_4_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_3_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_3_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_3_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_2_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_2_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_2_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_1_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_1_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_1_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_21_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_21_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_21_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_20_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_20_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_20_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_19_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_19_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_19_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_18_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_18_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_18_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_17_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_17_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_17_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_16_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_16_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_16_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_15_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_15_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_15_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_14_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_14_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_14_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_13_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_13_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_13_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_12_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_12_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_12_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_10_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_10_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_10_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_9_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_9_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_9_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_8_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_8_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_8_q0;
    sc_out< sc_lv<11> > ShuffleConvs_0_Downs_7_address0;
    sc_out< sc_logic > ShuffleConvs_0_Downs_7_ce0;
    sc_in< sc_lv<8> > ShuffleConvs_0_Downs_7_q0;


    // Module declarations
    subconv_3x3_32_strid_1(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_32_strid_1);

    ~subconv_3x3_32_strid_1();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_eOg<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* ShuffleNetV2_mux_eOg_x_U62;
    ShuffleNetV2_mac_cud<1,1,8,8,8,8>* ShuffleNetV2_mac_cud_x_U63;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<9> > tmp_82_cast_fu_535_p1;
    sc_signal< sc_lv<9> > tmp_82_cast_reg_893;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > tmp_71_fu_563_p2;
    sc_signal< sc_lv<10> > tmp_71_reg_898;
    sc_signal< sc_lv<5> > co_4_fu_575_p2;
    sc_signal< sc_lv<5> > co_4_reg_906;
    sc_signal< sc_lv<5> > bias_V_addr_reg_911;
    sc_signal< sc_lv<1> > exitcond4_fu_569_p2;
    sc_signal< sc_lv<14> > tmp_73_fu_610_p2;
    sc_signal< sc_lv<14> > tmp_73_reg_916;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > tmp_fu_622_p3;
    sc_signal< sc_lv<6> > tmp_reg_924;
    sc_signal< sc_lv<1> > exitcond5_fu_616_p2;
    sc_signal< sc_lv<13> > output_V_addr_reg_929;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > tmp_s_fu_650_p3;
    sc_signal< sc_lv<6> > tmp_s_reg_937;
    sc_signal< sc_lv<1> > exitcond6_fu_644_p2;
    sc_signal< sc_lv<5> > h_4_fu_658_p2;
    sc_signal< sc_lv<9> > tmp_76_fu_679_p2;
    sc_signal< sc_lv<9> > tmp_76_reg_947;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > m_4_fu_691_p2;
    sc_signal< sc_lv<2> > m_4_reg_955;
    sc_signal< sc_lv<12> > tmp_79_fu_736_p2;
    sc_signal< sc_lv<12> > tmp_79_reg_960;
    sc_signal< sc_lv<1> > exitcond7_fu_685_p2;
    sc_signal< sc_lv<5> > w_4_fu_742_p2;
    sc_signal< sc_lv<5> > w_4_reg_965;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > n_4_fu_768_p2;
    sc_signal< sc_lv<2> > n_4_reg_978;
    sc_signal< sc_lv<1> > exitcond_fu_762_p2;
    sc_signal< sc_lv<8> > weight_V_load_reg_1103;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > tmp_3_fu_826_p26;
    sc_signal< sc_lv<8> > tmp_3_reg_1108;
    sc_signal< sc_lv<8> > grp_fu_887_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > co_reg_426;
    sc_signal< sc_lv<5> > h_reg_438;
    sc_signal< sc_lv<5> > w_reg_450;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > p_s_reg_462;
    sc_signal< sc_lv<2> > m_reg_474;
    sc_signal< sc_lv<8> > p_09_1_reg_485;
    sc_signal< sc_lv<2> > n_reg_497;
    sc_signal< sc_lv<32> > co_cast7_fu_508_p1;
    sc_signal< sc_lv<32> > tmp_90_cast_fu_639_p1;
    sc_signal< sc_lv<32> > tmp_97_cast_fu_757_p1;
    sc_signal< sc_lv<32> > tmp_98_cast_fu_798_p1;
    sc_signal< sc_lv<7> > tmp_67_fu_517_p3;
    sc_signal< sc_lv<8> > p_shl2_cast_fu_525_p1;
    sc_signal< sc_lv<8> > co_cast7_cast_fu_513_p1;
    sc_signal< sc_lv<8> > tmp_68_fu_529_p2;
    sc_signal< sc_lv<9> > tmp_69_fu_539_p3;
    sc_signal< sc_lv<6> > tmp_70_fu_551_p3;
    sc_signal< sc_lv<10> > p_shl1_cast_fu_559_p1;
    sc_signal< sc_lv<10> > p_shl_cast_fu_547_p1;
    sc_signal< sc_lv<10> > h_cast6_cast_fu_581_p1;
    sc_signal< sc_lv<10> > tmp_72_fu_585_p2;
    sc_signal< sc_lv<11> > tmp_27_fu_598_p3;
    sc_signal< sc_lv<14> > p_shl3_cast_fu_590_p3;
    sc_signal< sc_lv<14> > p_shl4_cast_fu_606_p1;
    sc_signal< sc_lv<14> > w_cast5_cast_fu_630_p1;
    sc_signal< sc_lv<14> > tmp_74_fu_634_p2;
    sc_signal< sc_lv<9> > m_cast4_cast_fu_664_p1;
    sc_signal< sc_lv<9> > tmp_75_fu_668_p2;
    sc_signal< sc_lv<9> > tmp_28_fu_673_p2;
    sc_signal< sc_lv<2> > tmp1_fu_697_p2;
    sc_signal< sc_lv<6> > tmp1_cast_fu_703_p1;
    sc_signal< sc_lv<6> > tmp_8_fu_707_p2;
    sc_signal< sc_lv<11> > tmp_77_fu_712_p3;
    sc_signal< sc_lv<7> > tmp_78_fu_724_p3;
    sc_signal< sc_lv<12> > p_shl7_cast_fu_732_p1;
    sc_signal< sc_lv<12> > p_shl6_cast_fu_720_p1;
    sc_signal< sc_lv<9> > n_cast3_cast_fu_748_p1;
    sc_signal< sc_lv<9> > tmp_80_fu_752_p2;
    sc_signal< sc_lv<2> > tmp2_fu_774_p2;
    sc_signal< sc_lv<6> > tmp2_cast_fu_780_p1;
    sc_signal< sc_lv<6> > tmp_1_fu_784_p2;
    sc_signal< sc_lv<12> > tmp_1_cast_cast_fu_789_p1;
    sc_signal< sc_lv<12> > tmp_81_fu_793_p2;
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
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ShuffleConvs_0_Downs_10_address0();
    void thread_ShuffleConvs_0_Downs_10_ce0();
    void thread_ShuffleConvs_0_Downs_11_address0();
    void thread_ShuffleConvs_0_Downs_11_ce0();
    void thread_ShuffleConvs_0_Downs_12_address0();
    void thread_ShuffleConvs_0_Downs_12_ce0();
    void thread_ShuffleConvs_0_Downs_13_address0();
    void thread_ShuffleConvs_0_Downs_13_ce0();
    void thread_ShuffleConvs_0_Downs_14_address0();
    void thread_ShuffleConvs_0_Downs_14_ce0();
    void thread_ShuffleConvs_0_Downs_15_address0();
    void thread_ShuffleConvs_0_Downs_15_ce0();
    void thread_ShuffleConvs_0_Downs_16_address0();
    void thread_ShuffleConvs_0_Downs_16_ce0();
    void thread_ShuffleConvs_0_Downs_17_address0();
    void thread_ShuffleConvs_0_Downs_17_ce0();
    void thread_ShuffleConvs_0_Downs_18_address0();
    void thread_ShuffleConvs_0_Downs_18_ce0();
    void thread_ShuffleConvs_0_Downs_19_address0();
    void thread_ShuffleConvs_0_Downs_19_ce0();
    void thread_ShuffleConvs_0_Downs_1_address0();
    void thread_ShuffleConvs_0_Downs_1_ce0();
    void thread_ShuffleConvs_0_Downs_20_address0();
    void thread_ShuffleConvs_0_Downs_20_ce0();
    void thread_ShuffleConvs_0_Downs_21_address0();
    void thread_ShuffleConvs_0_Downs_21_ce0();
    void thread_ShuffleConvs_0_Downs_22_address0();
    void thread_ShuffleConvs_0_Downs_22_ce0();
    void thread_ShuffleConvs_0_Downs_23_address0();
    void thread_ShuffleConvs_0_Downs_23_ce0();
    void thread_ShuffleConvs_0_Downs_2_address0();
    void thread_ShuffleConvs_0_Downs_2_ce0();
    void thread_ShuffleConvs_0_Downs_3_address0();
    void thread_ShuffleConvs_0_Downs_3_ce0();
    void thread_ShuffleConvs_0_Downs_4_address0();
    void thread_ShuffleConvs_0_Downs_4_ce0();
    void thread_ShuffleConvs_0_Downs_5_address0();
    void thread_ShuffleConvs_0_Downs_5_ce0();
    void thread_ShuffleConvs_0_Downs_6_address0();
    void thread_ShuffleConvs_0_Downs_6_ce0();
    void thread_ShuffleConvs_0_Downs_7_address0();
    void thread_ShuffleConvs_0_Downs_7_ce0();
    void thread_ShuffleConvs_0_Downs_8_address0();
    void thread_ShuffleConvs_0_Downs_8_ce0();
    void thread_ShuffleConvs_0_Downs_9_address0();
    void thread_ShuffleConvs_0_Downs_9_ce0();
    void thread_ShuffleConvs_0_Downs_address0();
    void thread_ShuffleConvs_0_Downs_ce0();
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
    void thread_co_4_fu_575_p2();
    void thread_co_cast7_cast_fu_513_p1();
    void thread_co_cast7_fu_508_p1();
    void thread_exitcond4_fu_569_p2();
    void thread_exitcond5_fu_616_p2();
    void thread_exitcond6_fu_644_p2();
    void thread_exitcond7_fu_685_p2();
    void thread_exitcond_fu_762_p2();
    void thread_h_4_fu_658_p2();
    void thread_h_cast6_cast_fu_581_p1();
    void thread_m_4_fu_691_p2();
    void thread_m_cast4_cast_fu_664_p1();
    void thread_n_4_fu_768_p2();
    void thread_n_cast3_cast_fu_748_p1();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl1_cast_fu_559_p1();
    void thread_p_shl2_cast_fu_525_p1();
    void thread_p_shl3_cast_fu_590_p3();
    void thread_p_shl4_cast_fu_606_p1();
    void thread_p_shl6_cast_fu_720_p1();
    void thread_p_shl7_cast_fu_732_p1();
    void thread_p_shl_cast_fu_547_p1();
    void thread_tmp1_cast_fu_703_p1();
    void thread_tmp1_fu_697_p2();
    void thread_tmp2_cast_fu_780_p1();
    void thread_tmp2_fu_774_p2();
    void thread_tmp_1_cast_cast_fu_789_p1();
    void thread_tmp_1_fu_784_p2();
    void thread_tmp_27_fu_598_p3();
    void thread_tmp_28_fu_673_p2();
    void thread_tmp_67_fu_517_p3();
    void thread_tmp_68_fu_529_p2();
    void thread_tmp_69_fu_539_p3();
    void thread_tmp_70_fu_551_p3();
    void thread_tmp_71_fu_563_p2();
    void thread_tmp_72_fu_585_p2();
    void thread_tmp_73_fu_610_p2();
    void thread_tmp_74_fu_634_p2();
    void thread_tmp_75_fu_668_p2();
    void thread_tmp_76_fu_679_p2();
    void thread_tmp_77_fu_712_p3();
    void thread_tmp_78_fu_724_p3();
    void thread_tmp_79_fu_736_p2();
    void thread_tmp_80_fu_752_p2();
    void thread_tmp_81_fu_793_p2();
    void thread_tmp_82_cast_fu_535_p1();
    void thread_tmp_8_fu_707_p2();
    void thread_tmp_90_cast_fu_639_p1();
    void thread_tmp_97_cast_fu_757_p1();
    void thread_tmp_98_cast_fu_798_p1();
    void thread_tmp_fu_622_p3();
    void thread_tmp_s_fu_650_p3();
    void thread_w_4_fu_742_p2();
    void thread_w_cast5_cast_fu_630_p1();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
