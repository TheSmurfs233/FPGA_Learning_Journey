module data_receiver(
    //时钟域A
    input                 i_clk_b       ,
    input                 i_rst_n       ,
    output reg            o_data_ack    ,
    input                 i_data_req    ,
    input      [ 3: 0]    i_data          
);


reg [ 3 : 0]   r_data_reg      ;
reg            r_data_req_d0   ;
reg            r_data_req_d1   ;
wire           w_pos_req       ;


//检测同步后的req的信号的上升沿。
assign  w_pos_req = r_data_req_d0 && !r_data_req_d1 ;


//异步信号输入需要跨时钟域处理
always @ (posedge i_clk_b or negedge i_rst_n)begin
    if (!i_rst_n)begin
        r_data_req_d0 <= 0;
        r_data_req_d1 <= 0;
    end
    else begin
        r_data_req_d0 <= i_data_req     ;
        r_data_req_d1 <= r_data_req_d0  ;
    end
end


always @ (posedge i_clk_b or negedge i_rst_n)begin
    if(!i_rst_n)
        o_data_ack <= 0;
    else if (r_data_req_d1)
        o_data_ack <= 1;
    else
        o_data_ack <=0 ;
end


//检测到发送端的请求信号时，保存接收信号
always @ (posedge i_clk_b or negedge i_rst_n)
    if(!i_rst_n)
        r_data_reg <= 0;
    else if (w_pos_req)
        r_data_reg <= i_data  ;
    else
        r_data_reg <= r_data_reg ;


endmodule