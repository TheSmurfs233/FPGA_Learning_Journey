module uart_tx_4byte #(
    parameter CLK_FREQ = 50_000_000,    
    parameter UART_BAUD =115200
)
(
    input           clk         ,  //50MHz
    input           rst_n       ,
    input           uart_tx_en  ,
    input [31:0]    uart_tx_data,
    output          uart_tx_done,
    output          uart_tx_d
);
//paramater define

//reg define
reg [1:0]   tx_cnt;//发送数据计数器
reg [31:0]  tx_data_t;//发送数据寄存器
reg [7:0]   tx_data;//发送数据
//wire define
wire tx_done;//发送完成标志
reg tx_en;//发送使能
reg tx_en_reg1;


//************main logic************//

assign uart_tx_done = tx_done & (tx_cnt==2'd3); //发送完成标志

always @(posedge clk ,negedge rst_n) begin
    if (!rst_n) begin
        tx_en <= 1'd0; // 复位时初始化
        tx_en_reg1 <= 1'd0;

    end
    else begin
        tx_en <= uart_tx_en | (tx_done & tx_cnt!=2'd3); // 发送使能
        tx_en_reg1 <= tx_en;
    end
end


//tx_cnt:发送数据计数
always @(posedge clk , negedge rst_n) begin
    if (!rst_n) begin
        tx_cnt <= 2'd0; // 复位时初始化
    end
    else begin
        if (tx_done == 1'b1) begin
            tx_cnt <= tx_cnt + 2'd1; // 如果发送完成，计数器加 1
        end
        else begin
            tx_cnt <= tx_cnt; // 否则保持不变
        end
    end
end

//tx_data_t:发送数据寄存
always @(posedge clk , negedge rst_n) begin
    if (!rst_n) begin
        tx_data_t <= 32'd0; // 复位时初始化
    end
    else begin
        tx_data_t <= uart_tx_data; 
    end
end
//tx_data:发送数据  //[31:24][23:16][15:8][7:0]
always @(posedge clk ,negedge rst_n) begin
    if (!rst_n) begin
        tx_data <= 8'd0; // 复位时初始化
    end
    else begin
        case (tx_cnt)
            2'd0: tx_data <= tx_data_t[31:24]; // 第一次发送
            2'd1: tx_data <= tx_data_t[23:16]; // 第二次发送
            2'd2: tx_data <= tx_data_t[15:8]; // 第三次发送
            2'd3: tx_data <= tx_data_t[7:0]; // 第四次发送
            default: tx_data <= 8'd0; // 默认情况
        endcase
    end
end

uart_tx # (
    .CLK_FREQ(CLK_FREQ),
    .UART_BAUD(UART_BAUD)
  )
  uart_tx_inst (
    .clk(clk),
    .rst_n(rst_n),
    .uart_tx_en(tx_en_reg1),
    .uart_tx_data(tx_data),
    .uart_tx_done(tx_done),
    .uart_tx_d(uart_tx_d)
  );
endmodule

