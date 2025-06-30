set_property SRC_FILE_INFO {cfile:d:/FPGA_Learning_Journey/Pro/ETH_ARP___/project1/project.srcs/sources_1/ip/pll/pll.xdc rfile:../../../project.srcs/sources_1/ip/pll/pll.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
