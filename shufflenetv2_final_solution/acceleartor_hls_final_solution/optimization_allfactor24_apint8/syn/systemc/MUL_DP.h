// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _MUL_DP_HH_
#define _MUL_DP_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mul_dEe.h"

namespace ap_rtl {

struct MUL_DP : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > a_V;
    sc_in< sc_lv<8> > b_V;
    sc_in< sc_lv<8> > w_V;
    sc_out< sc_lv<16> > ap_return_0;
    sc_out< sc_lv<16> > ap_return_1;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    MUL_DP(sc_module_name name);
    SC_HAS_PROCESS(MUL_DP);

    ~MUL_DP();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mul_dEe<1,2,8,26,33>* ShuffleNetV2_mul_dEe_U7;
    sc_signal< sc_lv<8> > w_V_read_reg_127;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<26> > r_V_fu_68_p2;
    sc_signal< sc_lv<26> > r_V_reg_132;
    sc_signal< sc_lv<1> > tmp_1710_reg_147;
    sc_signal< sc_lv<16> > p_Result_s_reg_152;
    sc_signal< sc_lv<16> > loc_V_1_fu_104_p1;
    sc_signal< sc_lv<16> > loc_V_1_reg_157;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<25> > p_Result_2_fu_52_p3;
    sc_signal< sc_lv<26> > rhs_V_fu_64_p1;
    sc_signal< sc_lv<26> > lhs_V_fu_60_p1;
    sc_signal< sc_lv<33> > grp_fu_80_p2;
    sc_signal< sc_lv<16> > tmp_309_fu_108_p1;
    sc_signal< sc_lv<16> > loc_V_fu_111_p2;
    sc_signal< sc_logic > grp_fu_80_ce;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_20;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_grp_fu_80_ce();
    void thread_lhs_V_fu_60_p1();
    void thread_loc_V_1_fu_104_p1();
    void thread_loc_V_fu_111_p2();
    void thread_p_Result_2_fu_52_p3();
    void thread_r_V_fu_68_p2();
    void thread_rhs_V_fu_64_p1();
    void thread_tmp_309_fu_108_p1();
};

}

using namespace ap_rtl;

#endif
