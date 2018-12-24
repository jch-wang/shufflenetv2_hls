// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_24_p_HH_
#define _shuffle_24_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_mux_dEe.h"

namespace ap_rtl {

struct shuffle_24_p : public sc_module {
    // Port declarations 85
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > left_V_address0;
    sc_out< sc_logic > left_V_ce0;
    sc_in< sc_lv<8> > left_V_q0;
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
    shuffle_24_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_24_p);

    ~shuffle_24_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_mux_dEe<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,5,8>* ShuffleNetV2_mux_dEe_x_U224;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_2081_fu_454_p1;
    sc_signal< sc_lv<1> > tmp_2081_reg_782;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_567_fu_482_p2;
    sc_signal< sc_lv<11> > tmp_567_reg_786;
    sc_signal< sc_lv<6> > co_31_fu_494_p2;
    sc_signal< sc_lv<6> > co_31_reg_794;
    sc_signal< sc_lv<5> > p_lshr_f_cast_fu_500_p4;
    sc_signal< sc_lv<5> > p_lshr_f_cast_reg_799;
    sc_signal< sc_lv<1> > exitcond5_fu_488_p2;
    sc_signal< sc_lv<10> > tmp_570_fu_534_p2;
    sc_signal< sc_lv<10> > tmp_570_reg_804;
    sc_signal< sc_lv<14> > tmp_572_fu_573_p2;
    sc_signal< sc_lv<14> > tmp_572_reg_809;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<15> > tmp_574_fu_604_p2;
    sc_signal< sc_lv<15> > tmp_574_reg_814;
    sc_signal< sc_lv<10> > tmp_577_fu_634_p2;
    sc_signal< sc_lv<10> > tmp_577_reg_819;
    sc_signal< sc_lv<5> > h_31_fu_646_p2;
    sc_signal< sc_lv<5> > h_31_reg_827;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<14> > output_V_addr_reg_837;
    sc_signal< sc_lv<5> > w_41_fu_723_p2;
    sc_signal< sc_lv<5> > w_41_reg_965;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > tmp_fu_729_p26;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > co_reg_411;
    sc_signal< sc_lv<1> > exitcond4_fu_640_p2;
    sc_signal< sc_lv<5> > h_reg_422;
    sc_signal< sc_lv<1> > exitcond_fu_717_p2;
    sc_signal< sc_lv<5> > w_reg_433;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > storemerge_reg_444;
    sc_signal< sc_lv<32> > tmp_688_cast_fu_669_p1;
    sc_signal< sc_lv<32> > tmp_689_cast_fu_679_p1;
    sc_signal< sc_lv<32> > tmp_690_cast_fu_689_p1;
    sc_signal< sc_lv<10> > tmp_s_fu_458_p3;
    sc_signal< sc_lv<7> > tmp_566_fu_470_p3;
    sc_signal< sc_lv<11> > p_shl_cast_fu_466_p1;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_478_p1;
    sc_signal< sc_lv<9> > tmp_568_fu_510_p3;
    sc_signal< sc_lv<6> > tmp_569_fu_522_p3;
    sc_signal< sc_lv<10> > p_shl3_cast_fu_530_p1;
    sc_signal< sc_lv<10> > p_shl2_cast_fu_518_p1;
    sc_signal< sc_lv<10> > h_cast2_cast_fu_544_p1;
    sc_signal< sc_lv<10> > tmp_571_fu_548_p2;
    sc_signal< sc_lv<11> > tmp_2082_fu_561_p3;
    sc_signal< sc_lv<14> > p_shl8_cast_fu_553_p3;
    sc_signal< sc_lv<14> > p_shl9_cast_fu_569_p1;
    sc_signal< sc_lv<11> > h_cast2_cast3_fu_540_p1;
    sc_signal< sc_lv<11> > tmp_573_fu_579_p2;
    sc_signal< sc_lv<12> > tmp_2083_fu_592_p3;
    sc_signal< sc_lv<15> > p_shl6_cast_fu_584_p3;
    sc_signal< sc_lv<15> > p_shl7_cast_fu_600_p1;
    sc_signal< sc_lv<9> > tmp_575_fu_610_p3;
    sc_signal< sc_lv<6> > tmp_576_fu_622_p3;
    sc_signal< sc_lv<10> > p_shl4_cast_fu_618_p1;
    sc_signal< sc_lv<10> > p_shl5_cast_fu_630_p1;
    sc_signal< sc_lv<14> > w_cast1_cast_fu_660_p1;
    sc_signal< sc_lv<14> > tmp_578_fu_664_p2;
    sc_signal< sc_lv<15> > w_cast1_cast6_fu_656_p1;
    sc_signal< sc_lv<15> > tmp_579_fu_674_p2;
    sc_signal< sc_lv<10> > w_cast1_cast5_fu_652_p1;
    sc_signal< sc_lv<10> > tmp_580_fu_684_p2;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_6;
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
    void thread_ap_CS_fsm_state7();
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
    void thread_co_31_fu_494_p2();
    void thread_exitcond4_fu_640_p2();
    void thread_exitcond5_fu_488_p2();
    void thread_exitcond_fu_717_p2();
    void thread_h_31_fu_646_p2();
    void thread_h_cast2_cast3_fu_540_p1();
    void thread_h_cast2_cast_fu_544_p1();
    void thread_left_V_address0();
    void thread_left_V_ce0();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_lshr_f_cast_fu_500_p4();
    void thread_p_shl1_cast_fu_478_p1();
    void thread_p_shl2_cast_fu_518_p1();
    void thread_p_shl3_cast_fu_530_p1();
    void thread_p_shl4_cast_fu_618_p1();
    void thread_p_shl5_cast_fu_630_p1();
    void thread_p_shl6_cast_fu_584_p3();
    void thread_p_shl7_cast_fu_600_p1();
    void thread_p_shl8_cast_fu_553_p3();
    void thread_p_shl9_cast_fu_569_p1();
    void thread_p_shl_cast_fu_466_p1();
    void thread_tmp_2081_fu_454_p1();
    void thread_tmp_2082_fu_561_p3();
    void thread_tmp_2083_fu_592_p3();
    void thread_tmp_566_fu_470_p3();
    void thread_tmp_567_fu_482_p2();
    void thread_tmp_568_fu_510_p3();
    void thread_tmp_569_fu_522_p3();
    void thread_tmp_570_fu_534_p2();
    void thread_tmp_571_fu_548_p2();
    void thread_tmp_572_fu_573_p2();
    void thread_tmp_573_fu_579_p2();
    void thread_tmp_574_fu_604_p2();
    void thread_tmp_575_fu_610_p3();
    void thread_tmp_576_fu_622_p3();
    void thread_tmp_577_fu_634_p2();
    void thread_tmp_578_fu_664_p2();
    void thread_tmp_579_fu_674_p2();
    void thread_tmp_580_fu_684_p2();
    void thread_tmp_688_cast_fu_669_p1();
    void thread_tmp_689_cast_fu_679_p1();
    void thread_tmp_690_cast_fu_689_p1();
    void thread_tmp_s_fu_458_p3();
    void thread_w_41_fu_723_p2();
    void thread_w_cast1_cast5_fu_652_p1();
    void thread_w_cast1_cast6_fu_656_p1();
    void thread_w_cast1_cast_fu_660_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
