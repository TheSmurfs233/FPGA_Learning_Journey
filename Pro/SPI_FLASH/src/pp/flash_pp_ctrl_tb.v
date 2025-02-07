`timescale 1ns/1ns
module tb_flash_pp_ctrl();

//wire define
wire cs_n;
wire sck ;
wire mosi;

//reg define
 reg sys_clk ;
 reg sys_rst_n ;
 reg key ;

 //时钟、复位信号、模拟按键信号
 initial
 begin
 sys_clk = 0;
 sys_rst_n <= 0;
 key <= 0;
 #100
 sys_rst_n <= 1;
 #1000
 key <= 1;
 #20
 key <= 0;
 end

 always #10 sys_clk <= ~sys_clk;

 //写入Flash仿真模型初始值(全F)
 defparam memory.mem_access.initfile = "initmemory.txt";

 //------------- flash_pp_ctrl_inst -------------
 flash_pp_ctrl flash_pp_ctrl_inst
 (
 .sys_clk (sys_clk ), //系统时钟，频率50MHz
 .sys_rst_n (sys_rst_n ), //复位信号,低电平有效
 .key (key ), //按键输入信号

 .sck (sck ), //串行时钟
 .cs_n (cs_n ), //片选信号
 .mosi (mosi ) //主输出从输入数据
 );

 //------------- memory -------------
 m25p16 memory
 (
 .c (sck ), //输入串行时钟,频率12.5MHz,1bit
 .data_in (mosi ), //输入串行指令或数据,1bit
 .s (cs_n ), //输入片选信号,1bit
 .w (1'b1 ), //输入写保护信号,低有效,1bit
 .hold (1'b1 ), //输入hold信号,低有效,1bit

 .data_out ( ) //输出串行数据
 );

 endmodule