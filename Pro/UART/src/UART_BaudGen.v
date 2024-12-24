`timescale 1ns/1ps
module top_module(
//module baud_gen(
input clk_50MHz,input rst,output bclk
    );
//输出频率 115200*16=1843.2kpbs
 reg [8:0]cnt;//50000000/1843200=27.13
always @(posedge clk_50MHz)
begin
    if(rst)
        begin
            cnt<=0;
            bclk<=0;
        end
    else
    begin
    if(cnt>26)
        begin
            cnt<=0;
            bclk<=1;
        end
    else
        begin
            cnt<=cnt+1;
            bclk<=0;
        end
    end
end 
endmodule

module  top_module_tb();
    reg clk_50MHz,rst,bclk;
    baud_gen baud_gen_in(clk_50MHz,rst,bclk);
    initial begin
        rst=0;

    end
endmodule
