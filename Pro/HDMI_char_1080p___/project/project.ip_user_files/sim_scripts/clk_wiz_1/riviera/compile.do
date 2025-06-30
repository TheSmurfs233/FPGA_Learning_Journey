transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../ipstatic" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"D:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"../../../../project.gen/sources_1/ip/clk_wiz_1/clk_wiz_1_clk_wiz.v" \
"../../../../project.gen/sources_1/ip/clk_wiz_1/clk_wiz_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

