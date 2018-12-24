# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.cache/wt [current_project]
set_property parent.project_path C:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths c:/Users/lyh67/Downloads/shufflenetv2_final_solution/acceleartor_hls_final_solution/final_solution [current_project]
set_property ip_output_repo c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/imports/hdl/accelerator_bd_wrapper.v
add_files C:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/accelerator_bd.bd
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_processing_system7_0_1/accelerator_bd_processing_system7_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_rst_ps7_0_100M_1/accelerator_bd_rst_ps7_0_100M_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_rst_ps7_0_100M_1/accelerator_bd_rst_ps7_0_100M_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_rst_ps7_0_100M_1/accelerator_bd_rst_ps7_0_100M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_5/bd_67a5_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_11/bd_67a5_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_6/bd_67a5_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_7/bd_67a5_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_8/bd_67a5_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_9/bd_67a5_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_10/bd_67a5_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_1/bd_67a5_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/bd_0/ip/ip_1/bd_67a5_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_5/bd_9e52_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_11/bd_9e52_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_6/bd_9e52_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_7/bd_9e52_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_8/bd_9e52_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_9/bd_9e52_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_10/bd_9e52_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_1/bd_9e52_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/bd_0/ip/ip_1/bd_9e52_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_1_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_5/bd_9ea2_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_11/bd_9ea2_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_6/bd_9ea2_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_7/bd_9ea2_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_8/bd_9ea2_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_9/bd_9ea2_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_10/bd_9ea2_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_1/bd_9ea2_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/bd_0/ip/ip_1/bd_9ea2_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_timer_0_1/accelerator_bd_axi_timer_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_timer_0_1/accelerator_bd_axi_timer_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_xbar_0/accelerator_bd_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_5/bd_5e63_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_11/bd_5e63_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_6/bd_5e63_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_7/bd_5e63_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_8/bd_5e63_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_9/bd_5e63_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_10/bd_5e63_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_1/bd_5e63_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/bd_0/ip/ip_1/bd_5e63_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_axi_smc_2_1/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_ShuffleNetV2_0_1/constraints/ShuffleNetV2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/ip/accelerator_bd_auto_pc_0/accelerator_bd_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/accelerator_bd_ooc.xdc]
set_property is_locked true [get_files C:/Users/lyh67/Downloads/shufflenetv2_final_solution/accelerator_final_solution/accelerator_demo.srcs/sources_1/bd/accelerator_bd/accelerator_bd.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top accelerator_bd_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef accelerator_bd_wrapper.dcp

catch { report_utilization -file accelerator_bd_wrapper_utilization_synth.rpt -pb accelerator_bd_wrapper_utilization_synth.pb }
