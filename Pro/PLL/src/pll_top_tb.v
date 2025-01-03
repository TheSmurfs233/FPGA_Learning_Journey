`timescale 1ns/1ps
module pll_top_tb ();
    reg sys_clk,rst_n;
    wire locked,clk_100m,clk_100m_180p,clk_50m,clk_25m;
    pll_top uut(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .locked(locked),
        .clk_100m(clk_100m),
        .clk_100m_180p(clk_100m_180p),
        .clk_50m(clk_50m),
        .clk_25m(clk_25m)
    );
    // 产生时钟信号
    always #10 sys_clk = ~sys_clk;  // 50MHz时钟，周期为20ns
    // 测试过程
    initial begin
        // 初始化信号
        rst_n=0;
        sys_clk=0;
        #50;
        rst_n=1;
    end
endmodule 