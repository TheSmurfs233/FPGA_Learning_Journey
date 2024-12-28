module uart_top(
    input clk_50MHz,
    input reset,
    input [7:0] tx_data,
    input tx_start,
    output tx_out,
    output bclk
);


    wire tx_ready;

    // 实例化波特率生成模块
    baud_gen u_baud_gen(
       .clk_50MHz(clk_50MHz),
       .reset(reset),
       .bclk(bclk)
    );

    // 实例化UART发送模块
    uart_tx u_uart_tx(
       .bclk(bclk),
       .reset(reset),
       .tx_din(tx_data),
       .tx_cmd(tx_start),
       .tx_ready(tx_ready),
       .txd(tx_out)
    );

endmodule