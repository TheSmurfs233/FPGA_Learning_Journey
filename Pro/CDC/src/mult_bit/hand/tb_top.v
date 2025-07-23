`timescale 1ns/1ps //时间精度
`define  CLK_TIME_A    60	 
`define  CLK_TIME_B    75

module tb_top ;
reg       r_clk_a            ;
reg       r_clk_b            ;
reg       r_rst_n            ;

top u_top(
    .i_clk_a  ( r_clk_a   ),
    .i_clk_b  ( r_clk_b   ),
    .i_rst_n  ( r_rst_n   )   
);

initial begin
    r_clk_a = 0;
    forever
        #(`CLK_TIME_A/2) r_clk_a = ~r_clk_a;
end

initial begin
    r_clk_b = 0;
    forever
        #(`CLK_TIME_B/2) r_clk_b = ~r_clk_b;
end


initial begin
    r_rst_n  = 0 ;
    repeat(25) @(posedge r_clk_a);
    r_rst_n  = 1 ;
    repeat(200) @(posedge r_clk_a);
    $finish;
end

// initial begin
// $fsdbDumpfile("tx_req.fsdb");
// $fsdbDumpvars(0);
// end


endmodule
