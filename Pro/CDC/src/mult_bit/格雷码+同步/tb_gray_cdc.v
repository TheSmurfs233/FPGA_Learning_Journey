`timescale 1ns/1ps  	 //时间精度
`define  CLK_FAST_PERILOD    35	 
`define  CLK_SLOW_PERILOD    100

module tb_gray_cdc;


reg                                     r_clk1                     ;
reg                    [   3:0]         r_din1                     ;
reg                                     r_clk2                     ;
wire                   [   3:0]         w_dout                     ;


gray_cdc  u_gray_cdc(
    .i_clk1 ( r_clk1     )  ,
    .i_din1 ( r_din1     )  ,
    .i_clk2 ( r_clk2     )  ,
    .o_dout ( w_dout     )  
);


initial begin
    r_clk1 = 0;
    forever
        #(`CLK_SLOW_PERILOD/2) r_clk1 = ~r_clk1;
end

initial begin
    r_clk2 = 0;
    forever
        #(`CLK_FAST_PERILOD/2) r_clk2 = ~r_clk2;
end


initial begin
    r_din1  = 0 ;
    repeat(20) @(posedge r_clk1);
    repeat(16)begin
        @(posedge r_clk1)begin
            r_din1  = r_din1 + 1 ;
        end
    end
    r_din1  = 0 ;
    repeat(20) @(posedge r_clk1);
    $finish;

end

initial begin
$fsdbDumpfile("gray.fsdb");
$fsdbDumpvars(0);
end


endmodule