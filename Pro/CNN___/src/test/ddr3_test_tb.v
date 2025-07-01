`timescale 1ns/1ps

module ddr3_test_tb();

// -----------------------------------------------
// 时钟和复位信号生成
// -----------------------------------------------
reg clk;
reg rst_n;

initial begin
    clk = 0;
    forever #10 clk = ~clk;  // 50MHz时钟
end

initial begin
    rst_n = 0;            // 初始复位有效
    #100 rst_n = 1;       // 100ns后释放复位

    // #360_000 rst_n=0;
    // #100 rst_n=1;
end

// -----------------------------------------------
// 被测模块实例化
// -----------------------------------------------
ddr3_test_top u_top (
    .sys_clk   (clk),
    .sys_rst_n (rst_n)
);

endmodule