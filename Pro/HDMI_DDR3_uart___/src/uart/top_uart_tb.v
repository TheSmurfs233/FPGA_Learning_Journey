`timescale 1ns/1ps

module tb_top_uart;

    // 参数定义
    parameter CLK_FREQ = 50_000_000; // 50MHz 时钟频率
    parameter UART_BAUD = 115200;    // 波特率
    parameter CLK_PERIOD = 20;       // 时钟周期，单位为ns
    parameter BIT_PERIOD = (1_000_000_000 / UART_BAUD); // 每个比特的周期，单位为ns

    // 输入信号
    reg sys_clk;         // 系统时钟
    reg sys_rst_n;       // 复位信号，低电平有效
    reg uart_rx_d;       // 串口接收数据线

    // 输出信号
    wire uart_tx_d;      // 串口发送数据线

    // 实例化顶层模块
    top_uart uut (
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .uart_rx_d(uart_rx_d),
        .uart_tx_d(uart_tx_d)
    );

    // 生成时钟信号
    initial begin
        sys_clk = 0;
        forever #(CLK_PERIOD / 2) sys_clk = ~sys_clk;
    end

    // 仿真主逻辑
    initial begin
        // 初始化信号
        sys_rst_n = 0; // 复位
        uart_rx_d = 1; // 空闲状态为高电平
        #100; // 等待复位完成

        // 释放复位
        sys_rst_n = 1;
        #100;

        // 测试1: 发送数据 0xAABBCCDD
        send_byte(8'hAA); // 发送第1字节
        send_byte(8'hBB); // 发送第2字节
        send_byte(8'hCC); // 发送第3字节
        send_byte(8'hDD); // 发送第4字节

        // 等待回环数据输出
        #(BIT_PERIOD * 40); // 等待足够时间

        // 测试2: 发送数据 0x12345678
        send_byte(8'h12); // 发送第1字节
        send_byte(8'h34); // 发送第2字节
        send_byte(8'h56); // 发送第3字节
        send_byte(8'h78); // 发送第4字节

        // 等待回环数据输出
        #(BIT_PERIOD * 40); // 等待足够时间

        // 仿真结束
        $stop;
    end

    // 任务：发送一个字节的串口数据
    task send_byte;
        input [7:0] data;
        integer i;
        begin
            uart_rx_d = 0; // 起始位
            #BIT_PERIOD;

            for (i = 0; i < 8; i = i + 1) begin
                uart_rx_d = data[i]; // 发送8位数据
                #BIT_PERIOD;
            end

            uart_rx_d = 1; // 停止位
            #BIT_PERIOD;
        end
    endtask

endmodule
