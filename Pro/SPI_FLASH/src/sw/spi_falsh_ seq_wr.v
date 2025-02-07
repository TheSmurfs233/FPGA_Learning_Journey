module spi_flash_seq_wr(

input wire sys_clk , //系统时钟，频率50MHz
input wire sys_rst_n , //复位信号,低电平有效
input wire rx , //串口接收数据

output wire cs_n , //片选信号
output wire sck , //串行时钟
output wire mosi , //主输出从输入数据
 output wire tx //串口发送数据

 );

 ////
 //\* Parameter and Internal Signal \//
 ////
 //parameter define
 parameter UART_BPS = 32'd115200 , //比特率
 CLK_FREQ = 26'd50_000_000 ; //时钟频率

 //wire define
 wire uart_rx_done ;
 wire [7:0] uart_rx_data ;

 ////
 //\* Instantiation \//
 ////

 //-------------uart_rx_inst-------------
uart_rx  uart_rx_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_rx_d(rx),
    .uart_rx_done(uart_rx_done),
    .uart_rx_data(uart_rx_data)
  );

 //-------------flash_seq_wr_ctrl_inst-------------
 flash_seq_wr_ctrl flash_seq_wr_ctrl_inst(

 .sys_clk (sys_clk ), //系统时钟，频率50MHz
 .sys_rst_n (sys_rst_n ), //复位信号,低电平有效
 .pi_flag (uart_rx_done ), //数据标志信号
 .pi_data (uart_rx_data ), //写入数据

 .sck (sck ), //片选信号
 .cs_n (cs_n ), //串行时钟
 .mosi (mosi ) //主输出从输入数据

 );

 //-------------uart_tx_inst-------------
uart_tx  uart_tx_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_tx_en(uart_rx_done),
    .uart_tx_data(uart_rx_data),
    .uart_tx_busy( ),
    .uart_tx_d(tx)
);

 endmodule