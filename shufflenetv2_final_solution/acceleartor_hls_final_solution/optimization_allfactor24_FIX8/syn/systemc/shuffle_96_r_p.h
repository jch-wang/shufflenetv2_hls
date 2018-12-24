// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shuffle_96_r_p_HH_
#define _shuffle_96_r_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_uremkbM.h"
#include "ShuffleNetV2_mux_lbW.h"

namespace ap_rtl {

struct shuffle_96_r_p : public sc_module {
    // Port declarations 82
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<13> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_24_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_24_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_24_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_1_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_1_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_1_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_2_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_2_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_2_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_3_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_3_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_3_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_4_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_4_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_4_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_5_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_5_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_5_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_6_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_6_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_6_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_7_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_7_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_7_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_8_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_8_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_8_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_9_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_9_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_9_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_10_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_10_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_10_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_11_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_11_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_11_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_12_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_12_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_12_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_13_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_13_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_13_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_14_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_14_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_14_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_15_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_15_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_15_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_16_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_16_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_16_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_17_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_17_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_17_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_18_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_18_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_18_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_19_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_19_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_19_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_20_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_20_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_20_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_21_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_21_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_21_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_22_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_22_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_22_q0;
    sc_out< sc_lv<8> > buffer1_1_96_4x4_p_V_23_address0;
    sc_out< sc_logic > buffer1_1_96_4x4_p_V_23_ce0;
    sc_in< sc_lv<8> > buffer1_1_96_4x4_p_V_23_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    shuffle_96_r_p(sc_module_name name);
    SC_HAS_PROCESS(shuffle_96_r_p);

