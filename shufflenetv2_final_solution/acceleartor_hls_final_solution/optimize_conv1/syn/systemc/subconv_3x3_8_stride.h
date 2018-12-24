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


namespace ap_rtl {

struct subconv_3x3_8_stride : public sc_module {
    // Port declarations 19
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
    sc_out< sc_lv<14> > shuffleunit1_7_outpu_address0;
    sc_out< sc_logic > shuffleunit1_7_outpu_ce0;
    sc_in< sc_lv<8> > shuffleunit1_7_outpu_q0;


    // Module declarations
    subconv_3x3_8_stride(sc_module_name name);
    SC_HAS_PROCESS(subconv_3x3_8_stride);

    ~subconv_3x3_8_stride();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > co_1_fu_228_p2;
    sc_signal< sc_lv<7> > co_1_reg_849;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_43_cast_fu_261_p1;
    sc_signal< sc_lv<11> > tmp_43_cast_reg_854;
    sc_signal< sc_lv<1> > exitcond1_fu_222_p2;
    sc_signal< sc_lv<12> > tmp_46_cast_fu_295_p1;
    sc_signal< sc_lv<12> > tmp_46_cast_reg_859;
    sc_signal< sc_lv<11> > tmp_40_fu_299_p2;
    sc_signal< sc_lv<11> > tmp_40_reg_864;
    sc_signal< sc_lv<7> > bias_V_addr_reg_869;
    sc_signal< sc_lv<4> > tmp_2_fu_311_p3;
    sc_signal< sc_lv<4> > tmp_2_reg_877;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond2_fu_305_p2;
    sc_signal< sc_lv<13> > tmp_43_fu_348_p2;
    sc_signal< sc_lv<13> > tmp_43_reg_882;
    sc_signal< sc_lv<4> > tmp_5_fu_360_p3;
    sc_signal< sc_lv<4> > tmp_5_reg_890;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond3_fu_354_p2;
    sc_signal< sc_lv<3> > h_1_fu_368_p2;
    sc_signal< sc_lv<2> > m_1_fu_380_p2;
    sc_signal< sc_lv<2> > m_1_reg_903;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<11> > tmp_47_fu_401_p2;
    sc_signal< sc_lv<11> > tmp_47_reg_908;
    sc_signal< sc_lv<1> > exitcond4_fu_374_p2;
    sc_signal< sc_lv<15> > tmp_51_fu_455_p2;
    sc_signal< sc_lv<15> > tmp_51_reg_913;
    sc_signal< sc_lv<13> > tmp_44_fu_465_p2;
    sc_signal< sc_lv<13> > tmp_44_reg_918;
    sc_signal< sc_lv<3> > w_1_fu_470_p2;
    sc_signal< sc_lv<3> > w_1_reg_923;
    sc_signal< sc_lv<2> > n_1_fu_482_p2;
    sc_signal< sc_lv<2> > n_1_reg_931;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond_fu_476_p2;
    sc_signal< sc_lv<8> > weight_V_load_reg_946;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<8> > shuffleunit1_7_outpu_1_reg_951;
    sc_signal< sc_lv<16> > p_Val2_5_fu_537_p2;
    sc_signal< sc_lv<16> > p_Val2_5_reg_956;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > tmp_55_reg_961;
    sc_signal< sc_lv<16> > p_Val2_6_fu_563_p2;
    sc_signal< sc_lv<16> > p_Val2_6_reg_966;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > signbit_reg_971;
    sc_signal< sc_lv<8> > p_Val2_8_fu_597_p2;
    sc_signal< sc_lv<8> > p_Val2_8_reg_978;
    sc_signal< sc_lv<1> > newsignbit_fu_603_p3;
    sc_signal< sc_lv<1> > newsignbit_reg_984;
    sc_signal< sc_lv<1> > carry_fu_617_p2;
    sc_signal< sc_lv<1> > carry_reg_990;
    sc_signal< sc_lv<2> > tmp_24_reg_997;
    sc_signal< sc_lv<1> > p_38_i_i_fu_675_p2;
    sc_signal< sc_lv<1> > p_38_i_i_reg_1003;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_25_fu_691_p2;
    sc_signal< sc_lv<1> > tmp_25_reg_1008;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_fu_702_p2;
    sc_signal< sc_lv<1> > brmerge40_demorgan_i_reg_1013;
    sc_signal< sc_lv<1> > underflow_fu_719_p2;
    sc_signal< sc_lv<1> > underflow_reg_1018;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_724_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_reg_1023;
    sc_signal< sc_lv<8> > sum_V_fu_751_p3;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > isneg_reg_1033;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > result_V_fu_781_p2;
    sc_signal< sc_lv<8> > result_V_reg_1040;
    sc_signal< sc_lv<1> > newsignbit_2_reg_1046;
    sc_signal< sc_lv<7> > co_reg_141;
    sc_signal< sc_lv<3> > h_reg_152;
    sc_signal< sc_lv<3> > w_reg_164;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > p_Val2_s_reg_176;
    sc_signal< sc_lv<2> > m_reg_188;
    sc_signal< sc_lv<8> > p_Val2_4_reg_199;
    sc_signal< sc_lv<2> > n_reg_211;
    sc_signal< sc_lv<64> > tmp_fu_234_p1;
    sc_signal< sc_lv<64> > tmp_62_cast_fu_497_p1;
    sc_signal< sc_lv<64> > tmp_63_cast_fu_526_p1;
    sc_signal< sc_lv<64> > tmp_54_cast_fu_842_p1;
    sc_signal< sc_lv<9> > tmp_s_fu_243_p3;
    sc_signal< sc_lv<10> > p_shl4_cast_fu_251_p1;
    sc_signal< sc_lv<10> > tmp_cast_fu_239_p1;
    sc_signal< sc_lv<10> > tmp_36_fu_255_p2;
    sc_signal< sc_lv<10> > tmp_37_fu_265_p3;
    sc_signal< sc_lv<8> > tmp_38_fu_277_p3;
    sc_signal< sc_lv<11> > p_shl2_cast_fu_273_p1;
    sc_signal< sc_lv<11> > p_shl3_cast_fu_285_p1;
    sc_signal< sc_lv<11> > tmp_39_fu_289_p2;
    sc_signal< sc_lv<12> > tmp_3_cast_fu_319_p1;
    sc_signal< sc_lv<12> > tmp_41_fu_323_p2;
    sc_signal< sc_lv<10> > tmp_42_fu_328_p1;
    sc_signal< sc_lv<13> > p_shl5_cast_fu_332_p3;
    sc_signal< sc_lv<13> > p_shl6_cast_fu_340_p3;
    sc_signal< sc_lv<11> > tmp_1_cast_fu_386_p1;
    sc_signal< sc_lv<11> > tmp_45_fu_390_p2;
    sc_signal< sc_lv<11> > tmp_46_fu_395_p2;
    sc_signal< sc_lv<2> > tmp2_fu_407_p2;
    sc_signal< sc_lv<4> > tmp2_cast_fu_413_p1;
    sc_signal< sc_lv<4> > tmp_8_fu_417_p2;
    sc_signal< sc_lv<11> > tmp_10_cast_fu_422_p1;
    sc_signal< sc_lv<11> > tmp_48_fu_426_p2;
    sc_signal< sc_lv<14> > tmp_49_fu_431_p3;
    sc_signal< sc_lv<12> > tmp_50_fu_443_p3;
    sc_signal< sc_lv<15> > p_shl8_cast_fu_451_p1;
    sc_signal< sc_lv<15> > p_shl7_cast_fu_439_p1;
    sc_signal< sc_lv<13> > tmp_cast_28_fu_461_p1;
    sc_signal< sc_lv<11> > tmp_13_cast_fu_488_p1;
    sc_signal< sc_lv<11> > tmp_52_fu_492_p2;
    sc_signal< sc_lv<2> > tmp3_fu_502_p2;
    sc_signal< sc_lv<4> > tmp3_cast_fu_508_p1;
    sc_signal< sc_lv<4> > tmp_15_fu_512_p2;
    sc_signal< sc_lv<15> > tmp_16_cast_fu_517_p1;
    sc_signal< sc_lv<15> > tmp_53_fu_521_p2;
    sc_signal< sc_lv<8> > p_Val2_5_fu_537_p0;
    sc_signal< sc_lv<8> > p_Val2_5_fu_537_p1;
    sc_signal< sc_lv<14> > tmp_18_fu_551_p3;
    sc_signal< sc_lv<16> > tmp_18_cast_fu_559_p1;
    sc_signal< sc_lv<8> > p_Val2_7_fu_576_p4;
    sc_signal< sc_lv<8> > tmp_21_fu_586_p1;
    sc_signal< sc_lv<1> > tmp_56_fu_589_p3;
    sc_signal< sc_lv<1> > tmp_22_fu_611_p2;
    sc_signal< sc_lv<1> > Range1_all_ones_fu_640_p2;
    sc_signal< sc_lv<1> > Range1_all_zeros_fu_645_p2;
    sc_signal< sc_lv<1> > tmp_58_fu_633_p3;
    sc_signal< sc_lv<1> > tmp_23_fu_657_p2;
    sc_signal< sc_lv<1> > p_41_i_i_fu_663_p2;
    sc_signal< sc_lv<1> > deleted_zeros_fu_650_p3;
    sc_signal< sc_lv<1> > p_not_i_i_fu_680_p2;
    sc_signal< sc_lv<1> > brmerge_i_i1_fu_686_p2;
    sc_signal< sc_lv<1> > deleted_ones_fu_668_p3;
    sc_signal< sc_lv<1> > tmp4_demorgan_fu_707_p2;
    sc_signal< sc_lv<1> > tmp4_fu_713_p2;
    sc_signal< sc_lv<1> > overflow_fu_696_p2;
    sc_signal< sc_lv<1> > tmp5_fu_730_p2;
    sc_signal< sc_lv<1> > underflow_not_fu_734_p2;
    sc_signal< sc_lv<8> > p_Val2_8_mux_fu_739_p3;
    sc_signal< sc_lv<8> > p_Val2_8_27_fu_745_p3;
    sc_signal< sc_lv<9> > tmp_6_fu_759_p1;
    sc_signal< sc_lv<9> > tmp_7_fu_763_p1;
    sc_signal< sc_lv<9> > p_Val2_2_fu_767_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_795_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_809_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_805_p2;
    sc_signal< sc_lv<1> > underflow_2_fu_800_p2;
    sc_signal< sc_lv<1> > brmerge9_fu_814_p2;
    sc_signal< sc_lv<8> > result_V_mux_fu_819_p3;
    sc_signal< sc_lv<8> > p_result_V_fu_826_p3;
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
    void thread_Range1_all_ones_fu_640_p2();
    void thread_Range1_all_zeros_fu_645_p2();
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
    void thread_brmerge40_demorgan_i_fu_702_p2();
    void thread_brmerge9_fu_814_p2();
    void thread_brmerge_i_i1_fu_686_p2();
    void thread_brmerge_i_i_fu_805_p2();
    void thread_brmerge_i_i_i_fu_724_p2();
    void thread_carry_fu_617_p2();
    void thread_co_1_fu_228_p2();
    void thread_deleted_ones_fu_668_p3();
    void thread_deleted_zeros_fu_650_p3();
    void thread_exitcond1_fu_222_p2();
    void thread_exitcond2_fu_305_p2();
    void thread_exitcond3_fu_354_p2();
    void thread_exitcond4_fu_374_p2();
    void thread_exitcond_fu_476_p2();
    void thread_h_1_fu_368_p2();
    void thread_isneg_not_fu_809_p2();
    void thread_m_1_fu_380_p2();
    void thread_n_1_fu_482_p2();
    void thread_newsignbit_fu_603_p3();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_overflow_fu_696_p2();
    void thread_p_38_i_i_fu_675_p2();
    void thread_p_41_i_i_fu_663_p2();
    void thread_p_Val2_2_fu_767_p2();
    void thread_p_Val2_5_fu_537_p0();
    void thread_p_Val2_5_fu_537_p1();
    void thread_p_Val2_5_fu_537_p2();
    void thread_p_Val2_6_fu_563_p2();
    void thread_p_Val2_7_fu_576_p4();
    void thread_p_Val2_8_27_fu_745_p3();
    void thread_p_Val2_8_fu_597_p2();
    void thread_p_Val2_8_mux_fu_739_p3();
    void thread_p_not_i_i_fu_680_p2();
    void thread_p_result_V_fu_826_p3();
    void thread_p_shl2_cast_fu_273_p1();
    void thread_p_shl3_cast_fu_285_p1();
    void thread_p_shl4_cast_fu_251_p1();
    void thread_p_shl5_cast_fu_332_p3();
    void thread_p_shl6_cast_fu_340_p3();
    void thread_p_shl7_cast_fu_439_p1();
    void thread_p_shl8_cast_fu_451_p1();
    void thread_result_V_fu_781_p2();
    void thread_result_V_mux_fu_819_p3();
    void thread_shuffleunit1_7_outpu_address0();
    void thread_shuffleunit1_7_outpu_ce0();
    void thread_sum_V_fu_751_p3();
    void thread_tmp2_cast_fu_413_p1();
    void thread_tmp2_fu_407_p2();
    void thread_tmp3_cast_fu_508_p1();
    void thread_tmp3_fu_502_p2();
    void thread_tmp4_demorgan_fu_707_p2();
    void thread_tmp4_fu_713_p2();
    void thread_tmp5_fu_730_p2();
    void thread_tmp_10_cast_fu_422_p1();
    void thread_tmp_12_fu_795_p2();
    void thread_tmp_13_cast_fu_488_p1();
    void thread_tmp_15_fu_512_p2();
    void thread_tmp_16_cast_fu_517_p1();
    void thread_tmp_18_cast_fu_559_p1();
    void thread_tmp_18_fu_551_p3();
    void thread_tmp_1_cast_fu_386_p1();
    void thread_tmp_21_fu_586_p1();
    void thread_tmp_22_fu_611_p2();
    void thread_tmp_23_fu_657_p2();
    void thread_tmp_25_fu_691_p2();
    void thread_tmp_2_fu_311_p3();
    void thread_tmp_36_fu_255_p2();
    void thread_tmp_37_fu_265_p3();
    void thread_tmp_38_fu_277_p3();
    void thread_tmp_39_fu_289_p2();
    void thread_tmp_3_cast_fu_319_p1();
    void thread_tmp_40_fu_299_p2();
    void thread_tmp_41_fu_323_p2();
    void thread_tmp_42_fu_328_p1();
    void thread_tmp_43_cast_fu_261_p1();
    void thread_tmp_43_fu_348_p2();
    void thread_tmp_44_fu_465_p2();
    void thread_tmp_45_fu_390_p2();
    void thread_tmp_46_cast_fu_295_p1();
    void thread_tmp_46_fu_395_p2();
    void thread_tmp_47_fu_401_p2();
    void thread_tmp_48_fu_426_p2();
    void thread_tmp_49_fu_431_p3();
    void thread_tmp_50_fu_443_p3();
    void thread_tmp_51_fu_455_p2();
    void thread_tmp_52_fu_492_p2();
    void thread_tmp_53_fu_521_p2();
    void thread_tmp_54_cast_fu_842_p1();
    void thread_tmp_56_fu_589_p3();
    void thread_tmp_58_fu_633_p3();
    void thread_tmp_5_fu_360_p3();
    void thread_tmp_62_cast_fu_497_p1();
    void thread_tmp_63_cast_fu_526_p1();
    void thread_tmp_6_fu_759_p1();
    void thread_tmp_7_fu_763_p1();
    void thread_tmp_8_fu_417_p2();
    void thread_tmp_cast_28_fu_461_p1();
    void thread_tmp_cast_fu_239_p1();
    void thread_tmp_fu_234_p1();
    void thread_tmp_s_fu_243_p3();
    void thread_underflow_2_fu_800_p2();
    void thread_underflow_fu_719_p2();
    void thread_underflow_not_fu_734_p2();
    void thread_w_1_fu_470_p2();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
