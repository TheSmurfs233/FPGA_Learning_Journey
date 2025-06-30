#PCIe reference clock 100MHz
set_property PACKAGE_PIN F6 [get_ports {pcie_ref_clk_p[0]}]
# PCIe MGT interface
set_property PACKAGE_PIN D9 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN B10 [get_ports {pcie_mgt_rxp[1]}]
set_property PACKAGE_PIN D7 [get_ports {pcie_mgt_txp[0]}]
set_property PACKAGE_PIN B6 [get_ports {pcie_mgt_txp[1]}]
# PCIe rst signal
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports pcie_rst_n]

# led interface
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS15} [get_ports {led_tri_o[0]}]
set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS15} [get_ports {led_tri_o[1]}]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS15} [get_ports {led_tri_o[2]}]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS15} [get_ports lnk_up_led]
# key interface
set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVCMOS15} [get_ports {key_tri_i[0]}]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS15} [get_ports {key_tri_i[1]}]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS15} [get_ports {key_tri_i[2]}]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS15} [get_ports {key_tri_i[3]}]
# irq ack signal
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS15} [get_ports irq_ack]
#SPI 相关设置用于程序固化
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]