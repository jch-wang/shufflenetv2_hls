// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_24_l_p_HH_
#define _shuffle_24_l_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_dEe.h"

namespace ap_rtl {

struct shuffle_24_l_p : public sc_module {
    // Port declarations 82
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > output_V_address0;
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
    shuffle_24_l_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_24_l_p);

    ~shuffle_24_l_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_dEe<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* ShuffleNetV2_mux_dEe_x_U140;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_2084_fu_426_p1;
    sc_signal< sc_lv<1> > tmp_2084_reg_675;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_582_fu_454_p2;
    sc_signal< sc_lv<11> > tmp_582_reg_679;
    sc_signal< sc_lv<6> > co_32_fu_466_p2;
    sc_signal< sc_lv<6> > co_32_reg_687;
    sc_signal< sc_lv<5> > tmp_48_reg_692;
    sc_signal< sc_lv<1> > exitcond3_fu_460_p2;
    sc_signal< sc_lv<15> > tmp_584_fu_511_p2;
    sc_signal< sc_lv<15> > tmp_584_reg_697;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<10> > tmp_587_fu_541_p2;
    sc_signal< sc_lv<10> > tmp_587_reg_702;
    sc_signal< sc_lv<5> > h_32_fu_553_p2;
    sc_signal< sc_lv<5> > h_32_reg_710;
    sc_signal< sc_lv<14> > output_V_addr_reg_715;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > w_42_fu_616_p2;
    sc_signal< sc_lv<5> > w_42_reg_843;
    sc_signal< sc_lv<8> > tmp_fu_622_p26;
    sc_signal< sc_lv<8> > tmp_reg_848;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<6> > co_reg_393;
    sc_signal< sc_lv<1> > exitcond2_fu_547_p2;
    sc_signal< sc_lv<5> > h_reg_404;
    sc_signal< sc_lv<1> > exitcond_fu_610_p2;
    sc_signal< sc_lv<5> > w_reg_415;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > tmp_701_cast_fu_572_p1;
    sc_signal< sc_lv<32> > tmp_702_cast_fu_582_p1;
    sc_signal< sc_lv<10> > tmp_s_fu_430_p3;
    sc_signal< sc_lv<7> > tmp_581_fu_442_p3;
    sc_signal< sc_lv<11> > p_shl_cast_fu_438_p1;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_450_p1;
    sc_signal< sc_lv<11> > h_cast2_cast_fu_482_p1;
    sc_signal< sc_lv<11> > tmp_583_fu_486_p2;
    sc_signal< sc_lv<12> > tmp_2085_fu_499_p3;
    sc_signal< sc_lv<15> > p_shl4_cast_fu_491_p3;
    sc_signal< sc_lv<15> > p_shl5_cast_fu_507_p1;
    sc_signal< sc_lv<9> > tmp_585_fu_517_p3;
    sc_signal< sc_lv<6> > tmp_586_fu_529_p3;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_525_p1;
    sc_signal< sc_lv<10> > p_shl3_cast_fu_537_p1;
    sc_signal< sc_lv<15> > w_cast1_cast_fu_563_p1;
    sc_signal< sc_lv<15> > tmp_588_fu_567_p2;
    sc_signal< sc_lv<10> > w_cast1_cast6_fu_559_p1;
    sc_signal< sc_lv<10> > tmp_589_fu_577_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<5> ap_const_lv5_12;
    static const sc_lv<5> ap_const_lv5_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
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
    void thread_co_32_fu_466_p2();
    void thread_exitcond2_fu_547_p2();
    void thread_exitcond3_fu_460_p2();
    void thread_exitcond_fu_610_p2();
    void thread_h_32_fu_553_p2();
    void thread_h_cast2_cast_fu_482_p1();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_shl1_cast_fu_450_p1();
    void thread_p_shl2_cast_fu_525_p1();
    void thread_p_shl3_cast_fu_537_p1();
    void thread_p_shl4_cast_fu_491_p3();
    void thread_p_shl5_cast_fu_507_p1();
    void thread_p_shl_cast_fu_438_p1();
    void thread_tmp_2084_fu_426_p1();
    void thread_tmp_2085_fu_499_p3();
    void thread_tmp_581_fu_442_p3();
    void thread_tmp_582_fu_454_p2();
    void thread_tmp_583_fu_486_p2();
    void thread_tmp_584_fu_511_p2();
    void thread_tmp_585_fu_517_p3();
    void thread_tmp_586_fu_529_p3();
    void thread_tmp_587_fu_541_p2();
    void thread_tmp_588_fu_567_p2();
    void thread_tmp_589_fu_577_p2();
    void thread_tmp_701_cast_fu_572_p1();
    void thread_tmp_702_cast_fu_582_p1();
    void thread_tmp_s_fu_430_p3();
    void thread_w_42_fu_616_p2();
    void thread_w_cast1_cast6_fu_559_p1();
    void thread_w_cast1_cast_fu_563_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
