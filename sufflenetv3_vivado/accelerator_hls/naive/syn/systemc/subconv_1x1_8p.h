// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _subconv_1x1_8p_HH_
#define _subconv_1x1_8p_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ShuffleNetV2_faddbkb.h"
#include "ShuffleNetV2_fmulcud.h"
#include "ShuffleNetV2_fcmpdEe.h"

namespace ap_rtl {

struct subconv_1x1_8p : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > weight_address0;
    sc_out< sc_logic > weight_ce0;
    sc_in< sc_lv<32> > weight_q0;
    sc_out< sc_lv<7> > bias_address0;
    sc_out< sc_logic > bias_ce0;
    sc_in< sc_lv<32> > bias_q0;
    sc_out< sc_lv<13> > shuffleunit1_7_outpu_address0;
    sc_out< sc_logic > shuffleunit1_7_outpu_ce0;
    sc_in< sc_lv<32> > shuffleunit1_7_outpu_q0;
    sc_out< sc_lv<13> > ShuffleConvs_2_Downs_address0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_ce0;
    sc_out< sc_logic > ShuffleConvs_2_Downs_we0;
    sc_out< sc_lv<32> > ShuffleConvs_2_Downs_d0;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    subconv_1x1_8p(sc_module_name name);
    SC_HAS_PROCESS(subconv_1x1_8p);

    ~subconv_1x1_8p();

    sc_trace_file* mVcdFile;

