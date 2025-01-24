`timescale 1ns / 1ps

module vga_clk_gen_tb;

    // 定义输入和输出信号
    reg clk;
    reg rst_n;
    wire vga_clk;
    wire locked;

    // 实例化被测试的模块
    vga_clk_gen dut (
     .clk(clk),
     .rst_n(rst_n),
     .vga_clk(vga_clk),
     .locked(locked)
    );

    // 时钟生成，50MHz
    always begin
        #10 clk = ~clk; // 50MHz 时钟，周期为 20ns
    end

    // 测试过程
    initial begin
        // 初始化信号
        clk = 0;
        rst_n = 0;

        // 复位
        #20 rst_n = 1;

        // 运行一段时间
        #10000 $finish;
    end

    // 监控输出
    always @(posedge clk) begin
        if (rst_n) begin
            $display("vga_clk = %b, locked = %b", vga_clk, locked);
        end
    end

endmodule