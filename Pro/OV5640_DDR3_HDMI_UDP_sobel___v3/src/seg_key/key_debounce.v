module key_debounce(
	input sys_clk,    //50MHz系统时钟
	input rst_n,	  //系统复位
	input key_in,     //按键输入
    output reg key_out     //滤波后key输出
);
parameter CNT_MAX  = 24'd1_000_000;  // 50MHz时钟下计数20ms
reg [23:0] cnt;
always @(posedge sys_clk or negedge rst_n) begin
	if(!rst_n)
		cnt <= 24'd0;
	else if(key_in == 1'b0)
		if(cnt <= CNT_MAX )
			cnt <= cnt  + 1'b1;
		else
			cnt <= cnt ;
	else 
		cnt <= 24'd0;
end

always @(posedge sys_clk or negedge rst_n) begin
	if(!rst_n)begin
        key_out <= 1'b0;
    end
	else if(cnt == CNT_MAX - 1'b1)begin
        key_out <= 1'b1;
    end
	else begin
        key_out <= 1'b0;
    end
end
endmodule