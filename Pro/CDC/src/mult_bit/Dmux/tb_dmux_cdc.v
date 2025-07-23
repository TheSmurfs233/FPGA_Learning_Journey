`timescale 1ns / 1ps

module tb_dmux_cdc();

parameter Clock100MPeriod = 10 ; // 100MHZ
parameter Clock50MPeriod  = 20 ; // 50MHZ
parameter DATA_WIDTH      = 8  ; //

reg                           sys_clk100m                  ;
reg                           sys_clk50m                   ;
reg                           sys_rstn                     ;
//上游
reg   [DATA_WIDTH-1 : 0]      din                          ;
reg                           vaildin                      ;
//下游
wire  [DATA_WIDTH-1 : 0]      dout                         ;
wire                          vaildout                     ;

//时钟100M
initial begin
sys_clk100m = 1;
forever #(Clock100MPeriod/2) sys_clk100m = ~sys_clk100m ;
end

//时钟50M
initial begin
sys_clk50m = 1;
forever #(Clock50MPeriod/2) sys_clk50m = ~sys_clk50m ;
end



//复位
initial begin
sys_rstn = 0;
repeat(10) @(posedge sys_clk100m );
sys_rstn = 1;
end


initial begin
    din = {$random}%8'hff ;
    vaildin = 1'b0 ;
    repeat(20) @(posedge sys_clk100m ) ;
    repeat(10)begin
        vaildin = 1'b1 ;
        din = {$random}%8'hff ;
        repeat(10) @(posedge sys_clk100m);
        vaildin = 1'b0 ;
        repeat(4) @(posedge sys_clk100m);
    end
    repeat(20) @(posedge sys_clk100m ) ;
    $finish;
end



dmux_cdc#(
    .tx_clk      ( 100          ),
    .rx_clk      ( 50           ),
    .DATA_WIDTH  ( DATA_WIDTH   ) 
)
u_dmux_cdc(
    .i_clk100m   (sys_clk100m   ),
    .i_clk50m    (sys_clk50m    ),
    .i_rstn      (sys_rstn      ),
    .i_din       (din           ),
    .i_vaildin   (vaildin       ),
    .o_vaildout  (vaildout      ),
    .o_dout      (dout          ) 
);



initial begin
$fsdbDumpfile("dmux.fsdb");
$fsdbDumpvars(0);
end


endmodule
