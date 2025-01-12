`timescale 1ns / 1ps

module spi_drive_tb();

    // 定义时钟和复位信号
    reg sys_clk;
    reg rst_n;
    // 用户接口信号
    reg spi_start;
    reg [7:0] data_send;
    wire [7:0] data_rec;
    wire send_done;
    wire rec_done;
    // 物理接口信号
    reg spi_miso;
    wire spi_sck;
    wire spi_cs;
    wire spi_mosi;

    // 实例化被测试的SPI驱动模块
    spi_drive uut (
      .sys_clk(sys_clk),
      .rst_n(rst_n),
      .spi_start(spi_start),
      .data_send(data_send),
      .data_rec(data_rec),
      .send_done(send_done),
      .rec_done(rec_done),
      .spi_miso(spi_miso),
      .spi_sck(spi_sck),
      .spi_cs(spi_cs),
      .spi_mosi(spi_mosi)
    );

    // 时钟产生，50MHz，周期为20ns
    always #10 sys_clk = ~sys_clk;

    initial begin
        // 初始化信号
        sys_clk = 1'b0;
        rst_n = 1'b0;
        spi_start = 1'b0;
        data_send = 8'h00;
        spi_miso = 1'b0;

        // 复位一段时间
        #200;
        rst_n = 1'b1;

        // 发送第一个字节 AA
        data_send = 8'hAA;
        spi_start = 1'b1;
        #40;
        spi_start = 1'b0;
        data_send = 8'h00;
        wait(send_done);

        // 发送第二个字节 55
        data_send = 8'h55;
        spi_start = 1'b1;
        #40;
        spi_start = 1'b0;
        data_send = 8'h00;
        wait(send_done);

        // 可以在这里添加更多的检查或者等待一段时间后结束仿真
        #200;
        $finish;
    end

    // 模拟SPI的MISO信号输入，这里简单地赋值为0，你可以根据实际情况修改逻辑
    always @(negedge spi_sck) begin
        spi_miso <= ~spi_miso;
    end

endmodule