    ShuffleNetV2_faddbkb<1,5,32,32,32>* ShuffleNetV2_faddbkb_x_U74;
    ShuffleNetV2_fmulcud<1,4,32,32,32>* ShuffleNetV2_fmulcud_x_U75;
    ShuffleNetV2_fcmpdEe<1,1,32,32,1>* ShuffleNetV2_fcmpdEe_x_U76;
    sc_signal< sc_lv<23> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > co_7_fu_174_p2;
    sc_signal< sc_lv<7> > co_7_reg_394;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<15> > tmp_90_fu_209_p2;
    sc_signal< sc_lv<15> > tmp_90_reg_399;
    sc_signal< sc_lv<1> > exitcond3_fu_168_p2;
    sc_signal< sc_lv<11> > tmp_126_cast_fu_223_p1;
    sc_signal< sc_lv<11> > tmp_126_cast_reg_404;
    sc_signal< sc_lv<7> > bias_addr_reg_409;
    sc_signal< sc_lv<4> > h_7_fu_233_p2;
    sc_signal< sc_lv<4> > h_7_reg_417;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<11> > tmp_cast_fu_239_p1;
    sc_signal< sc_lv<11> > tmp_cast_reg_422;
    sc_signal< sc_lv<1> > exitcond2_fu_227_p2;
    sc_signal< sc_lv<14> > tmp_129_cast_fu_248_p3;
    sc_signal< sc_lv<14> > tmp_129_cast_reg_427;
    sc_signal< sc_lv<4> > w_7_fu_262_p2;
    sc_signal< sc_lv<4> > w_7_reg_435;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<14> > tmp_79_cast_fu_268_p1;
    sc_signal< sc_lv<14> > tmp_79_cast_reg_440;
    sc_signal< sc_lv<1> > exitcond1_fu_256_p2;
    sc_signal< sc_lv<13> > ShuffleConvs_2_Downs_reg_445;
    sc_signal< sc_lv<7> > ci_1_fu_288_p2;
    sc_signal< sc_lv<7> > ci_1_reg_453;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond_fu_282_p2;
    sc_signal< sc_lv<32> > weight_load_reg_468;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > shuffleunit1_7_outpu_1_reg_473;
    sc_signal< sc_lv<32> > grp_fu_159_p2;
    sc_signal< sc_lv<32> > tmp_81_reg_478;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > grp_fu_154_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > bias_load_reg_488;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > result_reg_493;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > tmp_4_fu_163_p2;
    sc_signal< sc_lv<1> > tmp_4_reg_500;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<7> > co_reg_98;
    sc_signal< sc_lv<4> > h_reg_109;
    sc_signal< sc_lv<4> > w_reg_120;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<32> > sum_reg_131;
    sc_signal< sc_lv<7> > ci_reg_143;
    sc_signal< sc_lv<64> > tmp_fu_180_p1;
    sc_signal< sc_lv<64> > tmp_130_cast_fu_277_p1;
    sc_signal< sc_lv<64> > tmp_131_cast_fu_303_p1;
    sc_signal< sc_lv<64> > tmp_137_cast_fu_338_p1;
    sc_signal< sc_lv<32> > grp_fu_154_p1;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<14> > tmp_s_fu_185_p3;
    sc_signal< sc_lv<12> > tmp_89_fu_197_p3;
    sc_signal< sc_lv<15> > p_shl_cast_fu_193_p1;
    sc_signal< sc_lv<15> > p_shl1_cast_fu_205_p1;
    sc_signal< sc_lv<10> > tmp_91_fu_215_p3;
    sc_signal< sc_lv<11> > tmp_92_fu_243_p2;
    sc_signal< sc_lv<14> > tmp_93_fu_272_p2;
    sc_signal< sc_lv<15> > tmp_80_cast_fu_294_p1;
    sc_signal< sc_lv<15> > tmp_94_fu_298_p2;
    sc_signal< sc_lv<10> > tmp_95_fu_308_p3;
    sc_signal< sc_lv<11> > tmp_133_cast_fu_316_p1;
    sc_signal< sc_lv<11> > tmp_96_fu_320_p2;
    sc_signal< sc_lv<14> > tmp_136_cast_fu_325_p3;
    sc_signal< sc_lv<14> > tmp_97_fu_333_p2;
    sc_signal< sc_lv<32> > result_to_int_fu_343_p1;
    sc_signal< sc_lv<8> > tmp_1_fu_346_p4;
    sc_signal< sc_lv<23> > tmp_88_fu_356_p1;
    sc_signal< sc_lv<1> > notrhs_fu_366_p2;
    sc_signal< sc_lv<1> > notlhs_fu_360_p2;
    sc_signal< sc_lv<1> > tmp_3_fu_372_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_378_p2;
    sc_signal< sc_lv<23> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<23> ap_ST_fsm_state1;
    static const sc_lv<23> ap_ST_fsm_state2;
    static const sc_lv<23> ap_ST_fsm_state3;
    static const sc_lv<23> ap_ST_fsm_state4;
    static const sc_lv<23> ap_ST_fsm_state5;
    static const sc_lv<23> ap_ST_fsm_state6;
    static const sc_lv<23> ap_ST_fsm_state7;
    static const sc_lv<23> ap_ST_fsm_state8;
    static const sc_lv<23> ap_ST_fsm_state9;
    static const sc_lv<23> ap_ST_fsm_state10;
    static const sc_lv<23> ap_ST_fsm_state11;
    static const sc_lv<23> ap_ST_fsm_state12;
    static const sc_lv<23> ap_ST_fsm_state13;
    static const sc_lv<23> ap_ST_fsm_state14;
    static const sc_lv<23> ap_ST_fsm_state15;
    static const sc_lv<23> ap_ST_fsm_state16;
    static const sc_lv<23> ap_ST_fsm_state17;
    static const sc_lv<23> ap_ST_fsm_state18;
    static const sc_lv<23> ap_ST_fsm_state19;
    static const sc_lv<23> ap_ST_fsm_state20;
    static const sc_lv<23> ap_ST_fsm_state21;
    static const sc_lv<23> ap_ST_fsm_state22;
    static const sc_lv<23> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_ShuffleConvs_2_Downs_address0();
    void thread_ShuffleConvs_2_Downs_ce0();
    void thread_ShuffleConvs_2_Downs_d0();
    void thread_ShuffleConvs_2_Downs_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bias_address0();
    void thread_bias_ce0();
    void thread_ci_1_fu_288_p2();
    void thread_co_7_fu_174_p2();
    void thread_exitcond1_fu_256_p2();
    void thread_exitcond2_fu_227_p2();
    void thread_exitcond3_fu_168_p2();
    void thread_exitcond_fu_282_p2();
    void thread_grp_fu_154_p1();
    void thread_h_7_fu_233_p2();
    void thread_notlhs_fu_360_p2();
    void thread_notrhs_fu_366_p2();
    void thread_p_shl1_cast_fu_205_p1();
    void thread_p_shl_cast_fu_193_p1();
    void thread_result_to_int_fu_343_p1();
    void thread_shuffleunit1_7_outpu_address0();
    void thread_shuffleunit1_7_outpu_ce0();
    void thread_tmp_126_cast_fu_223_p1();
    void thread_tmp_129_cast_fu_248_p3();
    void thread_tmp_130_cast_fu_277_p1();
    void thread_tmp_131_cast_fu_303_p1();
    void thread_tmp_133_cast_fu_316_p1();
    void thread_tmp_136_cast_fu_325_p3();
    void thread_tmp_137_cast_fu_338_p1();
    void thread_tmp_1_fu_346_p4();
    void thread_tmp_3_fu_372_p2();
    void thread_tmp_5_fu_378_p2();
    void thread_tmp_79_cast_fu_268_p1();
    void thread_tmp_80_cast_fu_294_p1();
    void thread_tmp_88_fu_356_p1();
    void thread_tmp_89_fu_197_p3();
    void thread_tmp_90_fu_209_p2();
    void thread_tmp_91_fu_215_p3();
    void thread_tmp_92_fu_243_p2();
    void thread_tmp_93_fu_272_p2();
    void thread_tmp_94_fu_298_p2();
    void thread_tmp_95_fu_308_p3();
    void thread_tmp_96_fu_320_p2();
    void thread_tmp_97_fu_333_p2();
    void thread_tmp_cast_fu_239_p1();
    void thread_tmp_fu_180_p1();
    void thread_tmp_s_fu_185_p3();
    void thread_w_7_fu_262_p2();
    void thread_weight_address0();
    void thread_weight_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