    ~shuffle_96_r_p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_uremkbM<1,11,7,6,7>* ShuffleNetV2_uremkbM_x_U664;
    ShuffleNetV2_mux_lbW<1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,9,8>* ShuffleNetV2_mux_lbW_x_U665;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > tmp_2031_fu_436_p1;
    sc_signal< sc_lv<1> > tmp_2031_reg_768;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<13> > tmp_531_cast_fu_470_p1;
    sc_signal< sc_lv<13> > tmp_531_cast_reg_772;
    sc_signal< sc_lv<8> > co_24_fu_480_p2;
    sc_signal< sc_lv<8> > co_24_reg_780;
    sc_signal< sc_lv<7> > p_lshr_f_cast_fu_486_p4;
    sc_signal< sc_lv<1> > exitcond3_fu_474_p2;
    sc_signal< sc_lv<4> > tmp_2032_reg_790;
    sc_signal< sc_lv<9> > arrayNo_cast_fu_522_p1;
    sc_signal< sc_lv<9> > arrayNo_cast_reg_796;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<12> > tmp_536_cast_fu_562_p1;
    sc_signal< sc_lv<12> > tmp_536_cast_reg_801;
    sc_signal< sc_lv<14> > tmp_485_fu_599_p2;
    sc_signal< sc_lv<14> > tmp_485_reg_806;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<9> > tmp_487_fu_634_p2;
    sc_signal< sc_lv<9> > tmp_487_reg_811;
    sc_signal< sc_lv<3> > h_24_fu_646_p2;
    sc_signal< sc_lv<3> > h_24_reg_819;
    sc_signal< sc_lv<13> > output_V_addr_reg_824;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<3> > w_34_fu_709_p2;
    sc_signal< sc_lv<3> > w_34_reg_952;
    sc_signal< sc_lv<8> > tmp_fu_715_p26;
    sc_signal< sc_lv<8> > tmp_reg_957;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<8> > co_reg_403;
    sc_signal< sc_lv<1> > exitcond2_fu_640_p2;
    sc_signal< sc_lv<3> > h_reg_414;
    sc_signal< sc_lv<1> > exitcond_fu_703_p2;
    sc_signal< sc_lv<3> > w_reg_425;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > tmp_545_cast_fu_665_p1;
    sc_signal< sc_lv<32> > tmp_546_cast_fu_675_p1;
    sc_signal< sc_lv<11> > tmp_s_fu_440_p3;
    sc_signal< sc_lv<9> > tmp_479_fu_452_p3;
    sc_signal< sc_lv<12> > p_shl_cast_fu_448_p1;
    sc_signal< sc_lv<12> > p_shl1_cast_fu_460_p1;
    sc_signal< sc_lv<12> > tmp_480_fu_464_p2;
    sc_signal< sc_lv<7> > grp_fu_496_p0;
    sc_signal< sc_lv<6> > grp_fu_496_p1;
    sc_signal< sc_lv<7> > mul_fu_506_p0;
    sc_signal< sc_lv<16> > mul_fu_506_p2;
    sc_signal< sc_lv<7> > grp_fu_496_p2;
    sc_signal< sc_lv<7> > tmp_2033_fu_526_p3;
    sc_signal< sc_lv<10> > tmp_481_fu_533_p1;
    sc_signal< sc_lv<5> > tmp_2034_fu_541_p3;
    sc_signal< sc_lv<8> > tmp_482_fu_548_p1;
    sc_signal< sc_lv<11> > p_shl2_cast_fu_537_p1;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_552_p1;
    sc_signal< sc_lv<11> > tmp_483_fu_556_p2;
    sc_signal< sc_lv<13> > h_cast2_cast_fu_570_p1;
    sc_signal< sc_lv<13> > tmp_484_fu_574_p2;
    sc_signal< sc_lv<11> > tmp_2035_fu_579_p1;
    sc_signal< sc_lv<14> > p_shl6_cast_fu_583_p3;
    sc_signal< sc_lv<14> > p_shl7_cast_fu_591_p3;
    sc_signal< sc_lv<12> > h_cast2_cast9_fu_566_p1;
    sc_signal< sc_lv<12> > tmp_486_fu_605_p2;
    sc_signal< sc_lv<6> > tmp_2036_fu_610_p1;
    sc_signal< sc_lv<8> > tmp_2037_fu_622_p1;
    sc_signal< sc_lv<9> > p_shl4_cast_fu_614_p3;
    sc_signal< sc_lv<9> > p_shl5_cast_fu_626_p3;
    sc_signal< sc_lv<14> > w_cast1_cast_fu_656_p1;
    sc_signal< sc_lv<14> > tmp_488_fu_660_p2;
    sc_signal< sc_lv<9> > w_cast1_cast8_fu_652_p1;
    sc_signal< sc_lv<9> > tmp_489_fu_670_p2;
    sc_signal< sc_logic > grp_fu_496_ap_start;
    sc_signal< sc_logic > grp_fu_496_ap_done;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    sc_signal< sc_lv<16> > mul_fu_506_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<8> ap_const_lv8_C0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<7> ap_const_lv7_18;
    static const sc_lv<16> ap_const_lv16_AB;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_arrayNo_cast_fu_522_p1();
    void thread_buffer1_1_96_4x4_p_V_10_address0();
    void thread_buffer1_1_96_4x4_p_V_10_ce0();
    void thread_buffer1_1_96_4x4_p_V_11_address0();
    void thread_buffer1_1_96_4x4_p_V_11_ce0();
    void thread_buffer1_1_96_4x4_p_V_12_address0();
    void thread_buffer1_1_96_4x4_p_V_12_ce0();
    void thread_buffer1_1_96_4x4_p_V_13_address0();
    void thread_buffer1_1_96_4x4_p_V_13_ce0();
    void thread_buffer1_1_96_4x4_p_V_14_address0();
    void thread_buffer1_1_96_4x4_p_V_14_ce0();
    void thread_buffer1_1_96_4x4_p_V_15_address0();
    void thread_buffer1_1_96_4x4_p_V_15_ce0();
    void thread_buffer1_1_96_4x4_p_V_16_address0();
    void thread_buffer1_1_96_4x4_p_V_16_ce0();
    void thread_buffer1_1_96_4x4_p_V_17_address0();
    void thread_buffer1_1_96_4x4_p_V_17_ce0();
    void thread_buffer1_1_96_4x4_p_V_18_address0();
    void thread_buffer1_1_96_4x4_p_V_18_ce0();
    void thread_buffer1_1_96_4x4_p_V_19_address0();
    void thread_buffer1_1_96_4x4_p_V_19_ce0();
    void thread_buffer1_1_96_4x4_p_V_1_address0();
    void thread_buffer1_1_96_4x4_p_V_1_ce0();
    void thread_buffer1_1_96_4x4_p_V_20_address0();
    void thread_buffer1_1_96_4x4_p_V_20_ce0();
    void thread_buffer1_1_96_4x4_p_V_21_address0();
    void thread_buffer1_1_96_4x4_p_V_21_ce0();
    void thread_buffer1_1_96_4x4_p_V_22_address0();
    void thread_buffer1_1_96_4x4_p_V_22_ce0();
    void thread_buffer1_1_96_4x4_p_V_23_address0();
    void thread_buffer1_1_96_4x4_p_V_23_ce0();
    void thread_buffer1_1_96_4x4_p_V_24_address0();
    void thread_buffer1_1_96_4x4_p_V_24_ce0();
    void thread_buffer1_1_96_4x4_p_V_2_address0();
    void thread_buffer1_1_96_4x4_p_V_2_ce0();
    void thread_buffer1_1_96_4x4_p_V_3_address0();
    void thread_buffer1_1_96_4x4_p_V_3_ce0();
    void thread_buffer1_1_96_4x4_p_V_4_address0();
    void thread_buffer1_1_96_4x4_p_V_4_ce0();
    void thread_buffer1_1_96_4x4_p_V_5_address0();
    void thread_buffer1_1_96_4x4_p_V_5_ce0();
    void thread_buffer1_1_96_4x4_p_V_6_address0();
    void thread_buffer1_1_96_4x4_p_V_6_ce0();
    void thread_buffer1_1_96_4x4_p_V_7_address0();
    void thread_buffer1_1_96_4x4_p_V_7_ce0();
    void thread_buffer1_1_96_4x4_p_V_8_address0();
    void thread_buffer1_1_96_4x4_p_V_8_ce0();
    void thread_buffer1_1_96_4x4_p_V_9_address0();
    void thread_buffer1_1_96_4x4_p_V_9_ce0();
    void thread_co_24_fu_480_p2();
    void thread_exitcond2_fu_640_p2();
    void thread_exitcond3_fu_474_p2();
    void thread_exitcond_fu_703_p2();
    void thread_grp_fu_496_ap_start();
    void thread_grp_fu_496_p0();
    void thread_grp_fu_496_p1();
    void thread_h_24_fu_646_p2();
    void thread_h_cast2_cast9_fu_566_p1();
    void thread_h_cast2_cast_fu_570_p1();
    void thread_mul_fu_506_p0();
    void thread_mul_fu_506_p00();
    void thread_mul_fu_506_p2();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_lshr_f_cast_fu_486_p4();
    void thread_p_shl1_cast_fu_460_p1();
    void thread_p_shl2_cast_fu_537_p1();
    void thread_p_shl3_cast_fu_552_p1();
    void thread_p_shl4_cast_fu_614_p3();
    void thread_p_shl5_cast_fu_626_p3();
    void thread_p_shl6_cast_fu_583_p3();
    void thread_p_shl7_cast_fu_591_p3();
    void thread_p_shl_cast_fu_448_p1();
    void thread_tmp_2031_fu_436_p1();
    void thread_tmp_2033_fu_526_p3();
    void thread_tmp_2034_fu_541_p3();
    void thread_tmp_2035_fu_579_p1();
    void thread_tmp_2036_fu_610_p1();
    void thread_tmp_2037_fu_622_p1();
    void thread_tmp_479_fu_452_p3();
    void thread_tmp_480_fu_464_p2();
    void thread_tmp_481_fu_533_p1();
    void thread_tmp_482_fu_548_p1();
    void thread_tmp_483_fu_556_p2();
    void thread_tmp_484_fu_574_p2();
    void thread_tmp_485_fu_599_p2();
    void thread_tmp_486_fu_605_p2();
    void thread_tmp_487_fu_634_p2();
    void thread_tmp_488_fu_660_p2();
    void thread_tmp_489_fu_670_p2();
    void thread_tmp_531_cast_fu_470_p1();
    void thread_tmp_536_cast_fu_562_p1();
    void thread_tmp_545_cast_fu_665_p1();
    void thread_tmp_546_cast_fu_675_p1();
    void thread_tmp_s_fu_440_p3();
    void thread_w_34_fu_709_p2();
    void thread_w_cast1_cast8_fu_652_p1();
    void thread_w_cast1_cast_fu_656_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
