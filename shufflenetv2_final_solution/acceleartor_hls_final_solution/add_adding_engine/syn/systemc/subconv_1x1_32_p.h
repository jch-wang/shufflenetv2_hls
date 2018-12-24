// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_1x1_32_p_HH_
#define _subconv_1x1_32_p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "COMPUTE_ENGINE.h"
#include "ShuffleNetV2_mux_jbC.h"

namespace ap_rtl {

struct subconv_1x1_32_p : public sc_module {
    // Port declarations 110
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > weight_0_V_address0;
    sc_out< sc_logic > weight_0_V_ce0;
    sc_in< sc_lv<8> > weight_0_V_q0;
    sc_out< sc_lv<7> > weight_0_V_address1;
    sc_out< sc_logic > weight_0_V_ce1;
    sc_in< sc_lv<8> > weight_0_V_q1;
    sc_out< sc_lv<7> > weight_1_V_address0;
    sc_out< sc_logic > weight_1_V_ce0;
    sc_in< sc_lv<8> > weight_1_V_q0;
    sc_out< sc_lv<7> > weight_1_V_address1;
    sc_out< sc_logic > weight_1_V_ce1;
    sc_in< sc_lv<8> > weight_1_V_q1;
    sc_out< sc_lv<7> > weight_2_V_address0;
    sc_out< sc_logic > weight_2_V_ce0;
    sc_in< sc_lv<8> > weight_2_V_q0;
    sc_out< sc_lv<7> > weight_2_V_address1;
    sc_out< sc_logic > weight_2_V_ce1;
    sc_in< sc_lv<8> > weight_2_V_q1;
    sc_out< sc_lv<7> > weight_3_V_address0;
    sc_out< sc_logic > weight_3_V_ce0;
    sc_in< sc_lv<8> > weight_3_V_q0;
    sc_out< sc_lv<7> > weight_3_V_address1;
    sc_out< sc_logic > weight_3_V_ce1;
    sc_in< sc_lv<8> > weight_3_V_q1;
    sc_out< sc_lv<7> > weight_4_V_address0;
    sc_out< sc_logic > weight_4_V_ce0;
    sc_in< sc_lv<8> > weight_4_V_q0;
    sc_out< sc_lv<7> > weight_4_V_address1;
    sc_out< sc_logic > weight_4_V_ce1;
    sc_in< sc_lv<8> > weight_4_V_q1;
    sc_out< sc_lv<7> > weight_5_V_address0;
    sc_out< sc_logic > weight_5_V_ce0;
    sc_in< sc_lv<8> > weight_5_V_q0;
    sc_out< sc_lv<7> > weight_5_V_address1;
    sc_out< sc_logic > weight_5_V_ce1;
    sc_in< sc_lv<8> > weight_5_V_q1;
    sc_out< sc_lv<7> > weight_6_V_address0;
    sc_out< sc_logic > weight_6_V_ce0;
    sc_in< sc_lv<8> > weight_6_V_q0;
    sc_out< sc_lv<7> > weight_6_V_address1;
    sc_out< sc_logic > weight_6_V_ce1;
    sc_in< sc_lv<8> > weight_6_V_q1;
    sc_out< sc_lv<7> > weight_7_V_address0;
    sc_out< sc_logic > weight_7_V_ce0;
    sc_in< sc_lv<8> > weight_7_V_q0;
    sc_out< sc_lv<7> > weight_7_V_address1;
    sc_out< sc_logic > weight_7_V_ce1;
    sc_in< sc_lv<8> > weight_7_V_q1;
    sc_out< sc_lv<5> > bias_V_address0;
    sc_out< sc_logic > bias_V_ce0;
    sc_in< sc_lv<8> > bias_V_q0;
    sc_out< sc_lv<15> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<8> > output_V_d0;
    sc_in< sc_lv<8> > output_V_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_0_address0;
    sc_out< sc_logic > conv1_output_p_V_0_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_0_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_0_address1;
    sc_out< sc_logic > conv1_output_p_V_0_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_0_q1;
    sc_out< sc_lv<12> > conv1_output_p_V_1_address0;
    sc_out< sc_logic > conv1_output_p_V_1_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_1_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_1_address1;
    sc_out< sc_logic > conv1_output_p_V_1_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_1_q1;
    sc_out< sc_lv<12> > conv1_output_p_V_2_address0;
    sc_out< sc_logic > conv1_output_p_V_2_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_2_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_2_address1;
    sc_out< sc_logic > conv1_output_p_V_2_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_2_q1;
    sc_out< sc_lv<12> > conv1_output_p_V_3_address0;
    sc_out< sc_logic > conv1_output_p_V_3_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_3_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_3_address1;
    sc_out< sc_logic > conv1_output_p_V_3_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_3_q1;
    sc_out< sc_lv<12> > conv1_output_p_V_4_address0;
    sc_out< sc_logic > conv1_output_p_V_4_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_4_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_4_address1;
    sc_out< sc_logic > conv1_output_p_V_4_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_4_q1;
    sc_out< sc_lv<12> > conv1_output_p_V_5_address0;
    sc_out< sc_logic > conv1_output_p_V_5_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_5_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_5_address1;
    sc_out< sc_logic > conv1_output_p_V_5_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_5_q1;
    sc_out< sc_lv<12> > conv1_output_p_V_6_address0;
    sc_out< sc_logic > conv1_output_p_V_6_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_6_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_6_address1;
    sc_out< sc_logic > conv1_output_p_V_6_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_6_q1;
    sc_out< sc_lv<12> > conv1_output_p_V_7_address0;
    sc_out< sc_logic > conv1_output_p_V_7_ce0;
    sc_in< sc_lv<8> > conv1_output_p_V_7_q0;
    sc_out< sc_lv<12> > conv1_output_p_V_7_address1;
    sc_out< sc_logic > conv1_output_p_V_7_ce1;
    sc_in< sc_lv<8> > conv1_output_p_V_7_q1;


