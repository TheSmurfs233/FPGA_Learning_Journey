`timescale 1ns / 1ps

module uart_tx_tb();

    // 声明与被测试模块对应的输入输出信号
    reg clk;
    reg rst_n;
    reg uart_tx_en;
    reg [7:0] uart_tx_data;
    wire uart_txd;
    wire uart_tx_busy;

    // 实例化被测试的uart_tx模块
    uart_tx uut (
       .clk(clk),
       .rst_n(rst_n),
       .uart_tx_en(uart_tx_en),
       .uart_tx_data(uart_tx_data),
       .uart_tx_d(uart_txd),
       .uart_tx_busy(uart_tx_busy)
    );

    // 产生时钟信号，周期为20ns（对应50MHz的时钟频率）
    always #10 clk = ~clk;

    // 初始化测试过程
    initial begin
        // 初始化信号
        clk = 0;
        rst_n = 0;
        uart_tx_en = 0;
        uart_tx_data = 8'h00;

        // 复位一段时间
        #100;
        rst_n = 1;

        // 发送一个数据的测试用例
        #200;
        uart_tx_en = 1;
        uart_tx_data = 8'h55;
        #20;
        uart_tx_en = 0;

        #90000

        // 再发送一个不同数据的测试用例（可按需添加更多测试场景）
        #200;
        uart_tx_en = 1;
        uart_tx_data = 8'haa;
        #50;
        uart_tx_en = 0;

        #90000
        // 结束仿真
        #200;
        $finish;
    end

endmodule