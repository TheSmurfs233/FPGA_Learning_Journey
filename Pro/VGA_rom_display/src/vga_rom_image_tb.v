`timescale 1ns/ 1ns
module _vga_rom_image_tb();

////
//\* Parameter and Internal Signal \//
////
//wire define
wire hsync ;
wire [15:0] rgb ;
wire vsync ;

 //reg define
 reg sys_clk ;
 reg sys_rst_n ;

 ////
 //\* Clk And Rst \//
 ////

 //sys_clk,sys_rst_n初始赋值
 initial  begin
 sys_clk = 1'b1;
 sys_rst_n <= 1'b0;
 #200
 sys_rst_n <= 1'b1;
 end

 //sys_clk:产生时钟
 always #10 sys_clk = ~sys_clk ;

 ////
 //\* Instantiation \//
 ////

 //------------- vga_rom_pic_inst -------------
 vga_rom_image vga_rom_image_inst
 (
 .sys_clk (sys_clk ), //输入晶振时钟,频率50MHz,1bit
 .rst_n (sys_rst_n ), //输入复位信号,低电平有效,1bit

 .hsync (hsync ), //输出行同步信号,1bit
 .vsync (vsync ), //输出场同步信号,1bit
 .rgb (rgb ) //输出RGB图像信息,16bit
 );

 endmodule