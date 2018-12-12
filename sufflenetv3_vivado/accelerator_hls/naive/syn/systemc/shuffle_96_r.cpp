// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "shuffle_96_r.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic shuffle_96_r::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic shuffle_96_r::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> shuffle_96_r::ap_ST_fsm_state1 = "1";
const sc_lv<5> shuffle_96_r::ap_ST_fsm_state2 = "10";
const sc_lv<5> shuffle_96_r::ap_ST_fsm_state3 = "100";
const sc_lv<5> shuffle_96_r::ap_ST_fsm_state4 = "1000";
const sc_lv<5> shuffle_96_r::ap_ST_fsm_state5 = "10000";
const sc_lv<32> shuffle_96_r::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> shuffle_96_r::ap_const_lv32_1 = "1";
const sc_lv<1> shuffle_96_r::ap_const_lv1_0 = "0";
const sc_lv<32> shuffle_96_r::ap_const_lv32_2 = "10";
const sc_lv<32> shuffle_96_r::ap_const_lv32_3 = "11";
const sc_lv<1> shuffle_96_r::ap_const_lv1_1 = "1";
const sc_lv<8> shuffle_96_r::ap_const_lv8_0 = "00000000";
const sc_lv<3> shuffle_96_r::ap_const_lv3_0 = "000";
const sc_lv<32> shuffle_96_r::ap_const_lv32_4 = "100";
const sc_lv<8> shuffle_96_r::ap_const_lv8_C0 = "11000000";
const sc_lv<8> shuffle_96_r::ap_const_lv8_1 = "1";
const sc_lv<32> shuffle_96_r::ap_const_lv32_7 = "111";
const sc_lv<2> shuffle_96_r::ap_const_lv2_0 = "00";
const sc_lv<3> shuffle_96_r::ap_const_lv3_4 = "100";
const sc_lv<3> shuffle_96_r::ap_const_lv3_1 = "1";
const bool shuffle_96_r::ap_const_boolean_1 = true;

