set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN R2 [get_ports {led[0]}]
set_property PACKAGE_PIN R3 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN R4 [get_ports clk]
set_property PACKAGE_PIN U2 [get_ports rst_n]

create_clock -period 20.000 -name clk [get_ports clk]



connect_debug_port u_ila_0/probe5 [get_nets [list {u_data_mem_0/data_mem[0]_0[0]} {u_data_mem_0/data_mem[0]_0[1]} {u_data_mem_0/data_mem[0]_0[2]} {u_data_mem_0/data_mem[0]_0[3]} {u_data_mem_0/data_mem[0]_0[4]} {u_data_mem_0/data_mem[0]_0[5]} {u_data_mem_0/data_mem[0]_0[6]} {u_data_mem_0/data_mem[0]_0[7]} {u_data_mem_0/data_mem[0]_0[8]} {u_data_mem_0/data_mem[0]_0[9]} {u_data_mem_0/data_mem[0]_0[10]} {u_data_mem_0/data_mem[0]_0[11]} {u_data_mem_0/data_mem[0]_0[12]} {u_data_mem_0/data_mem[0]_0[13]} {u_data_mem_0/data_mem[0]_0[14]} {u_data_mem_0/data_mem[0]_0[15]} {u_data_mem_0/data_mem[0]_0[16]} {u_data_mem_0/data_mem[0]_0[17]} {u_data_mem_0/data_mem[0]_0[18]} {u_data_mem_0/data_mem[0]_0[19]} {u_data_mem_0/data_mem[0]_0[20]} {u_data_mem_0/data_mem[0]_0[21]} {u_data_mem_0/data_mem[0]_0[22]} {u_data_mem_0/data_mem[0]_0[23]} {u_data_mem_0/data_mem[0]_0[24]} {u_data_mem_0/data_mem[0]_0[25]} {u_data_mem_0/data_mem[0]_0[26]} {u_data_mem_0/data_mem[0]_0[27]} {u_data_mem_0/data_mem[0]_0[28]} {u_data_mem_0/data_mem[0]_0[29]} {u_data_mem_0/data_mem[0]_0[30]} {u_data_mem_0/data_mem[0]_0[31]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list {u_data_mem_0/data_mem[1]_1[0]} {u_data_mem_0/data_mem[1]_1[1]} {u_data_mem_0/data_mem[1]_1[2]} {u_data_mem_0/data_mem[1]_1[3]} {u_data_mem_0/data_mem[1]_1[4]} {u_data_mem_0/data_mem[1]_1[5]} {u_data_mem_0/data_mem[1]_1[6]} {u_data_mem_0/data_mem[1]_1[7]} {u_data_mem_0/data_mem[1]_1[8]} {u_data_mem_0/data_mem[1]_1[9]} {u_data_mem_0/data_mem[1]_1[10]} {u_data_mem_0/data_mem[1]_1[11]} {u_data_mem_0/data_mem[1]_1[12]} {u_data_mem_0/data_mem[1]_1[13]} {u_data_mem_0/data_mem[1]_1[14]} {u_data_mem_0/data_mem[1]_1[15]} {u_data_mem_0/data_mem[1]_1[16]} {u_data_mem_0/data_mem[1]_1[17]} {u_data_mem_0/data_mem[1]_1[18]} {u_data_mem_0/data_mem[1]_1[19]} {u_data_mem_0/data_mem[1]_1[20]} {u_data_mem_0/data_mem[1]_1[21]} {u_data_mem_0/data_mem[1]_1[22]} {u_data_mem_0/data_mem[1]_1[23]} {u_data_mem_0/data_mem[1]_1[24]} {u_data_mem_0/data_mem[1]_1[25]} {u_data_mem_0/data_mem[1]_1[26]} {u_data_mem_0/data_mem[1]_1[27]} {u_data_mem_0/data_mem[1]_1[28]} {u_data_mem_0/data_mem[1]_1[29]} {u_data_mem_0/data_mem[1]_1[30]} {u_data_mem_0/data_mem[1]_1[31]}]]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {next_pc[0]} {next_pc[1]} {next_pc[2]} {next_pc[3]} {next_pc[4]} {next_pc[5]} {next_pc[6]} {next_pc[7]} {next_pc[8]} {next_pc[9]} {next_pc[10]} {next_pc[11]} {next_pc[12]} {next_pc[13]} {next_pc[14]} {next_pc[15]} {next_pc[16]} {next_pc[17]} {next_pc[18]} {next_pc[19]} {next_pc[20]} {next_pc[21]} {next_pc[22]} {next_pc[23]} {next_pc[24]} {next_pc[25]} {next_pc[26]} {next_pc[27]} {next_pc[28]} {next_pc[29]} {next_pc[30]} {next_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {mem_wb_next_pc[0]} {mem_wb_next_pc[1]} {mem_wb_next_pc[2]} {mem_wb_next_pc[3]} {mem_wb_next_pc[4]} {mem_wb_next_pc[5]} {mem_wb_next_pc[6]} {mem_wb_next_pc[7]} {mem_wb_next_pc[8]} {mem_wb_next_pc[9]} {mem_wb_next_pc[10]} {mem_wb_next_pc[11]} {mem_wb_next_pc[12]} {mem_wb_next_pc[13]} {mem_wb_next_pc[14]} {mem_wb_next_pc[15]} {mem_wb_next_pc[16]} {mem_wb_next_pc[17]} {mem_wb_next_pc[18]} {mem_wb_next_pc[19]} {mem_wb_next_pc[20]} {mem_wb_next_pc[21]} {mem_wb_next_pc[22]} {mem_wb_next_pc[23]} {mem_wb_next_pc[24]} {mem_wb_next_pc[25]} {mem_wb_next_pc[26]} {mem_wb_next_pc[27]} {mem_wb_next_pc[28]} {mem_wb_next_pc[29]} {mem_wb_next_pc[30]} {mem_wb_next_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {mem_wb_mem_rdata[0]} {mem_wb_mem_rdata[1]} {mem_wb_mem_rdata[2]} {mem_wb_mem_rdata[3]} {mem_wb_mem_rdata[4]} {mem_wb_mem_rdata[5]} {mem_wb_mem_rdata[6]} {mem_wb_mem_rdata[7]} {mem_wb_mem_rdata[8]} {mem_wb_mem_rdata[9]} {mem_wb_mem_rdata[10]} {mem_wb_mem_rdata[11]} {mem_wb_mem_rdata[12]} {mem_wb_mem_rdata[13]} {mem_wb_mem_rdata[14]} {mem_wb_mem_rdata[15]} {mem_wb_mem_rdata[16]} {mem_wb_mem_rdata[17]} {mem_wb_mem_rdata[18]} {mem_wb_mem_rdata[19]} {mem_wb_mem_rdata[20]} {mem_wb_mem_rdata[21]} {mem_wb_mem_rdata[22]} {mem_wb_mem_rdata[23]} {mem_wb_mem_rdata[24]} {mem_wb_mem_rdata[25]} {mem_wb_mem_rdata[26]} {mem_wb_mem_rdata[27]} {mem_wb_mem_rdata[28]} {mem_wb_mem_rdata[29]} {mem_wb_mem_rdata[30]} {mem_wb_mem_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {mem_wb_inst[0]} {mem_wb_inst[1]} {mem_wb_inst[2]} {mem_wb_inst[3]} {mem_wb_inst[4]} {mem_wb_inst[5]} {mem_wb_inst[6]} {mem_wb_inst[7]} {mem_wb_inst[8]} {mem_wb_inst[9]} {mem_wb_inst[10]} {mem_wb_inst[11]} {mem_wb_inst[12]} {mem_wb_inst[13]} {mem_wb_inst[14]} {mem_wb_inst[15]} {mem_wb_inst[16]} {mem_wb_inst[17]} {mem_wb_inst[18]} {mem_wb_inst[19]} {mem_wb_inst[20]} {mem_wb_inst[21]} {mem_wb_inst[22]} {mem_wb_inst[23]} {mem_wb_inst[24]} {mem_wb_inst[25]} {mem_wb_inst[26]} {mem_wb_inst[27]} {mem_wb_inst[28]} {mem_wb_inst[29]} {mem_wb_inst[30]} {mem_wb_inst[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {mem_wb_curr_pc[0]} {mem_wb_curr_pc[1]} {mem_wb_curr_pc[2]} {mem_wb_curr_pc[3]} {mem_wb_curr_pc[4]} {mem_wb_curr_pc[5]} {mem_wb_curr_pc[6]} {mem_wb_curr_pc[7]} {mem_wb_curr_pc[8]} {mem_wb_curr_pc[9]} {mem_wb_curr_pc[10]} {mem_wb_curr_pc[11]} {mem_wb_curr_pc[12]} {mem_wb_curr_pc[13]} {mem_wb_curr_pc[14]} {mem_wb_curr_pc[15]} {mem_wb_curr_pc[16]} {mem_wb_curr_pc[17]} {mem_wb_curr_pc[18]} {mem_wb_curr_pc[19]} {mem_wb_curr_pc[20]} {mem_wb_curr_pc[21]} {mem_wb_curr_pc[22]} {mem_wb_curr_pc[23]} {mem_wb_curr_pc[24]} {mem_wb_curr_pc[25]} {mem_wb_curr_pc[26]} {mem_wb_curr_pc[27]} {mem_wb_curr_pc[28]} {mem_wb_curr_pc[29]} {mem_wb_curr_pc[30]} {mem_wb_curr_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {ex_mem_curr_pc[0]} {ex_mem_curr_pc[1]} {ex_mem_curr_pc[2]} {ex_mem_curr_pc[3]} {ex_mem_curr_pc[4]} {ex_mem_curr_pc[5]} {ex_mem_curr_pc[6]} {ex_mem_curr_pc[7]} {ex_mem_curr_pc[8]} {ex_mem_curr_pc[9]} {ex_mem_curr_pc[10]} {ex_mem_curr_pc[11]} {ex_mem_curr_pc[12]} {ex_mem_curr_pc[13]} {ex_mem_curr_pc[14]} {ex_mem_curr_pc[15]} {ex_mem_curr_pc[16]} {ex_mem_curr_pc[17]} {ex_mem_curr_pc[18]} {ex_mem_curr_pc[19]} {ex_mem_curr_pc[20]} {ex_mem_curr_pc[21]} {ex_mem_curr_pc[22]} {ex_mem_curr_pc[23]} {ex_mem_curr_pc[24]} {ex_mem_curr_pc[25]} {ex_mem_curr_pc[26]} {ex_mem_curr_pc[27]} {ex_mem_curr_pc[28]} {ex_mem_curr_pc[29]} {ex_mem_curr_pc[30]} {ex_mem_curr_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {curr_pc[0]} {curr_pc[1]} {curr_pc[2]} {curr_pc[3]} {curr_pc[4]} {curr_pc[5]} {curr_pc[6]} {curr_pc[7]} {curr_pc[8]} {curr_pc[9]} {curr_pc[10]} {curr_pc[11]} {curr_pc[12]} {curr_pc[13]} {curr_pc[14]} {curr_pc[15]} {curr_pc[16]} {curr_pc[17]} {curr_pc[18]} {curr_pc[19]} {curr_pc[20]} {curr_pc[21]} {curr_pc[22]} {curr_pc[23]} {curr_pc[24]} {curr_pc[25]} {curr_pc[26]} {curr_pc[27]} {curr_pc[28]} {curr_pc[29]} {curr_pc[30]} {curr_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {ex_mem_alu_res[0]} {ex_mem_alu_res[1]} {ex_mem_alu_res[2]} {ex_mem_alu_res[3]} {ex_mem_alu_res[4]} {ex_mem_alu_res[5]} {ex_mem_alu_res[6]} {ex_mem_alu_res[7]} {ex_mem_alu_res[8]} {ex_mem_alu_res[9]} {ex_mem_alu_res[10]} {ex_mem_alu_res[11]} {ex_mem_alu_res[12]} {ex_mem_alu_res[13]} {ex_mem_alu_res[14]} {ex_mem_alu_res[15]} {ex_mem_alu_res[16]} {ex_mem_alu_res[17]} {ex_mem_alu_res[18]} {ex_mem_alu_res[19]} {ex_mem_alu_res[20]} {ex_mem_alu_res[21]} {ex_mem_alu_res[22]} {ex_mem_alu_res[23]} {ex_mem_alu_res[24]} {ex_mem_alu_res[25]} {ex_mem_alu_res[26]} {ex_mem_alu_res[27]} {ex_mem_alu_res[28]} {ex_mem_alu_res[29]} {ex_mem_alu_res[30]} {ex_mem_alu_res[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 32 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {ex_mem_reg2_rdata[0]} {ex_mem_reg2_rdata[1]} {ex_mem_reg2_rdata[2]} {ex_mem_reg2_rdata[3]} {ex_mem_reg2_rdata[4]} {ex_mem_reg2_rdata[5]} {ex_mem_reg2_rdata[6]} {ex_mem_reg2_rdata[7]} {ex_mem_reg2_rdata[8]} {ex_mem_reg2_rdata[9]} {ex_mem_reg2_rdata[10]} {ex_mem_reg2_rdata[11]} {ex_mem_reg2_rdata[12]} {ex_mem_reg2_rdata[13]} {ex_mem_reg2_rdata[14]} {ex_mem_reg2_rdata[15]} {ex_mem_reg2_rdata[16]} {ex_mem_reg2_rdata[17]} {ex_mem_reg2_rdata[18]} {ex_mem_reg2_rdata[19]} {ex_mem_reg2_rdata[20]} {ex_mem_reg2_rdata[21]} {ex_mem_reg2_rdata[22]} {ex_mem_reg2_rdata[23]} {ex_mem_reg2_rdata[24]} {ex_mem_reg2_rdata[25]} {ex_mem_reg2_rdata[26]} {ex_mem_reg2_rdata[27]} {ex_mem_reg2_rdata[28]} {ex_mem_reg2_rdata[29]} {ex_mem_reg2_rdata[30]} {ex_mem_reg2_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 5 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {ex_mem_reg_waddr[0]} {ex_mem_reg_waddr[1]} {ex_mem_reg_waddr[2]} {ex_mem_reg_waddr[3]} {ex_mem_reg_waddr[4]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 32 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {mem_rdata[0]} {mem_rdata[1]} {mem_rdata[2]} {mem_rdata[3]} {mem_rdata[4]} {mem_rdata[5]} {mem_rdata[6]} {mem_rdata[7]} {mem_rdata[8]} {mem_rdata[9]} {mem_rdata[10]} {mem_rdata[11]} {mem_rdata[12]} {mem_rdata[13]} {mem_rdata[14]} {mem_rdata[15]} {mem_rdata[16]} {mem_rdata[17]} {mem_rdata[18]} {mem_rdata[19]} {mem_rdata[20]} {mem_rdata[21]} {mem_rdata[22]} {mem_rdata[23]} {mem_rdata[24]} {mem_rdata[25]} {mem_rdata[26]} {mem_rdata[27]} {mem_rdata[28]} {mem_rdata[29]} {mem_rdata[30]} {mem_rdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {ex_mem_next_pc[0]} {ex_mem_next_pc[1]} {ex_mem_next_pc[2]} {ex_mem_next_pc[3]} {ex_mem_next_pc[4]} {ex_mem_next_pc[5]} {ex_mem_next_pc[6]} {ex_mem_next_pc[7]} {ex_mem_next_pc[8]} {ex_mem_next_pc[9]} {ex_mem_next_pc[10]} {ex_mem_next_pc[11]} {ex_mem_next_pc[12]} {ex_mem_next_pc[13]} {ex_mem_next_pc[14]} {ex_mem_next_pc[15]} {ex_mem_next_pc[16]} {ex_mem_next_pc[17]} {ex_mem_next_pc[18]} {ex_mem_next_pc[19]} {ex_mem_next_pc[20]} {ex_mem_next_pc[21]} {ex_mem_next_pc[22]} {ex_mem_next_pc[23]} {ex_mem_next_pc[24]} {ex_mem_next_pc[25]} {ex_mem_next_pc[26]} {ex_mem_next_pc[27]} {ex_mem_next_pc[28]} {ex_mem_next_pc[29]} {ex_mem_next_pc[30]} {ex_mem_next_pc[31]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
