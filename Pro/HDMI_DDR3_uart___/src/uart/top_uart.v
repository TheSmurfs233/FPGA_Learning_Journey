module top_uart (
    input  sys_clk,
    input  sys_rst_n,
    input  uart_rx_d,
    output uart_tx_d
);

parameter CLK_FREQ = 50_000_000;
parameter UART_BAUD = 115200;

wire uart_rx_done;
wire [7:0] uart_rx_data;
wire bit32_out_valid;
wire [31:0] bit32_out;
uart_rx  uart_rx_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_rx_d(uart_rx_d),
    .uart_rx_done(uart_rx_done),
    .uart_rx_data(uart_rx_data)
  );

bit8_to_bit32  bit8_to_bit32_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .bit8_in_valid(uart_rx_done),
    .bit8_in(uart_rx_data),
    .bit32_out_valid(bit32_out_valid),
    .bit32_out(bit32_out)
  );

uart_tx_4byte # (
    .CLK_FREQ(CLK_FREQ),
    .UART_BAUD(UART_BAUD)
  )
  uart_tx_4byte_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_tx_en(bit32_out_valid),
    .uart_tx_data(bit32_out),
    .uart_tx_done( ),
    .uart_tx_d(uart_tx_d)
  );
endmodule

