//多bit信号CDC处理专题
//多bit信号从100M到50M的数据CDC传输（快到慢）
//（1）DMUX
//（2）使用DMUX必须满足启动传输的数据保持时间大于等于至少三个接收时钟周期
//（3）题目说明发起时钟周期10ns,接收时钟周期为20ns
//（4）故启动周期的时间必须大于60ns
module dmux_cdc#(
parameter tx_clk = 100   ,
parameter rx_clk = 50    ,
parameter DATA_WIDTH = 8
)
(
    input                               i_clk100m                  ,
    input                               i_clk50m                   ,
    input                               i_rstn                     ,
//up data
    input   [DATA_WIDTH-1 : 0]          i_din                      ,
    input                               i_vaildin                  ,
//down data
    output                              o_vaildout                 ,
    output  [DATA_WIDTH-1 : 0]          o_dout                      
);



//将100M时钟下的数据和有效信号延迟一个周期
reg       [DATA_WIDTH-1 : 0]            r_din                      ;
reg                                     r_vaildin                  ;
always @(posedge i_clk100m or negedge i_rstn) begin
    if(!i_rstn)begin
        r_din     <= 'd0    ;
        r_vaildin <= 1'b0   ;
    end
    else begin
        r_din     <= i_din      ;
        r_vaildin <= i_vaildin  ;
    end
end


//对上游输入有效信号CDC跨时钟到下游时钟域
reg     r_vaild_d0 , r_vaild_d1    ;
always @(posedge i_clk50m or negedge i_rstn) begin
    if(!i_rstn)begin
        r_vaild_d0 <= 1'b0 ;
        r_vaild_d1 <= 1'b0 ;
    end
    else begin
        r_vaild_d0 <= r_vaildin ;
        r_vaild_d1 <= r_vaild_d0 ;
    end
end



reg [DATA_WIDTH-1 : 0] r_dout ;
always @(posedge i_clk50m or negedge i_rstn) begin
    if(!i_rstn)
        r_dout <= 'd0 ;
    else if(r_vaild_d1)
        r_dout <= r_din ;
    else
        r_dout <= r_dout ;
end



reg r_vaildout ;
always @(posedge i_clk50m or negedge i_rstn) begin
    if(!i_rstn)
        r_vaildout <= 1'b0 ;
    else if(r_vaild_d1)
        r_vaildout <= 1'b1 ;
    else
        r_vaildout <= 1'b0 ;
    end

assign o_dout     = r_dout      ;
assign o_vaildout = r_vaildout  ;

endmodule

