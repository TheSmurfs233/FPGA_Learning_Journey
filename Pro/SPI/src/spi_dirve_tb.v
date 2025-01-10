`timescale 1ns / 1ps

module spi_drive_tb();
    // 声明与被测试模块连接的信号
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

    // 实例化被测试模块
    spi_drive dut (
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

    // 生成时钟信号
    always #10 sys_clk = ~sys_clk;  // 假设时钟周期为20ns，50MHz

    initial begin
        // 初始化信号
        sys_clk = 1'b0;
        rst_n = 1'b0;
        spi_start = 1'b0;
        spi_end = 1'b0;
        data_send = 8'hF2;
        spi_miso = 1'b0;  // 这里先简单设置为0，可根据实际情况调整

        // 复位一段时间
        #100;
        rst_n = 1'b1;

        // 模拟SPI开始传输
        #100;
        spi_start = 1'b1;
        #20;
        spi_start = 1'b0;

        // 等待传输完成，这里根据实际模块逻辑估算合适的等待时间
        #8000;

        // 模拟SPI结束传输
        spi_end = 1'b1;
        #20;
        spi_end = 1'b0;

        // 可以在这里添加更多检查逻辑，比如检查send_done、rec_done等信号是否符合预期
        #100;
        $finish;
    end
endmodule