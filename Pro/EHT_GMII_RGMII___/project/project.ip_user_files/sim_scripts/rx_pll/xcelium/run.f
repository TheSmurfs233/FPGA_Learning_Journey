-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../project.srcs/sources_1/ip/rx_pll/rx_pll_clk_wiz.v" \
  "../../../../project.srcs/sources_1/ip/rx_pll/rx_pll.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

