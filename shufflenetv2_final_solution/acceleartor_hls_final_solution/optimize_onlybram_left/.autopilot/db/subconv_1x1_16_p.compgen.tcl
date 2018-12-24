# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name input_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_V \
    op interface \
    ports { input_V_address0 { O 13 vector } input_V_ce0 { O 1 bit } input_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name weight_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_0_V \
    op interface \
    ports { weight_0_V_address0 { O 5 vector } weight_0_V_ce0 { O 1 bit } weight_0_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name weight_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_1_V \
    op interface \
    ports { weight_1_V_address0 { O 5 vector } weight_1_V_ce0 { O 1 bit } weight_1_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name weight_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_2_V \
    op interface \
    ports { weight_2_V_address0 { O 5 vector } weight_2_V_ce0 { O 1 bit } weight_2_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name weight_3_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_3_V \
    op interface \
    ports { weight_3_V_address0 { O 5 vector } weight_3_V_ce0 { O 1 bit } weight_3_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name weight_4_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_4_V \
    op interface \
    ports { weight_4_V_address0 { O 5 vector } weight_4_V_ce0 { O 1 bit } weight_4_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name weight_5_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_5_V \
    op interface \
    ports { weight_5_V_address0 { O 5 vector } weight_5_V_ce0 { O 1 bit } weight_5_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name weight_6_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_6_V \
    op interface \
    ports { weight_6_V_address0 { O 5 vector } weight_6_V_ce0 { O 1 bit } weight_6_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name weight_7_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_7_V \
    op interface \
    ports { weight_7_V_address0 { O 5 vector } weight_7_V_ce0 { O 1 bit } weight_7_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name weight_8_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_8_V \
    op interface \
    ports { weight_8_V_address0 { O 5 vector } weight_8_V_ce0 { O 1 bit } weight_8_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_8_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name weight_9_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_9_V \
    op interface \
    ports { weight_9_V_address0 { O 5 vector } weight_9_V_ce0 { O 1 bit } weight_9_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_9_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name weight_10_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_10_V \
    op interface \
    ports { weight_10_V_address0 { O 5 vector } weight_10_V_ce0 { O 1 bit } weight_10_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_10_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name weight_11_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_11_V \
    op interface \
    ports { weight_11_V_address0 { O 5 vector } weight_11_V_ce0 { O 1 bit } weight_11_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_11_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name weight_12_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_12_V \
    op interface \
    ports { weight_12_V_address0 { O 5 vector } weight_12_V_ce0 { O 1 bit } weight_12_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_12_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name weight_13_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_13_V \
    op interface \
    ports { weight_13_V_address0 { O 5 vector } weight_13_V_ce0 { O 1 bit } weight_13_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_13_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name weight_14_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_14_V \
    op interface \
    ports { weight_14_V_address0 { O 5 vector } weight_14_V_ce0 { O 1 bit } weight_14_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_14_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name weight_15_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_15_V \
    op interface \
    ports { weight_15_V_address0 { O 5 vector } weight_15_V_ce0 { O 1 bit } weight_15_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_15_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name weight_16_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_16_V \
    op interface \
    ports { weight_16_V_address0 { O 5 vector } weight_16_V_ce0 { O 1 bit } weight_16_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_16_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name weight_17_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_17_V \
    op interface \
    ports { weight_17_V_address0 { O 5 vector } weight_17_V_ce0 { O 1 bit } weight_17_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_17_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name weight_18_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_18_V \
    op interface \
    ports { weight_18_V_address0 { O 5 vector } weight_18_V_ce0 { O 1 bit } weight_18_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_18_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name weight_19_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_19_V \
    op interface \
    ports { weight_19_V_address0 { O 5 vector } weight_19_V_ce0 { O 1 bit } weight_19_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_19_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name weight_20_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_20_V \
    op interface \
    ports { weight_20_V_address0 { O 5 vector } weight_20_V_ce0 { O 1 bit } weight_20_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_20_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name weight_21_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_21_V \
    op interface \
    ports { weight_21_V_address0 { O 5 vector } weight_21_V_ce0 { O 1 bit } weight_21_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_21_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name weight_22_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_22_V \
    op interface \
    ports { weight_22_V_address0 { O 5 vector } weight_22_V_ce0 { O 1 bit } weight_22_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_22_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name weight_23_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_23_V \
    op interface \
    ports { weight_23_V_address0 { O 5 vector } weight_23_V_ce0 { O 1 bit } weight_23_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_23_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name bias_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_V \
    op interface \
    ports { bias_V_address0 { O 5 vector } bias_V_ce0 { O 1 bit } bias_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name buffer1_1_24_16x16_p_23 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_23 \
    op interface \
    ports { buffer1_1_24_16x16_p_23_address0 { O 9 vector } buffer1_1_24_16x16_p_23_ce0 { O 1 bit } buffer1_1_24_16x16_p_23_we0 { O 1 bit } buffer1_1_24_16x16_p_23_d0 { O 8 vector } buffer1_1_24_16x16_p_23_q0 { I 8 vector } buffer1_1_24_16x16_p_23_address1 { O 9 vector } buffer1_1_24_16x16_p_23_ce1 { O 1 bit } buffer1_1_24_16x16_p_23_we1 { O 1 bit } buffer1_1_24_16x16_p_23_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name buffer1_1_24_16x16_p_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_19 \
    op interface \
    ports { buffer1_1_24_16x16_p_19_address0 { O 9 vector } buffer1_1_24_16x16_p_19_ce0 { O 1 bit } buffer1_1_24_16x16_p_19_we0 { O 1 bit } buffer1_1_24_16x16_p_19_d0 { O 8 vector } buffer1_1_24_16x16_p_19_q0 { I 8 vector } buffer1_1_24_16x16_p_19_address1 { O 9 vector } buffer1_1_24_16x16_p_19_ce1 { O 1 bit } buffer1_1_24_16x16_p_19_we1 { O 1 bit } buffer1_1_24_16x16_p_19_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name buffer1_1_24_16x16_p_22 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_22 \
    op interface \
    ports { buffer1_1_24_16x16_p_22_address0 { O 9 vector } buffer1_1_24_16x16_p_22_ce0 { O 1 bit } buffer1_1_24_16x16_p_22_we0 { O 1 bit } buffer1_1_24_16x16_p_22_d0 { O 8 vector } buffer1_1_24_16x16_p_22_q0 { I 8 vector } buffer1_1_24_16x16_p_22_address1 { O 9 vector } buffer1_1_24_16x16_p_22_ce1 { O 1 bit } buffer1_1_24_16x16_p_22_we1 { O 1 bit } buffer1_1_24_16x16_p_22_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name buffer1_1_24_16x16_p_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_18 \
    op interface \
    ports { buffer1_1_24_16x16_p_18_address0 { O 9 vector } buffer1_1_24_16x16_p_18_ce0 { O 1 bit } buffer1_1_24_16x16_p_18_we0 { O 1 bit } buffer1_1_24_16x16_p_18_d0 { O 8 vector } buffer1_1_24_16x16_p_18_q0 { I 8 vector } buffer1_1_24_16x16_p_18_address1 { O 9 vector } buffer1_1_24_16x16_p_18_ce1 { O 1 bit } buffer1_1_24_16x16_p_18_we1 { O 1 bit } buffer1_1_24_16x16_p_18_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name buffer1_1_24_16x16_p_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_11 \
    op interface \
    ports { buffer1_1_24_16x16_p_11_address0 { O 9 vector } buffer1_1_24_16x16_p_11_ce0 { O 1 bit } buffer1_1_24_16x16_p_11_we0 { O 1 bit } buffer1_1_24_16x16_p_11_d0 { O 8 vector } buffer1_1_24_16x16_p_11_q0 { I 8 vector } buffer1_1_24_16x16_p_11_address1 { O 9 vector } buffer1_1_24_16x16_p_11_ce1 { O 1 bit } buffer1_1_24_16x16_p_11_we1 { O 1 bit } buffer1_1_24_16x16_p_11_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name buffer1_1_24_16x16_p_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_17 \
    op interface \
    ports { buffer1_1_24_16x16_p_17_address0 { O 9 vector } buffer1_1_24_16x16_p_17_ce0 { O 1 bit } buffer1_1_24_16x16_p_17_we0 { O 1 bit } buffer1_1_24_16x16_p_17_d0 { O 8 vector } buffer1_1_24_16x16_p_17_q0 { I 8 vector } buffer1_1_24_16x16_p_17_address1 { O 9 vector } buffer1_1_24_16x16_p_17_ce1 { O 1 bit } buffer1_1_24_16x16_p_17_we1 { O 1 bit } buffer1_1_24_16x16_p_17_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name buffer1_1_24_16x16_p_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_6 \
    op interface \
    ports { buffer1_1_24_16x16_p_6_address0 { O 9 vector } buffer1_1_24_16x16_p_6_ce0 { O 1 bit } buffer1_1_24_16x16_p_6_we0 { O 1 bit } buffer1_1_24_16x16_p_6_d0 { O 8 vector } buffer1_1_24_16x16_p_6_q0 { I 8 vector } buffer1_1_24_16x16_p_6_address1 { O 9 vector } buffer1_1_24_16x16_p_6_ce1 { O 1 bit } buffer1_1_24_16x16_p_6_we1 { O 1 bit } buffer1_1_24_16x16_p_6_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name buffer1_1_24_16x16_p_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_16 \
    op interface \
    ports { buffer1_1_24_16x16_p_16_address0 { O 9 vector } buffer1_1_24_16x16_p_16_ce0 { O 1 bit } buffer1_1_24_16x16_p_16_we0 { O 1 bit } buffer1_1_24_16x16_p_16_d0 { O 8 vector } buffer1_1_24_16x16_p_16_q0 { I 8 vector } buffer1_1_24_16x16_p_16_address1 { O 9 vector } buffer1_1_24_16x16_p_16_ce1 { O 1 bit } buffer1_1_24_16x16_p_16_we1 { O 1 bit } buffer1_1_24_16x16_p_16_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name buffer1_1_24_16x16_p_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_5 \
    op interface \
    ports { buffer1_1_24_16x16_p_5_address0 { O 9 vector } buffer1_1_24_16x16_p_5_ce0 { O 1 bit } buffer1_1_24_16x16_p_5_we0 { O 1 bit } buffer1_1_24_16x16_p_5_d0 { O 8 vector } buffer1_1_24_16x16_p_5_q0 { I 8 vector } buffer1_1_24_16x16_p_5_address1 { O 9 vector } buffer1_1_24_16x16_p_5_ce1 { O 1 bit } buffer1_1_24_16x16_p_5_we1 { O 1 bit } buffer1_1_24_16x16_p_5_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name buffer1_1_24_16x16_p_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_15 \
    op interface \
    ports { buffer1_1_24_16x16_p_15_address0 { O 9 vector } buffer1_1_24_16x16_p_15_ce0 { O 1 bit } buffer1_1_24_16x16_p_15_we0 { O 1 bit } buffer1_1_24_16x16_p_15_d0 { O 8 vector } buffer1_1_24_16x16_p_15_q0 { I 8 vector } buffer1_1_24_16x16_p_15_address1 { O 9 vector } buffer1_1_24_16x16_p_15_ce1 { O 1 bit } buffer1_1_24_16x16_p_15_we1 { O 1 bit } buffer1_1_24_16x16_p_15_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name buffer1_1_24_16x16_p_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_4 \
    op interface \
    ports { buffer1_1_24_16x16_p_4_address0 { O 9 vector } buffer1_1_24_16x16_p_4_ce0 { O 1 bit } buffer1_1_24_16x16_p_4_we0 { O 1 bit } buffer1_1_24_16x16_p_4_d0 { O 8 vector } buffer1_1_24_16x16_p_4_q0 { I 8 vector } buffer1_1_24_16x16_p_4_address1 { O 9 vector } buffer1_1_24_16x16_p_4_ce1 { O 1 bit } buffer1_1_24_16x16_p_4_we1 { O 1 bit } buffer1_1_24_16x16_p_4_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name buffer1_1_24_16x16_p_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_14 \
    op interface \
    ports { buffer1_1_24_16x16_p_14_address0 { O 9 vector } buffer1_1_24_16x16_p_14_ce0 { O 1 bit } buffer1_1_24_16x16_p_14_we0 { O 1 bit } buffer1_1_24_16x16_p_14_d0 { O 8 vector } buffer1_1_24_16x16_p_14_q0 { I 8 vector } buffer1_1_24_16x16_p_14_address1 { O 9 vector } buffer1_1_24_16x16_p_14_ce1 { O 1 bit } buffer1_1_24_16x16_p_14_we1 { O 1 bit } buffer1_1_24_16x16_p_14_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name buffer1_1_24_16x16_p_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_3 \
    op interface \
    ports { buffer1_1_24_16x16_p_3_address0 { O 9 vector } buffer1_1_24_16x16_p_3_ce0 { O 1 bit } buffer1_1_24_16x16_p_3_we0 { O 1 bit } buffer1_1_24_16x16_p_3_d0 { O 8 vector } buffer1_1_24_16x16_p_3_q0 { I 8 vector } buffer1_1_24_16x16_p_3_address1 { O 9 vector } buffer1_1_24_16x16_p_3_ce1 { O 1 bit } buffer1_1_24_16x16_p_3_we1 { O 1 bit } buffer1_1_24_16x16_p_3_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name buffer1_1_24_16x16_p_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_13 \
    op interface \
    ports { buffer1_1_24_16x16_p_13_address0 { O 9 vector } buffer1_1_24_16x16_p_13_ce0 { O 1 bit } buffer1_1_24_16x16_p_13_we0 { O 1 bit } buffer1_1_24_16x16_p_13_d0 { O 8 vector } buffer1_1_24_16x16_p_13_q0 { I 8 vector } buffer1_1_24_16x16_p_13_address1 { O 9 vector } buffer1_1_24_16x16_p_13_ce1 { O 1 bit } buffer1_1_24_16x16_p_13_we1 { O 1 bit } buffer1_1_24_16x16_p_13_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name buffer1_1_24_16x16_p_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_2 \
    op interface \
    ports { buffer1_1_24_16x16_p_2_address0 { O 9 vector } buffer1_1_24_16x16_p_2_ce0 { O 1 bit } buffer1_1_24_16x16_p_2_we0 { O 1 bit } buffer1_1_24_16x16_p_2_d0 { O 8 vector } buffer1_1_24_16x16_p_2_q0 { I 8 vector } buffer1_1_24_16x16_p_2_address1 { O 9 vector } buffer1_1_24_16x16_p_2_ce1 { O 1 bit } buffer1_1_24_16x16_p_2_we1 { O 1 bit } buffer1_1_24_16x16_p_2_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name buffer1_1_24_16x16_p_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_12 \
    op interface \
    ports { buffer1_1_24_16x16_p_12_address0 { O 9 vector } buffer1_1_24_16x16_p_12_ce0 { O 1 bit } buffer1_1_24_16x16_p_12_we0 { O 1 bit } buffer1_1_24_16x16_p_12_d0 { O 8 vector } buffer1_1_24_16x16_p_12_q0 { I 8 vector } buffer1_1_24_16x16_p_12_address1 { O 9 vector } buffer1_1_24_16x16_p_12_ce1 { O 1 bit } buffer1_1_24_16x16_p_12_we1 { O 1 bit } buffer1_1_24_16x16_p_12_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name buffer1_1_24_16x16_p_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_1 \
    op interface \
    ports { buffer1_1_24_16x16_p_1_address0 { O 9 vector } buffer1_1_24_16x16_p_1_ce0 { O 1 bit } buffer1_1_24_16x16_p_1_we0 { O 1 bit } buffer1_1_24_16x16_p_1_d0 { O 8 vector } buffer1_1_24_16x16_p_1_q0 { I 8 vector } buffer1_1_24_16x16_p_1_address1 { O 9 vector } buffer1_1_24_16x16_p_1_ce1 { O 1 bit } buffer1_1_24_16x16_p_1_we1 { O 1 bit } buffer1_1_24_16x16_p_1_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name buffer1_1_24_16x16_p_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_10 \
    op interface \
    ports { buffer1_1_24_16x16_p_10_address0 { O 9 vector } buffer1_1_24_16x16_p_10_ce0 { O 1 bit } buffer1_1_24_16x16_p_10_we0 { O 1 bit } buffer1_1_24_16x16_p_10_d0 { O 8 vector } buffer1_1_24_16x16_p_10_q0 { I 8 vector } buffer1_1_24_16x16_p_10_address1 { O 9 vector } buffer1_1_24_16x16_p_10_ce1 { O 1 bit } buffer1_1_24_16x16_p_10_we1 { O 1 bit } buffer1_1_24_16x16_p_10_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name buffer1_1_24_16x16_p \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p \
    op interface \
    ports { buffer1_1_24_16x16_p_address0 { O 9 vector } buffer1_1_24_16x16_p_ce0 { O 1 bit } buffer1_1_24_16x16_p_we0 { O 1 bit } buffer1_1_24_16x16_p_d0 { O 8 vector } buffer1_1_24_16x16_p_q0 { I 8 vector } buffer1_1_24_16x16_p_address1 { O 9 vector } buffer1_1_24_16x16_p_ce1 { O 1 bit } buffer1_1_24_16x16_p_we1 { O 1 bit } buffer1_1_24_16x16_p_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name buffer1_1_24_16x16_p_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_9 \
    op interface \
    ports { buffer1_1_24_16x16_p_9_address0 { O 9 vector } buffer1_1_24_16x16_p_9_ce0 { O 1 bit } buffer1_1_24_16x16_p_9_we0 { O 1 bit } buffer1_1_24_16x16_p_9_d0 { O 8 vector } buffer1_1_24_16x16_p_9_q0 { I 8 vector } buffer1_1_24_16x16_p_9_address1 { O 9 vector } buffer1_1_24_16x16_p_9_ce1 { O 1 bit } buffer1_1_24_16x16_p_9_we1 { O 1 bit } buffer1_1_24_16x16_p_9_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name buffer1_1_24_16x16_p_21 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_21 \
    op interface \
    ports { buffer1_1_24_16x16_p_21_address0 { O 9 vector } buffer1_1_24_16x16_p_21_ce0 { O 1 bit } buffer1_1_24_16x16_p_21_we0 { O 1 bit } buffer1_1_24_16x16_p_21_d0 { O 8 vector } buffer1_1_24_16x16_p_21_q0 { I 8 vector } buffer1_1_24_16x16_p_21_address1 { O 9 vector } buffer1_1_24_16x16_p_21_ce1 { O 1 bit } buffer1_1_24_16x16_p_21_we1 { O 1 bit } buffer1_1_24_16x16_p_21_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name buffer1_1_24_16x16_p_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_8 \
    op interface \
    ports { buffer1_1_24_16x16_p_8_address0 { O 9 vector } buffer1_1_24_16x16_p_8_ce0 { O 1 bit } buffer1_1_24_16x16_p_8_we0 { O 1 bit } buffer1_1_24_16x16_p_8_d0 { O 8 vector } buffer1_1_24_16x16_p_8_q0 { I 8 vector } buffer1_1_24_16x16_p_8_address1 { O 9 vector } buffer1_1_24_16x16_p_8_ce1 { O 1 bit } buffer1_1_24_16x16_p_8_we1 { O 1 bit } buffer1_1_24_16x16_p_8_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name buffer1_1_24_16x16_p_20 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_20 \
    op interface \
    ports { buffer1_1_24_16x16_p_20_address0 { O 9 vector } buffer1_1_24_16x16_p_20_ce0 { O 1 bit } buffer1_1_24_16x16_p_20_we0 { O 1 bit } buffer1_1_24_16x16_p_20_d0 { O 8 vector } buffer1_1_24_16x16_p_20_q0 { I 8 vector } buffer1_1_24_16x16_p_20_address1 { O 9 vector } buffer1_1_24_16x16_p_20_ce1 { O 1 bit } buffer1_1_24_16x16_p_20_we1 { O 1 bit } buffer1_1_24_16x16_p_20_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name buffer1_1_24_16x16_p_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buffer1_1_24_16x16_p_7 \
    op interface \
    ports { buffer1_1_24_16x16_p_7_address0 { O 9 vector } buffer1_1_24_16x16_p_7_ce0 { O 1 bit } buffer1_1_24_16x16_p_7_we0 { O 1 bit } buffer1_1_24_16x16_p_7_d0 { O 8 vector } buffer1_1_24_16x16_p_7_q0 { I 8 vector } buffer1_1_24_16x16_p_7_address1 { O 9 vector } buffer1_1_24_16x16_p_7_ce1 { O 1 bit } buffer1_1_24_16x16_p_7_we1 { O 1 bit } buffer1_1_24_16x16_p_7_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buffer1_1_24_16x16_p_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


