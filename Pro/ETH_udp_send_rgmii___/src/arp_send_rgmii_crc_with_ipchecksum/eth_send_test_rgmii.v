
module eth_send_test_rgmii(
	input clk,
	input rst_n,
	
	output rgmii_tx_clk,
	output [3:0]rgmii_tx_data,
	output rgmii_tx_en,

    output phy_rst_n
);

	
	wire gmii_tx_en;	
	wire gmii_tx_er;	
	wire [7:0]gmii_tx_data; 
	
	
	
	wire gmii_tx_clk;
	
	pll pll(
		.clk_in1(clk),//50MHz
		.clk_out1(gmii_tx_clk)//125MHz
	);
	
	eth_send_test eth_send_test(
		.rst_n(rst_n),
		.gmii_tx_clk(gmii_tx_clk),
		.gmii_tx_en(gmii_tx_en),
		.gmii_tx_er(gmii_tx_er),
		.gmii_tx_data(gmii_tx_data),
		.phy_rst_n(phy_rst_n)
	);
	gmii_to_rgmii  gmii_to_rgmii_inst (
    .rst_n(rst_n),
    .gmii_tx_clk(gmii_tx_clk),
    .gmii_tx_data(gmii_tx_data),
    .gmii_tx_en(gmii_tx_en),
    .gmii_tx_er(gmii_tx_er),
    .rgmii_tx_clk(rgmii_tx_clk),
    .rgmii_tx_data(rgmii_tx_data),
    .rgmii_tx_en(rgmii_tx_en)
  );


endmodule
