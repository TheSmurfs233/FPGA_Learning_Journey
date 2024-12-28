`timescale 1ns / 1ps

module uart_rx_tb;

    // 定义与被测模块连接的信号
    reg clk;
    reg rst_n;
    reg uart_rx_d;
    wire uart_rx_done;
    wire [7:0] uart_rx_data;

    // 实例化被测模块
    uart_rx uut (
      .clk(clk),
      .rst_n(rst_n),
      .uart_rx_d(uart_rx_d),
      .uart_rx_done(uart_rx_done),
      .uart_rx_data(uart_rx_data)
    );

    // 产生时钟信号
    always #10 clk = ~clk;  // 50MHz时钟，周期为20ns

    // 测试过程
    initial begin
        // 初始化信号
        clk = 0;
        rst_n = 0;
        uart_rx_d = 1;

        // 复位一段时间
        #200;
        rst_n = 1;

        // 模拟发送一帧数据（起始位 + 8位数据位 + 停止位）
        #100;
        uart_rx_d = 0;  // 起始位
        #8680;  // 起始位持续时间（1/115200 * 434 * 20ns）
        uart_rx_d = 1;  // 数据位0
        #8680;
        uart_rx_d = 1;  // 数据位1
        #8680;
        uart_rx_d = 1;  // 数据位2
        #8680;
        uart_rx_d = 0;  // 数据位3
        #8680;
        uart_rx_d = 1;  // 数据位4
        #8680;
        uart_rx_d = 1;  // 数据位5
        #8680;
        uart_rx_d = 0;  // 数据位6
        #8680;
        uart_rx_d = 1;  // 数据位7
        #8680;
        uart_rx_d = 1;  // 停止位
        #8680;

        // 等待接收完成信号拉高
        while (!uart_rx_done) begin
            #10;
        end

        // 检查接收到的数据是否正确
        if (uart_rx_data == 8'b0101_0101) begin
            $display("Data received correctly!");
        end else begin
            $display("Error: Incorrect data received. Expected 8'b0101_0101, got %b", uart_rx_data);
        end

        // 结束仿真
        #1000;
        $finish;
    end

endmodule