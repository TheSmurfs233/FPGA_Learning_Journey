module spi_flash_pp
(
input wire sys_clk , //系统时钟，频率50MHz
input wire sys_rst_n , //复位信号,低电平有效
input wire key_in , //按键输入信号

output wire cs_n , //片选信号
output wire sck , //串行时钟
output wire mosi //主输出从输入数据
 );

 ////
 //\* Parameter and Internal Signal \//
 ////
 //parameter define
 parameter CNT_MAX = 20'd999_999; //计数器计数最大值

 //wire define
 wire key ;

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
 .key_in (key_in ), //按键输入信号

 .key_flag (key ) //消抖后信号
 );

 //------------- flash_pp_ctrl_inst -------------
 flash_pp_ctrl flash_pp_ctrl_inst
 (
 .sys_clk (sys_clk ), //系统时钟，频率50MHz
 .sys_rst_n (sys_rst_n ), //复位信号,低电平有效
 .key (key ), //按键输入信号

 .sck (sck ), //片选信号
 .cs_n (cs_n ), //串行时钟
 .mosi (mosi ) //主输出从输入数据
 );

 endmodule