shuffle_96_r::shuffle_96_r(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_102_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_102_p2 );

    SC_METHOD(thread_co_13_fu_108_p2);
    sensitive << ( co_reg_65 );

    SC_METHOD(thread_exitcond1_fu_148_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( h_reg_76 );

    SC_METHOD(thread_exitcond2_fu_102_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_65 );

    SC_METHOD(thread_exitcond_fu_194_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( w_reg_87 );

    SC_METHOD(thread_h_13_fu_154_p2);
    sensitive << ( h_reg_76 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_229_cast_fu_229_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( right_r_q0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( tmp_94_reg_233 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_right_r_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_228_cast_fu_219_p1 );

    SC_METHOD(thread_right_r_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp_141_fu_136_p3);
    sensitive << ( co_reg_65 );

    SC_METHOD(thread_tmp_142_fu_168_p2);
    sensitive << ( tmp_219_cast_reg_245 );
    sensitive << ( tmp_cast_fu_164_p1 );

    SC_METHOD(thread_tmp_143_fu_181_p2);
    sensitive << ( tmp_221_cast_reg_250 );
    sensitive << ( tmp_cast2_fu_160_p1 );

    SC_METHOD(thread_tmp_144_fu_214_p2);
    sensitive << ( tmp_224_cast_reg_263 );
    sensitive << ( tmp_97_cast_fu_210_p1 );

    SC_METHOD(thread_tmp_145_fu_224_p2);
    sensitive << ( tmp_227_cast_reg_268 );
    sensitive << ( tmp_97_cast1_fu_206_p1 );

    SC_METHOD(thread_tmp_219_cast_fu_132_p1);
    sensitive << ( tmp_s_fu_124_p3 );

    SC_METHOD(thread_tmp_221_cast_fu_144_p1);
    sensitive << ( tmp_141_fu_136_p3 );

    SC_METHOD(thread_tmp_224_cast_fu_173_p3);
    sensitive << ( tmp_142_fu_168_p2 );

    SC_METHOD(thread_tmp_227_cast_fu_186_p3);
    sensitive << ( tmp_143_fu_181_p2 );

    SC_METHOD(thread_tmp_228_cast_fu_219_p1);
    sensitive << ( tmp_144_fu_214_p2 );

    SC_METHOD(thread_tmp_229_cast_fu_229_p1);
    sensitive << ( tmp_145_reg_286 );

    SC_METHOD(thread_tmp_94_fu_98_p1);
    sensitive << ( co_reg_65 );

    SC_METHOD(thread_tmp_97_cast1_fu_206_p1);
    sensitive << ( w_reg_87 );

    SC_METHOD(thread_tmp_97_cast_fu_210_p1);
    sensitive << ( w_reg_87 );

    SC_METHOD(thread_tmp_cast2_fu_160_p1);
    sensitive << ( h_reg_76 );

    SC_METHOD(thread_tmp_cast_fu_164_p1);
    sensitive << ( h_reg_76 );

    SC_METHOD(thread_tmp_fu_114_p4);
    sensitive << ( co_reg_65 );

    SC_METHOD(thread_tmp_s_fu_124_p3);
    sensitive << ( tmp_fu_114_p4 );

    SC_METHOD(thread_w_13_fu_200_p2);
    sensitive << ( w_reg_87 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_102_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond1_fu_148_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_194_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "shuffle_96_r_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, right_r_address0, "(port)right_r_address0");
    sc_trace(mVcdFile, right_r_ce0, "(port)right_r_ce0");
    sc_trace(mVcdFile, right_r_q0, "(port)right_r_q0");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_94_fu_98_p1, "tmp_94_fu_98_p1");
    sc_trace(mVcdFile, tmp_94_reg_233, "tmp_94_reg_233");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, co_13_fu_108_p2, "co_13_fu_108_p2");
    sc_trace(mVcdFile, co_13_reg_240, "co_13_reg_240");
    sc_trace(mVcdFile, tmp_219_cast_fu_132_p1, "tmp_219_cast_fu_132_p1");
    sc_trace(mVcdFile, tmp_219_cast_reg_245, "tmp_219_cast_reg_245");
    sc_trace(mVcdFile, exitcond2_fu_102_p2, "exitcond2_fu_102_p2");
    sc_trace(mVcdFile, tmp_221_cast_fu_144_p1, "tmp_221_cast_fu_144_p1");
    sc_trace(mVcdFile, tmp_221_cast_reg_250, "tmp_221_cast_reg_250");
    sc_trace(mVcdFile, h_13_fu_154_p2, "h_13_fu_154_p2");
    sc_trace(mVcdFile, h_13_reg_258, "h_13_reg_258");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_224_cast_fu_173_p3, "tmp_224_cast_fu_173_p3");
    sc_trace(mVcdFile, tmp_224_cast_reg_263, "tmp_224_cast_reg_263");
    sc_trace(mVcdFile, exitcond1_fu_148_p2, "exitcond1_fu_148_p2");
    sc_trace(mVcdFile, tmp_227_cast_fu_186_p3, "tmp_227_cast_fu_186_p3");
    sc_trace(mVcdFile, tmp_227_cast_reg_268, "tmp_227_cast_reg_268");
    sc_trace(mVcdFile, w_13_fu_200_p2, "w_13_fu_200_p2");
    sc_trace(mVcdFile, w_13_reg_276, "w_13_reg_276");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, exitcond_fu_194_p2, "exitcond_fu_194_p2");
    sc_trace(mVcdFile, tmp_145_fu_224_p2, "tmp_145_fu_224_p2");
    sc_trace(mVcdFile, tmp_145_reg_286, "tmp_145_reg_286");
    sc_trace(mVcdFile, co_reg_65, "co_reg_65");
    sc_trace(mVcdFile, h_reg_76, "h_reg_76");
    sc_trace(mVcdFile, w_reg_87, "w_reg_87");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_228_cast_fu_219_p1, "tmp_228_cast_fu_219_p1");
    sc_trace(mVcdFile, tmp_229_cast_fu_229_p1, "tmp_229_cast_fu_229_p1");
    sc_trace(mVcdFile, tmp_fu_114_p4, "tmp_fu_114_p4");
    sc_trace(mVcdFile, tmp_s_fu_124_p3, "tmp_s_fu_124_p3");
    sc_trace(mVcdFile, tmp_141_fu_136_p3, "tmp_141_fu_136_p3");
    sc_trace(mVcdFile, tmp_cast_fu_164_p1, "tmp_cast_fu_164_p1");
    sc_trace(mVcdFile, tmp_142_fu_168_p2, "tmp_142_fu_168_p2");
    sc_trace(mVcdFile, tmp_cast2_fu_160_p1, "tmp_cast2_fu_160_p1");
    sc_trace(mVcdFile, tmp_143_fu_181_p2, "tmp_143_fu_181_p2");
    sc_trace(mVcdFile, tmp_97_cast_fu_210_p1, "tmp_97_cast_fu_210_p1");
    sc_trace(mVcdFile, tmp_144_fu_214_p2, "tmp_144_fu_214_p2");
    sc_trace(mVcdFile, tmp_97_cast1_fu_206_p1, "tmp_97_cast1_fu_206_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

shuffle_96_r::~shuffle_96_r() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void shuffle_96_r::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_148_p2.read(), ap_const_lv1_1))) {
        co_reg_65 = co_13_reg_240.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        co_reg_65 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_194_p2.read(), ap_const_lv1_1))) {
        h_reg_76 = h_13_reg_258.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_102_p2.read(), ap_const_lv1_0))) {
        h_reg_76 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_148_p2.read()))) {
        w_reg_87 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        w_reg_87 = w_13_reg_276.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_13_reg_240 = co_13_fu_108_p2.read();
        tmp_94_reg_233 = tmp_94_fu_98_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_13_reg_258 = h_13_fu_154_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_194_p2.read()) && esl_seteq<1,1,1>(tmp_94_reg_233.read(), ap_const_lv1_1))) {
        tmp_145_reg_286 = tmp_145_fu_224_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_102_p2.read(), ap_const_lv1_0))) {
        tmp_219_cast_reg_245 = tmp_219_cast_fu_132_p1.read();
        tmp_221_cast_reg_250 = tmp_221_cast_fu_144_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_148_p2.read()))) {
        tmp_224_cast_reg_263 = tmp_224_cast_fu_173_p3.read();
        tmp_227_cast_reg_268 = tmp_227_cast_fu_186_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        w_13_reg_276 = w_13_fu_200_p2.read();
    }
}

