module pll_top (
    input sys_clk,
    input rst_n,
    output locked,
    output clk_100m,
    output clk_100m_180p,
    output clk_50m,
    output clk_25m
  );
  clk_wiz_0 clk_wiz_0_ins(
              .clk_in1(sys_clk),
              .resetn(rst_n),
              .locked(locked),
              .clk_out1(clk_100m),
              .clk_out2(clk_100m_180p),
              .clk_out3(clk_50m),
              .clk_out4(clk_25m)
            );
endmodule
