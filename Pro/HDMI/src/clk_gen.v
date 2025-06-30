module clk_gen (
    input  sys_clk,
    input  sys_rst_n,
    output c0_1x,
    output c1_5x,
    output locked
);

clk_wiz_0 clk_wiz_0_inst
 (
  // Clock out ports
  .c0_1x(c0_1x),     // output c0_1x
  .c1_5x(c1_5x),     // output c1_5x
  // Status and control signals
  .resetn(sys_rst_n), // input resetn
  .locked(locked),       // output locked
 // Clock in ports
  .sys_clk(sys_clk));      // input sys_clk




endmodule
