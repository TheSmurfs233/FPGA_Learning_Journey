module clk_gen (
    input  sys_clk,
    input  sys_rst_n,
    output c0_1x,
    output c1_5x,
    output locked
);
wire clk_55m;
wire locked_0;
wire locked_1;
assign locked = locked_0 & locked_1;


clk_wiz_0 clk_wiz_0_inst
 (
  // Clock out ports
  .c0_1x(c0_1x),     // output c0_1x
  .c1_5x(c1_5x),     // output c1_5x
  // Status and control signals
  .resetn(sys_rst_n), // input resetn
  .locked(locked_0),       // output locked
 // Clock in ports
  .sys_clk(clk_55m)
);      // input sys_clk

clk_wiz_1 clk_wiz_1_inst
   (
    // Clock out ports
    .clk_55m(clk_55m),     // output clk_55m
    // Status and control signals
    .resetn(sys_rst_n), // input resetn
    .locked(locked_1),       // output locked
   // Clock in ports
    .sys_clk(sys_clk)      // input sys_clk
);



endmodule
