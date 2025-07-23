//格雷码+同步的方法仅仅适用于满足下面两种情况
//（1）多bit的跨时钟数据必须数值依次增大或者减少的数据线或者地址线。
//（2）必须是慢时钟域信号跨到快时钟域信号。
module gray_cdc (
    input           i_clk1    ,  //slow
    input [ 3:0]    i_din1    ,
    input           i_clk2    ,  //fast
    output[ 3:0]    o_dout  
);

wire    [ 3:0]    w_din_gray        ;
reg     [ 3:0]    r_din_gray_d0     ;
reg     [ 3:0]    r_din_gray_d1     ;

assign w_din_gray = (i_din1 >> 1 )^i_din1  ;


always @(posedge i_clk2 ) begin
    r_din_gray_d0 <= w_din_gray    ;
    r_din_gray_d1 <= r_din_gray_d0 ;
end

assign  o_dout = r_din_gray_d1 ;


endmodule