module key_filter (
    input   wire        sys_clk     ,
    input   wire        sys_rst_n   ,
    input   wire        key_in      ,

    output  reg         key_flag 
);
    
//parameter define
parameter CNT_MAX = 20'd999_999 ; //计数器最大值

//reg define
reg [19:0] cnt_20ms ; //计数器


//wire define


/****************main logic****************/

//cnt_20ms:如果时钟的上升沿检测到外部按键输入的值为低电平时，计数器开始计数
always @(posedge sys_clk ) begin
    if (!sys_rst_n) begin
        cnt_20ms <= 20'd0;
    end
    else if(key_in == 1'b1) begin
        cnt_20ms <= 20'd0;
    end
    else if(key_in == 1'b0 && cnt_20ms == CNT_MAX) begin
        cnt_20ms <= cnt_20ms;
    end
    else begin
        cnt_20ms <= cnt_20ms + 1'b1;
    end
end

//key_flag:当计数满20ms后产生按键有效标志位
//且key_flag在999_999时拉高,维持一个时钟的高电平
always@(posedge sys_clk ) begin
    if (!sys_rst_n) begin
        key_flag <= 1'b0;
    end
    else if(cnt_20ms == CNT_MAX - 1'b1) begin
        key_flag <= 1'b1;
    end
    else begin
        key_flag <= 1'b0;
    end
end

endmodule