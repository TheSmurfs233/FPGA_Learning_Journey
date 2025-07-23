`timescale 1ns/1ns
module data_driver(
    //时钟域A
    input                 i_clk_a      ,
    input                 i_rst_n      ,
    //时钟域B返回
    input                 i_data_ack   ,
    //输出至时钟域B
    output reg [ 3 : 0]   o_data       ,
    output reg            o_data_req    
);




reg              r_data_ack_1      ;
reg              r_data_ack_2      ;
wire             w_pos_data_ack    ;

assign w_pos_data_ack = r_data_ack_1 && !r_data_ack_2 ;

//返回信号属于异步信号，异步信号输入需要跨时钟域处理
always @(posedge i_clk_a or negedge i_rst_n)begin
    if (!i_rst_n)begin
        r_data_ack_1 <= 0;
        r_data_ack_2 <= 0;
    end else begin
        r_data_ack_1 <= i_data_ack;
        r_data_ack_2 <= r_data_ack_1;
    end
end



reg  [ 9: 0]     r_cnt             ;
//同时在i_data_ack有效之后，开始计数五个时钟，之后发送新的数据，也就是再一次拉高o_data_req.
always @ (posedge i_clk_a or negedge i_rst_n)begin
    if (!i_rst_n)
        r_cnt <= 0;
    //传输完毕之后，将延迟计数器清零
    else if(w_pos_data_ack)
        r_cnt <= 0;
    else if (o_data_req)
        r_cnt <= r_cnt  ;
    else
        r_cnt <= r_cnt+1;
end




//间隔5个clk将req拉高，等到检测到ack同步之后的下降沿时，将req拉低
always @ (posedge i_clk_a or negedge i_rst_n)begin
    if (!i_rst_n)
        o_data_req <= 0;
    else if (r_cnt == 3'd4)
        o_data_req <= 1'b1;
    //传输完毕之后，将发送请求拉低
    else if (w_pos_data_ack)
        o_data_req <= 1'b0;
    else
        o_data_req <= o_data_req;
end




//检测到ack同步之后的信号上升沿，则增将数据加一
always @(posedge i_clk_a or negedge i_rst_n)begin
    if(!i_rst_n)
        o_data <= 0;
    //检测到ACK信号的上升沿则将传输数据加一
    else if(w_pos_data_ack)
        o_data <= o_data + 1'b1 ;
    else 
        o_data <= o_data ;
end


endmodule
