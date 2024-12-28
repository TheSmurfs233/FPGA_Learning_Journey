`timescale 1ns / 1ps

module uart_tx_tb();
    // 声明与被测试uart_tx模块对应的输入信号
    reg bclk;
    reg reset;
    reg [7:0] tx_din;
    reg tx_cmd;
    // 声明与被测试uart_tx模块对应的输出信号
    wire tx_ready;
    wire txd;

    // 实例化被测试的uart_tx模块
    uart_tx u_uart_tx(
      .bclk(bclk),
      .reset(reset),
      .tx_din(tx_din),
      .tx_cmd(tx_cmd),
      .tx_ready(tx_ready),
      .txd(txd)
    );

    // 产生bclk时钟信号，这里假设周期为10ns（可根据实际需求调整）
    always #5 bclk = ~bclk;

    initial begin
        // 初始化信号
        bclk = 0;
        reset = 1;
        tx_din = 8'h00;
        tx_cmd = 0;

        // 复位一段时间，这里设为100ns
        #100;
        reset = 0;

        // 测试发送单个数据情况
        tx_din = 8'haa;
        tx_cmd = 1;
        #10;
        tx_cmd = 0;
        // 等待足够长时间让数据发送完成，预估等待1000ns
        #1000;

        // 测试连续发送两个不同数据情况
        tx_din = 8'h55;
        tx_cmd = 1;
        #10;
        tx_cmd = 0;
        #1000;

        tx_din = 8'hbb;
        tx_cmd = 1;
        #10;
        tx_cmd = 0;
        #1000;

        // 测试复位后不发送数据情况
        reset = 1;
        #100;
        reset = 0;
        #1000;

        // 测试发送全0数据情况
        tx_din = 8'h00;
        tx_cmd = 1;
        #10;
        tx_cmd = 0;
        #1000;

        $finish;  // 结束仿真
    end

    // 监测tx_ready信号的变化情况，打印其上升沿和下降沿相关信息
    always @(posedge tx_ready) begin
        $display("tx_ready信号产生了上升沿，当前仿真时间：%t ns", $time);
    end

    always @(negedge tx_ready) begin
        $display("tx_ready信号产生了下降沿，当前仿真时间：%t ns", $time);
    end

    // 监测txd信号的变化情况，打印其上升沿和下降沿相关信息
    always @(posedge txd) begin
        $display("txd信号产生了上升沿，当前仿真时间：%t ns", $time);
    end

    always @(negedge txd) begin
        $display("txd信号产生了下降沿，当前仿真时间：%t ns", $time);
    end

endmodule