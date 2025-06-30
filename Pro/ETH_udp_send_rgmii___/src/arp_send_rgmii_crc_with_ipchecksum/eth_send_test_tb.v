`timescale 1ns/1ns

module eth_send_test_tb;

	reg rst_n;	
	//GMII接口
	reg gmii_tx_clk;
	wire gmii_tx_en;
	wire gmii_tx_er;
	wire [7:0]gmii_tx_data;
	wire phy_rst_n;

	eth_send_test eth_send_test(
		.rst_n(rst_n),
		.gmii_tx_clk(gmii_tx_clk),
		.gmii_tx_en(gmii_tx_en),
		.gmii_tx_er(gmii_tx_er),
		.gmii_tx_data(gmii_tx_data),
		.phy_rst_n(phy_rst_n)
	);
	
	initial gmii_tx_clk = 1;
	always #20 gmii_tx_clk = ~gmii_tx_clk;
	
	initial begin
		rst_n = 0;
		#201;
		rst_n = 1;
		#200000;
		$stop;
	end

endmodule
