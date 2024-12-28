module baud_gen(
input clk_50MHz,input reset,output reg bclk
    );
//输出频率 115200*16=1843.2kpbs
//占空比 1/28
reg [8:0]cnt;//50000000/1843200=27.13
always @(posedge clk_50MHz)
begin
    if(reset)
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

