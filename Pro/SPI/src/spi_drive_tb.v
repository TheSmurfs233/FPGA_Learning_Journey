`timescale 1ns / 1ps

module spi_drive_tb();

    // 定义输入输出信号，与被测试模块的端口对应
    reg sys_clk;
    reg rst_n;
    reg spi_start;
    reg spi_end;
    reg [7:0] data_send;
    wire [7:0] data_rec;
    wire send_done;
    wire rec_done;
    reg spi_miso;
    wire spi_csk;
    wire spi_cs;
    wire spi_mosi;

    // 实例化被测试的SPI驱动模块
    spi_drive uut (
      .sys_clk(sys_clk),
      .rst_n(rst_n),
      .spi_start(spi_start),
      .spi_end(spi_end),
      .data_send(data_send),
      .data_rec(data_rec),
      .send_done(send_done),
      .rec_done(rec_done),
      .spi_miso(spi_miso),
      .spi_csk(spi_csk),
      .spi_cs(spi_cs),
      .spi_mosi(spi_mosi)
    );

    // 产生时钟信号，频率可以根据实际需求调整，这里假设为50MHz
    always #10 sys_clk = ~sys_clk;

    initial begin
        // 初始化信号
        sys_clk = 1'b0;
        rst_n = 1'b0;
        spi_start = 1'b0;
        spi_end = 1'b0;
        data_send = 8'h00;
        spi_miso = 1'b0;

        // 复位信号有效一段时间，模拟复位操作
        #200 rst_n = 1'b1;

        // 开始一次SPI传输测试
        @(posedge sys_clk);
        spi_start = 1'b1;
        data_send = 8'hAA;  // 发送一个示例数据，可根据需要修改
        @(posedge sys_clk);
        spi_start = 1'b0;

        // 等待传输完成，通过检查发送完成和接收完成标志位
        wait(send_done && rec_done);

        // 结束SPI传输
        @(posedge sys_clk);
        spi_end = 1'b1;
        @(posedge sys_clk);
        spi_end = 1'b0;

        // 可以添加更多不同情况的SPI传输测试，比如发送不同的数据值、多次连续传输等

        // 结束仿真
        #200 $finish;
    end

    // 模拟MISO输入数据，这里简单设置为固定值，实际可根据需求改变逻辑
    always @(negedge spi_csk) begin
        if (spi_csk == 1'b0) begin
            spi_miso = ~spi_miso;  // 示例数据，可根据实际情况模拟不同的接收数据
        end
    end

endmodule