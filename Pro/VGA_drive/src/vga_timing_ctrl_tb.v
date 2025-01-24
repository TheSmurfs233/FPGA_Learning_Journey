`timescale 1ns/1ps
module vga_timing_ctrl_tb;
    // 定义输入输出信号
    reg vga_clk;
    reg rst_n;
    reg [15:0] pix_data;
    wire hsync;
    wire vsync;
    wire [9:0] pix_x;
    wire [9:0] pix_y;
    wire [15:0] rgb;
    // 实例化被测试模块
    vga_timing_ctrl dut (
      .vga_clk(vga_clk),
      .rst_n(rst_n),
      .hsync(hsync),
      .vsync(vsync),
      .pix_x(pix_x),
      .pix_y(pix_y)
    );

    // 时钟生成
    always begin
        #20 vga_clk = ~vga_clk; // 时钟周期为 40ns，频率为 25MHz
    end

    // 初始化信号
    initial begin
        vga_clk = 0;
        rst_n = 0;

        // 复位
        #90 rst_n = 1;

        // 测试持续时间
        //#10000 $finish;
    end

    // 监测信号
    always @(posedge vga_clk) begin
        $display("h_cnt: %d, v_cnt: %d, hsync: %d, vsync: %d", dut.h_cnt, dut.v_cnt, hsync, vsync);
    end

endmodule