`timescale 1ns/1ns

module eth_send_test_rgmii_tb;

	reg clk;
	reg rst_n;	
	wire rgmii_gtx_clk;
	wire [3:0]rgmii_tx_data;
	wire rgmii_tx_en;
	wire phy_rst_n;

	eth_send_test_rgmii eth_send_test_rgmii(
		.clk(clk),
		.rst_n(rst_n),
		.rgmii_gtx_clk(rgmii_gtx_clk),
		.rgmii_tx_data(rgmii_tx_data),
		.rgmii_tx_en(rgmii_tx_en),
		.phy_rst_n(phy_rst_n)
	);
	
	initial clk = 1;
	always #10 clk = ~clk;
	
	initial begin
		rst_n = 0;
		#201;
		rst_n = 1;
		#5000;
		$stop;
	end

endmodule
