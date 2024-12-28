`timescale 1ns / 1ps

module uart_top_tb();
    // 声明与被测试uart_top模块对应的输入信号，按照其端口定义来声明
    reg clk_50MHz;
    reg reset;
    reg [7:0] tx_data;
    reg tx_start;
    // 声明与被测试uart_top模块对应的输出信号
    wire tx_out;
    wire bclk;

    // 实例化被测试的uart_top模块
    uart_top u_uart_top(
      .clk_50MHz(clk_50MHz),
      .reset(reset),
      .tx_data(tx_data),
      .tx_start(tx_start),
      .tx_out(tx_out),
      .bclk(bclk)
    );

    // 产生50MHz时钟信号，周期为20ns
    always #10 clk_50MHz = ~clk_50MHz;

    initial begin
        // 初始化信号
        clk_50MHz = 0;
        reset = 1;
        tx_data = 8'h00;
        tx_start = 0;

        // 复位操作，保持复位一段时间，这里设为150ns
        #150;
        reset = 0;

        // 第一次发送数据测试
        tx_data = 8'haa;
        tx_start = 1;
        #20;
        tx_start = 0;

        // 等待足够长时间以便数据完整发送
        #100000;

        // 第二次发送数据测试
        tx_data = 8'h55;
        tx_start = 1;
        #20;
        tx_start = 0;

        // 再次等待一段时间观察输出情况
        #100000;

        // 额外增加一些不同情况的测试，比如复位后不发送数据等待一段时间
        reset = 1;
        #100;
        reset = 0;
        #1000;

        // 发送全0数据测试
        tx_data = 8'h00;
        tx_start = 1;
        #20;
        tx_start = 0;
        #1000;

        $finish;  // 结束仿真
    end

    // 监测tx_out信号的变化情况，打印其上升沿和下降沿相关信息
    always @(posedge tx_out) begin
        $display("tx_out信号产生了上升沿，当前仿真时间：%t ns", $time);
    end

    always @(negedge tx_out) begin
        $display("tx_out信号产生了下降沿，当前仿真时间：%t ns", $time);
    end

    // 监测bclk信号的变化情况，同样打印其上升沿和下降沿相关信息
    always @(posedge bclk) begin
        $display("bclk信号产生了上升沿，当前仿真时间：%t ns", $time);
    end

    always @(negedge bclk) begin
        $display("bclk信号产生了下降沿，当前仿真时间：%t ns", $time);
    end

endmodule