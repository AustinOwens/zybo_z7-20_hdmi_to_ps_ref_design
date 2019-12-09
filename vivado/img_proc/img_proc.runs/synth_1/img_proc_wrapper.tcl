# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.cache/wt [current_project]
set_property parent.project_path /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/austin/Desktop/projects/zybo/zybo_img_proc/vhdl/digilent/vivado-library
  /home/austin/Desktop/projects/custom_ip_cores/video_stream_mux
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/imports/hdl/img_proc_wrapper.vhd
add_files /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/img_proc.bd
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_processing_system7_0_0/img_proc_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_xbar_2/img_proc_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_proc_sys_reset_0_0/img_proc_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_proc_sys_reset_0_0/img_proc_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_proc_sys_reset_0_0/img_proc_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_xbar_3/img_proc_xbar_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axi_vdma_0_0/img_proc_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axi_vdma_0_0/img_proc_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axi_vdma_0_0/img_proc_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_v_vid_in_axi4s_0_0/img_proc_v_vid_in_axi4s_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_v_vid_in_axi4s_0_0/img_proc_v_vid_in_axi4s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axis_subset_converter_0_0/img_proc_axis_subset_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axi_gpio_0_1/img_proc_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axi_gpio_0_1/img_proc_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_axi_gpio_0_1/img_proc_axi_gpio_0_1.xdc]
set_property used_in_synthesis false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_ila_0_1/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_ila_0_1/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_ila_0_1/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_ila_0_1/img_proc_ila_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_v_tpg_0_0/img_proc_v_tpg_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_v_tpg_0_0/img_proc_v_tpg_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_dvi2rgb_0_1/src/ila_pixclk/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_dvi2rgb_0_1/src/ila_pixclk/ila_pixclk_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_dvi2rgb_0_1/src/ila_refclk/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_dvi2rgb_0_1/src/ila_refclk/ila_refclk_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_dvi2rgb_0_1/src/ila_timing_workaround.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_dvi2rgb_0_1/src/dvi2rgb.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_dvi2rgb_0_1/src/dvi2rgb_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_auto_pc_0/img_proc_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/ip/img_proc_auto_pc_1/img_proc_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/austin/Desktop/projects/zybo/zybo_img_proc/vivado/img_proc/img_proc.srcs/sources_1/bd/img_proc/img_proc_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/austin/Desktop/projects/zybo/zybo_img_proc/vhdl/Zybo-Z7-Master.xdc
set_property used_in_implementation false [get_files /home/austin/Desktop/projects/zybo/zybo_img_proc/vhdl/Zybo-Z7-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top img_proc_wrapper -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef img_proc_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file img_proc_wrapper_utilization_synth.rpt -pb img_proc_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
