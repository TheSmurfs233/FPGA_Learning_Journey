module vga_clk_gen (
    input  clk,
    input  rst_n,
    output vga_clk,
    output locked 
);
    clk_wiz_0  clk_wiz_0_inst (
    .vga_clk(vga_clk),
    .resetn(rst_n),
    .locked(locked),
    .sys_clk(clk)
  );
endmodule