    // Module declarations
    subconv_1x1_32_p(sc_module_name name);
    SC_HAS_PROCESS(subconv_1x1_32_p);

    ~subconv_1x1_32_p();

    sc_trace_file* mVcdFile;

    COMPUTE_ENGINE* grp_COMPUTE_ENGINE_fu_2110;
    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U64;
    ShuffleNetV2_mux_jbC<1,1,8,8,8,8,8,8,8,8,3,8>* ShuffleNetV2_mux_jbC_x_U65;
    sc_signal< sc_lv<28> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > co_16_fu_2210_p2;
    sc_signal< sc_lv<5> > co_16_reg_3198;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_293_fu_2245_p2;
    sc_signal< sc_lv<11> > tmp_293_reg_3203;
    sc_signal< sc_lv<1> > exitcond6_fu_2204_p2;
    sc_signal< sc_lv<5> > bias_V_addr_reg_3208;
    sc_signal< sc_lv<16> > tmp_300_fu_2286_p2;
    sc_signal< sc_lv<16> > tmp_300_reg_3216;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond8_fu_2251_p2;
    sc_signal< sc_lv<16> > tmp_307_fu_2302_p2;
    sc_signal< sc_lv<16> > tmp_307_reg_3224;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond11_fu_2292_p2;
    sc_signal< sc_lv<6> > w_16_fu_2307_p2;
    sc_signal< sc_lv<6> > w_16_reg_3229;
    sc_signal< sc_lv<6> > h_15_fu_2313_p2;
    sc_signal< sc_lv<11> > tmp_cast_fu_2329_p1;
    sc_signal< sc_lv<11> > tmp_cast_reg_3242;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > exitcond7_fu_2323_p2;
    sc_signal< sc_lv<12> > tmp_296_fu_2357_p2;
    sc_signal< sc_lv<12> > tmp_296_reg_3247;
    sc_signal< sc_lv<12> > tmp_297_fu_2367_p2;
    sc_signal< sc_lv<12> > tmp_297_reg_3252;
    sc_signal< sc_lv<13> > tmp_298_fu_2373_p2;
    sc_signal< sc_lv<13> > tmp_298_reg_3257;
    sc_signal< sc_lv<16> > tmp_192_cast1_fu_2385_p1;
    sc_signal< sc_lv<16> > tmp_192_cast1_reg_3265;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > exitcond10_fu_2379_p2;
    sc_signal< sc_lv<12> > conv1_output_p_V_2_a_reg_3270;
    sc_signal< sc_lv<12> > conv1_output_p_V_2_a_1_reg_3275;
    sc_signal< sc_lv<12> > conv1_output_p_V_2_a_2_reg_3280;
    sc_signal< sc_lv<12> > conv1_output_p_V_5_a_reg_3285;
    sc_signal< sc_lv<12> > conv1_output_p_V_5_a_1_reg_3290;
    sc_signal< sc_lv<12> > conv1_output_p_V_5_a_2_reg_3295;
    sc_signal< sc_lv<12> > conv1_output_p_V_4_a_reg_3300;
    sc_signal< sc_lv<12> > conv1_output_p_V_4_a_1_reg_3305;
    sc_signal< sc_lv<12> > conv1_output_p_V_4_a_2_reg_3310;
    sc_signal< sc_lv<12> > conv1_output_p_V_1_a_reg_3315;
    sc_signal< sc_lv<12> > conv1_output_p_V_1_a_1_reg_3320;
    sc_signal< sc_lv<12> > conv1_output_p_V_1_a_2_reg_3325;
    sc_signal< sc_lv<12> > conv1_output_p_V_3_a_reg_3330;
    sc_signal< sc_lv<12> > conv1_output_p_V_3_a_1_reg_3335;
    sc_signal< sc_lv<12> > conv1_output_p_V_3_a_2_reg_3340;
    sc_signal< sc_lv<12> > conv1_output_p_V_6_a_reg_3345;
    sc_signal< sc_lv<12> > conv1_output_p_V_6_a_1_reg_3350;
    sc_signal< sc_lv<12> > conv1_output_p_V_6_a_2_reg_3355;
    sc_signal< sc_lv<12> > conv1_output_p_V_0_a_reg_3360;
    sc_signal< sc_lv<12> > conv1_output_p_V_0_a_1_reg_3365;
    sc_signal< sc_lv<12> > conv1_output_p_V_0_a_2_reg_3370;
    sc_signal< sc_lv<12> > conv1_output_p_V_7_a_reg_3375;
    sc_signal< sc_lv<12> > conv1_output_p_V_7_a_1_reg_3380;
    sc_signal< sc_lv<12> > conv1_output_p_V_7_a_2_reg_3385;
    sc_signal< sc_lv<6> > h_14_fu_2448_p2;
    sc_signal< sc_lv<5> > co_18_fu_2460_p2;
    sc_signal< sc_lv<5> > co_18_reg_3398;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<15> > output_V_addr_1_reg_3403;
    sc_signal< sc_lv<1> > exitcond13_fu_2454_p2;
    sc_signal< sc_lv<3> > tmp_389_fu_2537_p1;
    sc_signal< sc_lv<3> > tmp_389_reg_3408;
    sc_signal< sc_lv<8> > tmp_318_fu_2575_p2;
    sc_signal< sc_lv<8> > tmp_318_reg_3414;
    sc_signal< sc_lv<6> > w_17_fu_2611_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > grp_fu_2162_p10;
    sc_signal< sc_lv<8> > tmp_201_reg_3605;
    sc_signal< sc_lv<8> > conv1_output_p_V_0_l_reg_3610;
    sc_signal< sc_lv<8> > grp_fu_2183_p10;
    sc_signal< sc_lv<8> > tmp_202_reg_3615;
    sc_signal< sc_lv<8> > conv1_output_p_V_1_l_reg_3620;
    sc_signal< sc_lv<8> > conv1_output_p_V_2_l_reg_3625;
    sc_signal< sc_lv<8> > conv1_output_p_V_3_l_reg_3630;
    sc_signal< sc_lv<8> > conv1_output_p_V_4_l_reg_3635;
    sc_signal< sc_lv<8> > conv1_output_p_V_5_l_reg_3640;
    sc_signal< sc_lv<8> > conv1_output_p_V_6_l_reg_3645;
    sc_signal< sc_lv<8> > conv1_output_p_V_7_l_reg_3650;
    sc_signal< sc_lv<8> > conv1_output_p_V_0_l_1_reg_3655;
    sc_signal< sc_lv<8> > conv1_output_p_V_1_l_1_reg_3660;
    sc_signal< sc_lv<8> > conv1_output_p_V_2_l_1_reg_3665;
    sc_signal< sc_lv<8> > conv1_output_p_V_3_l_1_reg_3670;
    sc_signal< sc_lv<8> > conv1_output_p_V_4_l_1_reg_3675;
    sc_signal< sc_lv<8> > conv1_output_p_V_5_l_1_reg_3680;
    sc_signal< sc_lv<8> > conv1_output_p_V_6_l_1_reg_3685;
    sc_signal< sc_lv<8> > conv1_output_p_V_7_l_1_reg_3690;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<8> > tmp_203_reg_3775;
    sc_signal< sc_lv<8> > tmp_204_reg_3780;
    sc_signal< sc_lv<8> > conv1_output_p_V_0_l_2_reg_3785;
    sc_signal< sc_lv<8> > conv1_output_p_V_1_l_2_reg_3790;
    sc_signal< sc_lv<8> > conv1_output_p_V_2_l_2_reg_3795;
    sc_signal< sc_lv<8> > conv1_output_p_V_3_l_2_reg_3800;
    sc_signal< sc_lv<8> > conv1_output_p_V_4_l_2_reg_3805;
    sc_signal< sc_lv<8> > conv1_output_p_V_5_l_2_reg_3810;
    sc_signal< sc_lv<8> > conv1_output_p_V_6_l_2_reg_3815;
    sc_signal< sc_lv<8> > conv1_output_p_V_7_l_2_reg_3820;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<8> > tmp_205_reg_3905;
    sc_signal< sc_lv<8> > tmp_206_reg_3910;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > tmp_207_reg_3995;
    sc_signal< sc_lv<8> > tmp_208_reg_4000;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > tmp_209_reg_4085;
    sc_signal< sc_lv<8> > tmp_210_reg_4090;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > tmp_211_reg_4175;
    sc_signal< sc_lv<8> > tmp_212_reg_4180;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<8> > tmp_213_reg_4265;
    sc_signal< sc_lv<8> > tmp_214_reg_4270;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<8> > tmp_215_reg_4355;
    sc_signal< sc_lv<8> > tmp_216_reg_4360;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<8> > tmp_217_reg_4445;
    sc_signal< sc_lv<8> > tmp_218_reg_4450;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<8> > tmp_219_reg_4535;
    sc_signal< sc_lv<8> > tmp_220_reg_4540;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<8> > tmp_221_reg_4625;
    sc_signal< sc_lv<8> > tmp_222_reg_4630;
    sc_signal< sc_lv<8> > tmp_223_reg_4635;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<8> > tmp_224_reg_4640;
    sc_signal< sc_lv<8> > grp_COMPUTE_ENGINE_fu_2110_ap_return;
    sc_signal< sc_lv<8> > p_Val2_60_reg_4645;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > grp_COMPUTE_ENGINE_fu_2110_ap_done;
    sc_signal< sc_lv<1> > isneg_reg_4651;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<8> > p_Val2_62_fu_3012_p2;
    sc_signal< sc_lv<8> > p_Val2_62_reg_4658;
    sc_signal< sc_lv<1> > newsignbit_reg_4664;
    sc_signal< sc_lv<5> > co_17_fu_3078_p2;
    sc_signal< sc_lv<5> > co_17_reg_4674;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<11> > tmp_303_fu_3108_p2;
    sc_signal< sc_lv<11> > tmp_303_reg_4679;
    sc_signal< sc_lv<1> > exitcond9_fu_3072_p2;
    sc_signal< sc_lv<16> > tmp_309_fu_3149_p2;
    sc_signal< sc_lv<16> > tmp_309_reg_4687;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<1> > exitcond12_fu_3114_p2;
    sc_signal< sc_lv<15> > output_V_addr_2_reg_4695;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<1> > exitcond_fu_3155_p2;
    sc_signal< sc_lv<6> > h_16_fu_3175_p2;
    sc_signal< sc_lv<6> > w_18_fu_3189_p2;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > grp_COMPUTE_ENGINE_fu_2110_ap_start;
    sc_signal< sc_logic > grp_COMPUTE_ENGINE_fu_2110_ap_idle;
    sc_signal< sc_logic > grp_COMPUTE_ENGINE_fu_2110_ap_ready;
    sc_signal< sc_lv<5> > co_reg_2006;
    sc_signal< sc_lv<6> > h_reg_2017;
    sc_signal< sc_lv<6> > w_reg_2029;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<6> > h1_reg_2040;
    sc_signal< sc_lv<6> > w2_reg_2052;
    sc_signal< sc_lv<5> > co3_reg_2064;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<5> > co4_reg_2075;
    sc_signal< sc_lv<6> > h5_reg_2086;
    sc_signal< sc_lv<6> > w6_reg_2098;
    sc_signal< sc_logic > ap_reg_grp_COMPUTE_ENGINE_fu_2110_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<64> > tmp_fu_2216_p1;
    sc_signal< sc_lv<64> > tmp_346_cast_fu_2319_p1;
    sc_signal< sc_lv<64> > tmp_343_cast_fu_2402_p1;
    sc_signal< sc_lv<64> > tmp_344_cast_fu_2419_p1;
    sc_signal< sc_lv<64> > tmp_345_cast_fu_2436_p1;
    sc_signal< sc_lv<64> > tmp_358_cast_fu_2532_p1;
    sc_signal< sc_lv<64> > tmp_361_cast_fu_2581_p1;
    sc_signal< sc_lv<64> > tmp_362_cast_fu_2599_p1;
    sc_signal< sc_lv<64> > tmp_363_cast_fu_2622_p1;
    sc_signal< sc_lv<64> > tmp_364_cast_fu_2639_p1;
    sc_signal< sc_lv<64> > tmp_365_cast_fu_2656_p1;
    sc_signal< sc_lv<64> > tmp_366_cast_fu_2673_p1;
    sc_signal< sc_lv<64> > tmp_367_cast_fu_2690_p1;
    sc_signal< sc_lv<64> > tmp_368_cast_fu_2707_p1;
    sc_signal< sc_lv<64> > tmp_369_cast_fu_2724_p1;
    sc_signal< sc_lv<64> > tmp_370_cast_fu_2741_p1;
    sc_signal< sc_lv<64> > tmp_371_cast_fu_2758_p1;
    sc_signal< sc_lv<64> > tmp_372_cast_fu_2775_p1;
    sc_signal< sc_lv<64> > tmp_373_cast_fu_2792_p1;
    sc_signal< sc_lv<64> > tmp_374_cast_fu_2809_p1;
    sc_signal< sc_lv<64> > tmp_375_cast_fu_2826_p1;
    sc_signal< sc_lv<64> > tmp_376_cast_fu_2843_p1;
    sc_signal< sc_lv<64> > tmp_377_cast_fu_2860_p1;
    sc_signal< sc_lv<64> > tmp_378_cast_fu_2877_p1;
    sc_signal< sc_lv<64> > tmp_379_cast_fu_2894_p1;
    sc_signal< sc_lv<64> > tmp_380_cast_fu_2911_p1;
    sc_signal< sc_lv<64> > tmp_381_cast_fu_2928_p1;
    sc_signal< sc_lv<64> > tmp_382_cast_fu_2945_p1;
    sc_signal< sc_lv<64> > tmp_383_cast_fu_2962_p1;
    sc_signal< sc_lv<64> > tmp_384_cast_fu_2979_p1;
    sc_signal< sc_lv<64> > tmp_385_cast_fu_3170_p1;
    sc_signal< sc_lv<8> > this_assign_32_1_fu_3063_p3;
    sc_signal< sc_lv<1> > tmp_392_fu_3181_p3;
    sc_signal< sc_lv<10> > tmp_s_fu_2221_p3;
    sc_signal< sc_lv<6> > tmp_292_fu_2233_p3;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_2241_p1;
    sc_signal< sc_lv<11> > p_shl_cast_fu_2229_p1;
    sc_signal< sc_lv<11> > tmp_190_cast_fu_2257_p1;
    sc_signal< sc_lv<11> > tmp_299_fu_2261_p2;
    sc_signal< sc_lv<12> > tmp_386_fu_2274_p3;
    sc_signal< sc_lv<16> > p_shl2_cast_fu_2266_p3;
    sc_signal< sc_lv<16> > p_shl3_cast_fu_2282_p1;
    sc_signal< sc_lv<16> > tmp_193_cast_fu_2298_p1;
    sc_signal< sc_lv<11> > tmp_294_fu_2333_p3;
    sc_signal< sc_lv<7> > tmp_295_fu_2345_p3;
    sc_signal< sc_lv<12> > p_shl5_cast_fu_2353_p1;
    sc_signal< sc_lv<12> > p_shl4_cast_fu_2341_p1;
    sc_signal< sc_lv<13> > tmp_333_cast_fu_2363_p1;
    sc_signal< sc_lv<12> > tmp_192_cast_fu_2393_p1;
    sc_signal< sc_lv<12> > tmp_304_fu_2397_p2;
    sc_signal< sc_lv<12> > tmp_305_fu_2414_p2;
    sc_signal< sc_lv<13> > tmp_192_cast2_fu_2389_p1;
    sc_signal< sc_lv<13> > tmp_306_fu_2431_p2;
    sc_signal< sc_lv<10> > tmp_310_fu_2466_p3;
    sc_signal< sc_lv<6> > tmp_311_fu_2478_p3;
    sc_signal< sc_lv<11> > p_shl11_cast_fu_2486_p1;
    sc_signal< sc_lv<11> > p_shl10_cast_fu_2474_p1;
    sc_signal< sc_lv<11> > tmp_312_fu_2490_p2;
    sc_signal< sc_lv<11> > tmp_313_fu_2496_p2;
    sc_signal< sc_lv<12> > tmp_388_fu_2509_p3;
    sc_signal< sc_lv<16> > p_shl9_cast_fu_2517_p1;
    sc_signal< sc_lv<16> > p_shl8_cast_fu_2501_p3;
    sc_signal< sc_lv<16> > tmp_314_fu_2521_p2;
    sc_signal< sc_lv<16> > tmp_315_fu_2527_p2;
    sc_signal< sc_lv<2> > newIndex_fu_2541_p4;
    sc_signal< sc_lv<7> > tmp_316_fu_2551_p3;
    sc_signal< sc_lv<5> > tmp_317_fu_2563_p3;
    sc_signal< sc_lv<8> > p_shl6_cast_fu_2559_p1;
    sc_signal< sc_lv<8> > p_shl7_cast_fu_2571_p1;
    sc_signal< sc_lv<8> > tmp_319_fu_2593_p2;
    sc_signal< sc_lv<8> > tmp_320_fu_2617_p2;
    sc_signal< sc_lv<8> > tmp_321_fu_2634_p2;
    sc_signal< sc_lv<8> > tmp_322_fu_2651_p2;
    sc_signal< sc_lv<8> > tmp_323_fu_2668_p2;
    sc_signal< sc_lv<8> > tmp_324_fu_2685_p2;
    sc_signal< sc_lv<8> > tmp_325_fu_2702_p2;
    sc_signal< sc_lv<8> > tmp_326_fu_2719_p2;
    sc_signal< sc_lv<8> > tmp_327_fu_2736_p2;
    sc_signal< sc_lv<8> > tmp_328_fu_2753_p2;
    sc_signal< sc_lv<8> > tmp_329_fu_2770_p2;
    sc_signal< sc_lv<8> > tmp_330_fu_2787_p2;
    sc_signal< sc_lv<8> > tmp_331_fu_2804_p2;
    sc_signal< sc_lv<8> > tmp_332_fu_2821_p2;
    sc_signal< sc_lv<8> > tmp_333_fu_2838_p2;
    sc_signal< sc_lv<8> > tmp_334_fu_2855_p2;
    sc_signal< sc_lv<8> > tmp_335_fu_2872_p2;
    sc_signal< sc_lv<8> > tmp_336_fu_2889_p2;
    sc_signal< sc_lv<8> > tmp_337_fu_2906_p2;
    sc_signal< sc_lv<8> > tmp_338_fu_2923_p2;
    sc_signal< sc_lv<8> > tmp_339_fu_2940_p2;
    sc_signal< sc_lv<8> > tmp_340_fu_2957_p2;
    sc_signal< sc_lv<8> > tmp_341_fu_2974_p2;
    sc_signal< sc_lv<9> > tmp_197_fu_2995_p1;
    sc_signal< sc_lv<9> > tmp_196_fu_2991_p1;
    sc_signal< sc_lv<9> > p_Val2_61_fu_2998_p2;
    sc_signal< sc_lv<1> > tmp_198_fu_3025_p2;
    sc_signal< sc_lv<1> > isneg_not_fu_3039_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_3035_p2;
    sc_signal< sc_lv<1> > underflow_fu_3030_p2;
    sc_signal< sc_lv<1> > brmerge_fu_3044_p2;
    sc_signal< sc_lv<8> > p_Val2_63_mux_fu_3049_p3;
    sc_signal< sc_lv<8> > p_Val2_s_117_fu_3056_p3;
    sc_signal< sc_lv<10> > tmp_301_fu_3084_p3;
    sc_signal< sc_lv<6> > tmp_302_fu_3096_p3;
    sc_signal< sc_lv<11> > p_shl13_cast_fu_3104_p1;
    sc_signal< sc_lv<11> > p_shl12_cast_fu_3092_p1;
    sc_signal< sc_lv<11> > tmp_194_cast_fu_3120_p1;
    sc_signal< sc_lv<11> > tmp_308_fu_3124_p2;
    sc_signal< sc_lv<12> > tmp_387_fu_3137_p3;
    sc_signal< sc_lv<16> > p_shl14_cast_fu_3129_p3;
    sc_signal< sc_lv<16> > p_shl15_cast_fu_3145_p1;
    sc_signal< sc_lv<16> > tmp_199_cast_fu_3161_p1;
    sc_signal< sc_lv<16> > tmp_342_fu_3165_p2;
    sc_signal< sc_lv<28> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<28> ap_ST_fsm_state1;
    static const sc_lv<28> ap_ST_fsm_state2;
    static const sc_lv<28> ap_ST_fsm_state3;
    static const sc_lv<28> ap_ST_fsm_state4;
    static const sc_lv<28> ap_ST_fsm_state5;
    static const sc_lv<28> ap_ST_fsm_state6;
    static const sc_lv<28> ap_ST_fsm_state7;
    static const sc_lv<28> ap_ST_fsm_state8;
    static const sc_lv<28> ap_ST_fsm_state9;
    static const sc_lv<28> ap_ST_fsm_state10;
    static const sc_lv<28> ap_ST_fsm_state11;
    static const sc_lv<28> ap_ST_fsm_state12;
    static const sc_lv<28> ap_ST_fsm_state13;
    static const sc_lv<28> ap_ST_fsm_state14;
    static const sc_lv<28> ap_ST_fsm_state15;
    static const sc_lv<28> ap_ST_fsm_state16;
    static const sc_lv<28> ap_ST_fsm_state17;
    static const sc_lv<28> ap_ST_fsm_state18;
    static const sc_lv<28> ap_ST_fsm_state19;
    static const sc_lv<28> ap_ST_fsm_state20;
    static const sc_lv<28> ap_ST_fsm_state21;
    static const sc_lv<28> ap_ST_fsm_state22;
    static const sc_lv<28> ap_ST_fsm_state23;
    static const sc_lv<28> ap_ST_fsm_state24;
    static const sc_lv<28> ap_ST_fsm_state25;
    static const sc_lv<28> ap_ST_fsm_state26;
    static const sc_lv<28> ap_ST_fsm_state27;
    static const sc_lv<28> ap_ST_fsm_state28;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
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
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_21;
    static const sc_lv<12> ap_const_lv12_484;
    static const sc_lv<13> ap_const_lv13_908;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<8> ap_const_lv8_5;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<8> ap_const_lv8_A;
    static const sc_lv<8> ap_const_lv8_B;
    static const sc_lv<8> ap_const_lv8_C;
    static const sc_lv<8> ap_const_lv8_D;
    static const sc_lv<8> ap_const_lv8_E;
    static const sc_lv<8> ap_const_lv8_F;
    static const sc_lv<8> ap_const_lv8_10;
    static const sc_lv<8> ap_const_lv8_11;
    static const sc_lv<8> ap_const_lv8_12;
    static const sc_lv<8> ap_const_lv8_13;
    static const sc_lv<8> ap_const_lv8_14;
    static const sc_lv<8> ap_const_lv8_15;
    static const sc_lv<8> ap_const_lv8_16;
    static const sc_lv<8> ap_const_lv8_17;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_80;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
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
    void thread_brmerge_fu_3044_p2();
    void thread_brmerge_i_i_i_fu_3035_p2();
    void thread_co_16_fu_2210_p2();
    void thread_co_17_fu_3078_p2();
    void thread_co_18_fu_2460_p2();
    void thread_conv1_output_p_V_0_address0();
    void thread_conv1_output_p_V_0_address1();
    void thread_conv1_output_p_V_0_ce0();
    void thread_conv1_output_p_V_0_ce1();
    void thread_conv1_output_p_V_1_address0();
    void thread_conv1_output_p_V_1_address1();
    void thread_conv1_output_p_V_1_ce0();
    void thread_conv1_output_p_V_1_ce1();
    void thread_conv1_output_p_V_2_address0();
    void thread_conv1_output_p_V_2_address1();
    void thread_conv1_output_p_V_2_ce0();
    void thread_conv1_output_p_V_2_ce1();
    void thread_conv1_output_p_V_3_address0();
    void thread_conv1_output_p_V_3_address1();
    void thread_conv1_output_p_V_3_ce0();
    void thread_conv1_output_p_V_3_ce1();
    void thread_conv1_output_p_V_4_address0();
    void thread_conv1_output_p_V_4_address1();
    void thread_conv1_output_p_V_4_ce0();
    void thread_conv1_output_p_V_4_ce1();
    void thread_conv1_output_p_V_5_address0();
    void thread_conv1_output_p_V_5_address1();
    void thread_conv1_output_p_V_5_ce0();
    void thread_conv1_output_p_V_5_ce1();
    void thread_conv1_output_p_V_6_address0();
    void thread_conv1_output_p_V_6_address1();
    void thread_conv1_output_p_V_6_ce0();
    void thread_conv1_output_p_V_6_ce1();
    void thread_conv1_output_p_V_7_address0();
    void thread_conv1_output_p_V_7_address1();
    void thread_conv1_output_p_V_7_ce0();
    void thread_conv1_output_p_V_7_ce1();
    void thread_exitcond10_fu_2379_p2();
    void thread_exitcond11_fu_2292_p2();
    void thread_exitcond12_fu_3114_p2();
    void thread_exitcond13_fu_2454_p2();
    void thread_exitcond6_fu_2204_p2();
    void thread_exitcond7_fu_2323_p2();
    void thread_exitcond8_fu_2251_p2();
    void thread_exitcond9_fu_3072_p2();
    void thread_exitcond_fu_3155_p2();
    void thread_grp_COMPUTE_ENGINE_fu_2110_ap_start();
    void thread_h_14_fu_2448_p2();
    void thread_h_15_fu_2313_p2();
    void thread_h_16_fu_3175_p2();
    void thread_isneg_not_fu_3039_p2();
    void thread_newIndex_fu_2541_p4();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_Val2_61_fu_2998_p2();
    void thread_p_Val2_62_fu_3012_p2();
    void thread_p_Val2_63_mux_fu_3049_p3();
    void thread_p_Val2_s_117_fu_3056_p3();
    void thread_p_shl10_cast_fu_2474_p1();
    void thread_p_shl11_cast_fu_2486_p1();
    void thread_p_shl12_cast_fu_3092_p1();
    void thread_p_shl13_cast_fu_3104_p1();
    void thread_p_shl14_cast_fu_3129_p3();
    void thread_p_shl15_cast_fu_3145_p1();
    void thread_p_shl1_cast_fu_2241_p1();
    void thread_p_shl2_cast_fu_2266_p3();
    void thread_p_shl3_cast_fu_2282_p1();
    void thread_p_shl4_cast_fu_2341_p1();
    void thread_p_shl5_cast_fu_2353_p1();
    void thread_p_shl6_cast_fu_2559_p1();
    void thread_p_shl7_cast_fu_2571_p1();
    void thread_p_shl8_cast_fu_2501_p3();
    void thread_p_shl9_cast_fu_2517_p1();
    void thread_p_shl_cast_fu_2229_p1();
    void thread_this_assign_32_1_fu_3063_p3();
    void thread_tmp_190_cast_fu_2257_p1();
    void thread_tmp_192_cast1_fu_2385_p1();
    void thread_tmp_192_cast2_fu_2389_p1();
    void thread_tmp_192_cast_fu_2393_p1();
    void thread_tmp_193_cast_fu_2298_p1();
    void thread_tmp_194_cast_fu_3120_p1();
    void thread_tmp_196_fu_2991_p1();
    void thread_tmp_197_fu_2995_p1();
    void thread_tmp_198_fu_3025_p2();
    void thread_tmp_199_cast_fu_3161_p1();
    void thread_tmp_292_fu_2233_p3();
    void thread_tmp_293_fu_2245_p2();
    void thread_tmp_294_fu_2333_p3();
    void thread_tmp_295_fu_2345_p3();
    void thread_tmp_296_fu_2357_p2();
    void thread_tmp_297_fu_2367_p2();
    void thread_tmp_298_fu_2373_p2();
    void thread_tmp_299_fu_2261_p2();
    void thread_tmp_300_fu_2286_p2();
    void thread_tmp_301_fu_3084_p3();
    void thread_tmp_302_fu_3096_p3();
    void thread_tmp_303_fu_3108_p2();
    void thread_tmp_304_fu_2397_p2();
    void thread_tmp_305_fu_2414_p2();
    void thread_tmp_306_fu_2431_p2();
    void thread_tmp_307_fu_2302_p2();
    void thread_tmp_308_fu_3124_p2();
    void thread_tmp_309_fu_3149_p2();
    void thread_tmp_310_fu_2466_p3();
    void thread_tmp_311_fu_2478_p3();
    void thread_tmp_312_fu_2490_p2();
    void thread_tmp_313_fu_2496_p2();
    void thread_tmp_314_fu_2521_p2();
    void thread_tmp_315_fu_2527_p2();
    void thread_tmp_316_fu_2551_p3();
    void thread_tmp_317_fu_2563_p3();
    void thread_tmp_318_fu_2575_p2();
    void thread_tmp_319_fu_2593_p2();
    void thread_tmp_320_fu_2617_p2();
    void thread_tmp_321_fu_2634_p2();
    void thread_tmp_322_fu_2651_p2();
    void thread_tmp_323_fu_2668_p2();
    void thread_tmp_324_fu_2685_p2();
    void thread_tmp_325_fu_2702_p2();
    void thread_tmp_326_fu_2719_p2();
    void thread_tmp_327_fu_2736_p2();
    void thread_tmp_328_fu_2753_p2();
    void thread_tmp_329_fu_2770_p2();
    void thread_tmp_330_fu_2787_p2();
    void thread_tmp_331_fu_2804_p2();
    void thread_tmp_332_fu_2821_p2();
    void thread_tmp_333_cast_fu_2363_p1();
    void thread_tmp_333_fu_2838_p2();
    void thread_tmp_334_fu_2855_p2();
    void thread_tmp_335_fu_2872_p2();
    void thread_tmp_336_fu_2889_p2();
    void thread_tmp_337_fu_2906_p2();
    void thread_tmp_338_fu_2923_p2();
    void thread_tmp_339_fu_2940_p2();
    void thread_tmp_340_fu_2957_p2();
    void thread_tmp_341_fu_2974_p2();
    void thread_tmp_342_fu_3165_p2();
    void thread_tmp_343_cast_fu_2402_p1();
    void thread_tmp_344_cast_fu_2419_p1();
    void thread_tmp_345_cast_fu_2436_p1();
    void thread_tmp_346_cast_fu_2319_p1();
    void thread_tmp_358_cast_fu_2532_p1();
    void thread_tmp_361_cast_fu_2581_p1();
    void thread_tmp_362_cast_fu_2599_p1();
    void thread_tmp_363_cast_fu_2622_p1();
    void thread_tmp_364_cast_fu_2639_p1();
    void thread_tmp_365_cast_fu_2656_p1();
    void thread_tmp_366_cast_fu_2673_p1();
    void thread_tmp_367_cast_fu_2690_p1();
    void thread_tmp_368_cast_fu_2707_p1();
    void thread_tmp_369_cast_fu_2724_p1();
    void thread_tmp_370_cast_fu_2741_p1();
    void thread_tmp_371_cast_fu_2758_p1();
    void thread_tmp_372_cast_fu_2775_p1();
    void thread_tmp_373_cast_fu_2792_p1();
    void thread_tmp_374_cast_fu_2809_p1();
    void thread_tmp_375_cast_fu_2826_p1();
    void thread_tmp_376_cast_fu_2843_p1();
    void thread_tmp_377_cast_fu_2860_p1();
    void thread_tmp_378_cast_fu_2877_p1();
    void thread_tmp_379_cast_fu_2894_p1();
    void thread_tmp_380_cast_fu_2911_p1();
    void thread_tmp_381_cast_fu_2928_p1();
    void thread_tmp_382_cast_fu_2945_p1();
    void thread_tmp_383_cast_fu_2962_p1();
    void thread_tmp_384_cast_fu_2979_p1();
    void thread_tmp_385_cast_fu_3170_p1();
    void thread_tmp_386_fu_2274_p3();
    void thread_tmp_387_fu_3137_p3();
    void thread_tmp_388_fu_2509_p3();
    void thread_tmp_389_fu_2537_p1();
    void thread_tmp_392_fu_3181_p3();
    void thread_tmp_cast_fu_2329_p1();
    void thread_tmp_fu_2216_p1();
    void thread_tmp_s_fu_2221_p3();
    void thread_underflow_fu_3030_p2();
    void thread_w_16_fu_2307_p2();
    void thread_w_17_fu_2611_p2();
    void thread_w_18_fu_3189_p2();
    void thread_weight_0_V_address0();
    void thread_weight_0_V_address1();
    void thread_weight_0_V_ce0();
    void thread_weight_0_V_ce1();
    void thread_weight_1_V_address0();
    void thread_weight_1_V_address1();
    void thread_weight_1_V_ce0();
    void thread_weight_1_V_ce1();
    void thread_weight_2_V_address0();
    void thread_weight_2_V_address1();
    void thread_weight_2_V_ce0();
    void thread_weight_2_V_ce1();
    void thread_weight_3_V_address0();
    void thread_weight_3_V_address1();
    void thread_weight_3_V_ce0();
    void thread_weight_3_V_ce1();
    void thread_weight_4_V_address0();
    void thread_weight_4_V_address1();
    void thread_weight_4_V_ce0();
    void thread_weight_4_V_ce1();
    void thread_weight_5_V_address0();
    void thread_weight_5_V_address1();
    void thread_weight_5_V_ce0();
    void thread_weight_5_V_ce1();
    void thread_weight_6_V_address0();
    void thread_weight_6_V_address1();
    void thread_weight_6_V_ce0();
    void thread_weight_6_V_ce1();
    void thread_weight_7_V_address0();
    void thread_weight_7_V_address1();
    void thread_weight_7_V_ce0();
    void thread_weight_7_V_ce1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif