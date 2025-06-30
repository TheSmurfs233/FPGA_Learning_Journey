`timescale 1ns/1ps

module tb_uart_tx_4byte;

    // 参数定义
    parameter CLK_FREQ = 50_000_000; // 50MHz时钟频率
    parameter UART_BAUD = 115200;    // 波特率
    parameter CLK_PERIOD = 20;       // 时钟周期，单位为ns

    // 输入信号
    reg clk;          // 时钟信号
    reg rst_n;        // 复位信号，低电平有效
    reg uart_tx_en;   // 发送使能信号
    reg [31:0] uart_tx_data; // 发送数据

    // 输出信号
    wire uart_tx_done; // 发送完成标志
    wire uart_tx_d;    // 串口发送数据线

    // 实例化被测试模块
    uart_tx_4byte #(
        .CLK_FREQ(CLK_FREQ),
        .UART_BAUD(UART_BAUD)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .uart_tx_en(uart_tx_en),
        .uart_tx_data(uart_tx_data),
        .uart_tx_done(uart_tx_done),
        .uart_tx_d(uart_tx_d)
    );

    // 生成时钟信号
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk;
    end

    // 测试逻辑
    initial begin
        // 初始化信号
        rst_n = 0;
        uart_tx_en = 0;
        uart_tx_data = 32'h0;
        #100; // 等待复位完成

        // 释放复位
        rst_n = 1;
        #100;

        // 测试1: 发送数据 0xAABBCCDD
        uart_tx_data = 32'hAABBCCDD;
        uart_tx_en = 1;
        #(CLK_PERIOD);
        uart_tx_en = 0;

        // 等待发送完成
        while (!uart_tx_done) #(CLK_PERIOD);
        #1000;

        // 测试2: 发送数据 0x12345678
        uart_tx_data = 32'h12345678;
        uart_tx_en = 1;
        #(CLK_PERIOD);
        uart_tx_en = 0;

        // 等待发送完成
        while (!uart_tx_done) #(CLK_PERIOD);
        #1000;

        // 仿真结束
        $stop;
    end

endmodule