void shuffle_96_r::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void shuffle_96_r::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void shuffle_96_r::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void shuffle_96_r::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void shuffle_96_r::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void shuffle_96_r::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond2_fu_102_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void shuffle_96_r::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void shuffle_96_r::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_102_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void shuffle_96_r::thread_co_13_fu_108_p2() {
    co_13_fu_108_p2 = (!ap_const_lv8_1.is_01() || !co_reg_65.read().is_01())? sc_lv<8>(): (sc_biguint<8>(ap_const_lv8_1) + sc_biguint<8>(co_reg_65.read()));
}

void shuffle_96_r::thread_exitcond1_fu_148_p2() {
    exitcond1_fu_148_p2 = (!h_reg_76.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(h_reg_76.read() == ap_const_lv3_4);
}

void shuffle_96_r::thread_exitcond2_fu_102_p2() {
    exitcond2_fu_102_p2 = (!co_reg_65.read().is_01() || !ap_const_lv8_C0.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_65.read() == ap_const_lv8_C0);
}

void shuffle_96_r::thread_exitcond_fu_194_p2() {
    exitcond_fu_194_p2 = (!w_reg_87.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(w_reg_87.read() == ap_const_lv3_4);
}

void shuffle_96_r::thread_h_13_fu_154_p2() {
    h_13_fu_154_p2 = (!h_reg_76.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(h_reg_76.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void shuffle_96_r::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<12>) (tmp_229_cast_fu_229_p1.read());
}

void shuffle_96_r::thread_output_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void shuffle_96_r::thread_output_r_d0() {
    output_r_d0 = right_r_q0.read();
}

void shuffle_96_r::thread_output_r_we0() {
    if ((esl_seteq<1,1,1>(tmp_94_reg_233.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void shuffle_96_r::thread_right_r_address0() {
    right_r_address0 =  (sc_lv<11>) (tmp_228_cast_fu_219_p1.read());
}

void shuffle_96_r::thread_right_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        right_r_ce0 = ap_const_logic_1;
    } else {
        right_r_ce0 = ap_const_logic_0;
    }
}

void shuffle_96_r::thread_tmp_141_fu_136_p3() {
    tmp_141_fu_136_p3 = esl_concat<8,2>(co_reg_65.read(), ap_const_lv2_0);
}

void shuffle_96_r::thread_tmp_142_fu_168_p2() {
    tmp_142_fu_168_p2 = (!tmp_cast_fu_164_p1.read().is_01() || !tmp_219_cast_reg_245.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_cast_fu_164_p1.read()) + sc_biguint<10>(tmp_219_cast_reg_245.read()));
}

void shuffle_96_r::thread_tmp_143_fu_181_p2() {
    tmp_143_fu_181_p2 = (!tmp_cast2_fu_160_p1.read().is_01() || !tmp_221_cast_reg_250.read().is_01())? sc_lv<11>(): (sc_biguint<11>(tmp_cast2_fu_160_p1.read()) + sc_biguint<11>(tmp_221_cast_reg_250.read()));
}

void shuffle_96_r::thread_tmp_144_fu_214_p2() {
    tmp_144_fu_214_p2 = (!tmp_224_cast_reg_263.read().is_01() || !tmp_97_cast_fu_210_p1.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_224_cast_reg_263.read()) + sc_biguint<12>(tmp_97_cast_fu_210_p1.read()));
}

void shuffle_96_r::thread_tmp_145_fu_224_p2() {
    tmp_145_fu_224_p2 = (!tmp_227_cast_reg_268.read().is_01() || !tmp_97_cast1_fu_206_p1.read().is_01())? sc_lv<13>(): (sc_biguint<13>(tmp_227_cast_reg_268.read()) + sc_biguint<13>(tmp_97_cast1_fu_206_p1.read()));
}

void shuffle_96_r::thread_tmp_219_cast_fu_132_p1() {
    tmp_219_cast_fu_132_p1 = esl_zext<10,9>(tmp_s_fu_124_p3.read());
}

void shuffle_96_r::thread_tmp_221_cast_fu_144_p1() {
    tmp_221_cast_fu_144_p1 = esl_zext<11,10>(tmp_141_fu_136_p3.read());
}

void shuffle_96_r::thread_tmp_224_cast_fu_173_p3() {
    tmp_224_cast_fu_173_p3 = esl_concat<10,2>(tmp_142_fu_168_p2.read(), ap_const_lv2_0);
}

void shuffle_96_r::thread_tmp_227_cast_fu_186_p3() {
    tmp_227_cast_fu_186_p3 = esl_concat<11,2>(tmp_143_fu_181_p2.read(), ap_const_lv2_0);
}

void shuffle_96_r::thread_tmp_228_cast_fu_219_p1() {
    tmp_228_cast_fu_219_p1 = esl_zext<64,12>(tmp_144_fu_214_p2.read());
}

void shuffle_96_r::thread_tmp_229_cast_fu_229_p1() {
    tmp_229_cast_fu_229_p1 = esl_zext<64,13>(tmp_145_reg_286.read());
}

void shuffle_96_r::thread_tmp_94_fu_98_p1() {
    tmp_94_fu_98_p1 = co_reg_65.read().range(1-1, 0);
}

void shuffle_96_r::thread_tmp_97_cast1_fu_206_p1() {
    tmp_97_cast1_fu_206_p1 = esl_zext<13,3>(w_reg_87.read());
}

void shuffle_96_r::thread_tmp_97_cast_fu_210_p1() {
    tmp_97_cast_fu_210_p1 = esl_zext<12,3>(w_reg_87.read());
}

void shuffle_96_r::thread_tmp_cast2_fu_160_p1() {
    tmp_cast2_fu_160_p1 = esl_zext<11,3>(h_reg_76.read());
}

void shuffle_96_r::thread_tmp_cast_fu_164_p1() {
    tmp_cast_fu_164_p1 = esl_zext<10,3>(h_reg_76.read());
}

void shuffle_96_r::thread_tmp_fu_114_p4() {
    tmp_fu_114_p4 = co_reg_65.read().range(7, 1);
}

void shuffle_96_r::thread_tmp_s_fu_124_p3() {
    tmp_s_fu_124_p3 = esl_concat<7,2>(tmp_fu_114_p4.read(), ap_const_lv2_0);
}

void shuffle_96_r::thread_w_13_fu_200_p2() {
    w_13_fu_200_p2 = (!w_reg_87.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(w_reg_87.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void shuffle_96_r::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_102_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond1_fu_148_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_194_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}
