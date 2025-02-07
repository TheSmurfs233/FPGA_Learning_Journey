module spi_flash_read(

input wire sys_clk , //系统时钟，频率50MHz
input wire sys_rst_n , //复位信号,低电平有效
input wire pi_key , //按键输入信号
input wire miso , //读出flash数据

output wire cs_n , //片选信号
output wire sck , //串行时钟
 output wire mosi , //主输出从输入数据
 output wire tx

 );

 ////
 //\* Parameter and Internal Signal \//
 ////
 //parameter define
 parameter CNT_MAX = 20'd999_999 ; //计数器计数最大值
 parameter UART_BPS = 18'd115200 , //比特率
 CLK_FREQ = 26'd50_000_000 ; //时钟频率


 //wire define
 wire po_key ; //消抖处理后的按键信号
 wire tx_flag ; //输入串口发送模块数据标志信号
 wire [7:0] tx_data ; //输入串口发送模块数据

 ////
 //\* Instantiation \//
 ////
 //------------- key_filter_inst -------------
 key_filter
 #(
 .CNT_MAX (CNT_MAX ) //计数器计数最大值
 )
 key_filter_inst
 (
 .sys_clk (sys_clk ), //系统时钟，频率50MHz
 .sys_rst_n (sys_rst_n ), //复位信号,低电平有效
 .key_in (pi_key ), //按键输入信号

 .key_flag (po_key ) //消抖后信号
 );

 //-------------flash_read_ctrl_inst-------------
 flash_read_ctrl flash_read_ctrl_inst(

 .sys_clk (sys_clk ), //系统时钟，频率50MHz
 .sys_rst_n (sys_rst_n ), //复位信号,低电平有效
 .key (po_key ), //按键输入信号
 .miso (miso ), //读出flash数据

 .sck (sck ), //片选信号
 .cs_n (cs_n ), //串行时钟
 .mosi (mosi ), //主输出从输入数据
 .tx_flag (tx_flag ), //输出数据标志信号
 .tx_data (tx_data ) //输出数据

 );

 //-------------uart_tx_inst-------------

uart_tx  uart_tx_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_tx_en(tx_flag),
    .uart_tx_data(tx_data),
    .uart_tx_busy( ),
    .uart_tx_d(tx)
  );
 endmodule