module fifo_sum (
    input       wire        sys_clk     ,
    input       wire        sys_rst_n   ,
    input       wire        rx          ,

    output      wire        tx          
);

//parameter define

//reg define

//wire define
wire                uart_rx_done;
wire [7:0]          uart_rx_data;
wire [7:0]          o_data;
wire                o_flag;

//instance define
uart_rx  uart_rx_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_rx_d(rx),
    .uart_rx_done(uart_rx_done),
    .uart_rx_data(uart_rx_data)
  );


fifo_sum_ctrl  fifo_sum_ctrl_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .i_data(uart_rx_data),
    .i_flag(uart_rx_done),
    .o_data(o_data),
    .o_flag(o_flag)
  );

uart_tx  uart_tx_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_tx_en(o_flag),
    .uart_tx_data(o_data),
    .uart_tx_busy( ),
    .uart_tx_d(tx)
  );
endmodule