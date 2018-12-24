# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/MUL_DP.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_CTL_s_axi.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_DATA_BIAS_m_axi.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_DATA_INPUT_OUTPUT_m_axi.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_DATA_OTHER_WEIGHTS_m_axi.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_Shufbll.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_Shufczy.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_ShufdNK.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_biascyx.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_biasdMK.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_buffb8t.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_buffb9t.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_buffdmF.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_buffdnG.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_buffeAS.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_buffeBS.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_convShg.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_convThq.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_convWhU.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_conve1W.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_fc_bUhA.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_featcxx.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_featdLJ.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_feateZW.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_imagVhK.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mul_bkb.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mul_fcY.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mul_fdY.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mux_Aem.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mux_CeG.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mux_Ee0.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mux_IfE.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_mux_Rg6.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_p3X3_1X1_WEIGHTS_m_axi.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_shufe0W.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_uremBew.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_uremDeQ.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_uremFfa.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_uremGfk.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_uremHfu.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_uremfaY.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_uremfbY.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_weigb7t.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_weigcXB.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_weigdlF.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_weigebO.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2_weigezS.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/avgpool.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/conv1_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/conv1_p_weight_tecud.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/conv_last.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/conv_last_weight_JfO.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/fc.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_24_l_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_24_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_24_r_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_48_l_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_48_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_48_r_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_96_l_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_96_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/shuffle_96_r_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_1x1_16_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_1x1_16p_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_1x1_32_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_1x1_4_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_1x1_8_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_1x1_8p_p.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_16_no_re.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_16_strid.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_16_strid_1.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_32_strid.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_4_no_rel.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_8_no_rel.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_8_stride.v
  C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/subconv_3x3_8_stride_1.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2.xdc
set_property used_in_implementation false [get_files C:/Users/lyh67/Downloads/acceleartor_padding/acceleartor_hls_padding/try_single_function/impl/verilog/ShuffleNetV2.xdc]


synth_design -top ShuffleNetV2 -part xc7z020clg484-1 -no_iobuf -mode out_of_context


write_checkpoint -force -noxdef ShuffleNetV2.dcp

catch { report_utilization -file ShuffleNetV2_utilization_synth.rpt -pb ShuffleNetV2_utilization_synth.pb }