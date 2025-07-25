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
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 3
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tfgg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.cache/wt [current_project]
set_property parent.project_path D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/udp_tx/crc32_d8.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/udp_tx/eth_udp_send.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/udp_tx/eth_udp_tx_gmii.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/udp_tx/gmii_to_rgmii.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/ov5640/i2c_ctrl.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/udp_tx/ip_checksum.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/ov5640/ov5640_cfg.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/ov5640/ov5640_data.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/ov5640/ov5640_top.v
  D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/src/OV5640_ETH_udp.v
}
read_ip -quiet D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/eth_dcfifo/eth_dcfifo.xci
set_property used_in_implementation false [get_files -all d:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/eth_dcfifo/eth_dcfifo.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/eth_dcfifo/eth_dcfifo_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/eth_dcfifo/eth_dcfifo_ooc.xdc]

read_ip -quiet D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/pll/pll.xci
set_property used_in_implementation false [get_files -all d:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/pll/pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/pll/pll.xdc]
set_property used_in_implementation false [get_files -all d:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/sources_1/ip/pll/pll_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/constrs_1/new/udp.xdc
set_property used_in_implementation false [get_files D:/FPGA_Learning_Journey/Pro/OV5640_ETH_udp___/project/project.srcs/constrs_1/new/udp.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top ov5640_eth_udp -part xc7a35tfgg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ov5640_eth_udp.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file ov5640_eth_udp_utilization_synth.rpt -pb ov5640_eth_udp_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
