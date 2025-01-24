connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299847714" && level==0} -index 1
fpga -file D:/FPGA_Learning_Journey/Pro/PS_PL/project/vitis/project/_ide/bitstream/mcu_design_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/FPGA_Learning_Journey/Pro/PS_PL/project/vitis/mcu_design_wrapper/export/mcu_design_wrapper/hw/mcu_design_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/FPGA_Learning_Journey/Pro/PS_PL/project/vitis/project/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/FPGA_Learning_Journey/Pro/PS_PL/project/vitis/project/Debug/project.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
