`timescale 1ns / 1ps
module vga_drive_tb;
    // 定义输入和输出信号
    reg sys_clk;
    reg rst_n;
    wire hsync;
    wire vsync;
    wire [15:0] rgb;

    // 实例化被测试的模块
    vga_drive dut (
      .sys_clk(sys_clk),
      .rst_n(rst_n),
      .hsync(hsync),
      .vsync(vsync),
      .rgb(rgb)
    );

    // 时钟生成
    always begin
        #10 sys_clk = ~sys_clk; // 系统时钟周期为 20ns，频率为 50MHz
    end

    // 测试用例的初始化和激励
    initial begin
        // 初始化信号
        sys_clk = 0;
        rst_n = 0;
        // 复位
        #20 rst_n = 1;
        // 运行一段时间
        #10000 $finish; 
    end

    // 监控输出信号
    always @(posedge sys_clk) begin
        $display("Time: %t, hsync: %b, vsync: %b, rgb: %h", $time, hsync, vsync, rgb);
    end
endmodule