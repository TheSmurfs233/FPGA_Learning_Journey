`timescale 1ns / 1ps

module baud_gen_tb();
    // 声明输入输出信号，对应被测试模块的端口
    reg clk_50MHz;
    reg rst;
    wire bclk;

    // 实例化被测试的模块
    baud_gen uut (
      .clk_50MHz(clk_50MHz),
      .rst(rst),
      .bclk(bclk)
    );

    // 产生时钟信号，这里50MHz的时钟周期为20ns
    always #10 clk_50MHz = ~clk_50MHz;
    
    initial begin
        // 初始化信号
        clk_50MHz = 0;
        rst = 1;
        #100;  // 保持复位状态100ns

        rst = 0;
        #9000;  // 运行一段时间来观察输出，这里运行10000000ns，可以根据实际情况调整时长

        $finish;  // 结束仿真
    end

    // 可以在这里添加更多的监测代码，例如使用 $display 打印信号状态用于观察
    always @(posedge bclk) begin
        $display("bclk 信号产生了一个上升沿，当前仿真时间：%t ns", $time);
    end

endmodule