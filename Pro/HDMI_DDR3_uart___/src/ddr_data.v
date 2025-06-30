`timescale 1ns / 1ns
module ddr_data(
input   wire        sys_clk     , //系统时钟
input   wire        sys_rst_n   , //系统复位，低电平有效
output  reg         wr_en       , //写使能
output  reg [7:0]   wr_data     , //写数据                              
output  reg         rd_en       , //读使能
input   wire [31:0] rd_data     , //读数据
input   wire        data_rd_valid,//读取有效
output  reg         read_enable,   //写完成，开始读
input   wire        uart_rx_d,
output  wire        uart_tx_d
   
);
//parameter define

parameter   H_PIXEL     =   24'd640 ;   //水平方向像素个数,用于设置DDR3RAM缓存大小
parameter   V_PIXEL     =   24'd480 ;   //垂直方向像素个数,用于设置DDR3RAM缓存大小
localparam UART_BAUD = 20'd512000; //波特率
localparam CLK_FREQ = 26'd50_000_000; //时钟频率

//********************************************************************//
//***************************** Main Code ****************************//
//********************************************************************//

(*mark_debug="true"*)wire uart_rx_done;
(*mark_debug="true"*)wire [7:0] uart_rx_data;
(*mark_debug="true"*)reg  [23:0] byte_rx_cnt;
(*mark_debug="true"*)reg  [23:0] byte4_tx_cnt;
(*mark_debug="true"*)wire  uart_tx_done;

uart_rx #(
    .CLK_FREQ(CLK_FREQ),
    .UART_BAUD(UART_BAUD)
)
uart_rx_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_rx_d(uart_rx_d),
    .uart_rx_done(uart_rx_done),
    .uart_rx_data(uart_rx_data)
);
uart_tx_4byte # (
    .CLK_FREQ(CLK_FREQ),
    .UART_BAUD(UART_BAUD)
  )
  uart_tx_4byte_inst (
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    .uart_tx_en(rd_en),
    .uart_tx_data(rd_data),
    .uart_tx_done(uart_tx_done),
    .uart_tx_d(uart_tx_d)
  );



//接收字节计数
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n==1'b0)begin
        byte_rx_cnt <= 24'd0;
    end
    else if(uart_rx_done == 1'b1) begin
        byte_rx_cnt <= byte_rx_cnt + 24'd1;
    end
end

//发送字节计数
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n==1'b0)begin
        byte4_tx_cnt <= 24'd0;
    end
    else if(uart_tx_done == 1'b1) begin
        byte4_tx_cnt <= byte4_tx_cnt + 24'd1;
    end
end


//read_enable：写完成，开始读
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n==1'b0)begin
        read_enable <= 1'd0;
    end
    else if(byte_rx_cnt >= H_PIXEL*V_PIXEL*4) begin//byte_rx_cnt > 100*100*4 && byte4_tx_cnt <= 100*100 - 1
        read_enable <= 1'd1;
    end
    else begin
        read_enable <= 1'd0;
    end
end
//写入数据
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n==1'b0)begin
        wr_en<=1'b0;
        wr_data<=8'd0;
    end
    else begin
        wr_en<=uart_rx_done;
        wr_data<=uart_rx_data;
    end
end


// //读取数据
// always@(posedge sys_clk or negedge sys_rst_n)begin
//     if(sys_rst_n==1'b0)begin
//       rd_en<=1'b0;
//     end
//     //在读数据缓冲开始，并且读数据有效，fifo非空，开始读
//     else if(read_enable==1'b1&data_rd_valid==1'b1)begin
//       rd_en<=1'b1;
//     end
//     else begin
//       rd_en<=1'b0;
//     end
// end

// //rd_en:ddr读使能，当写入完成或串口发送完成时读使能拉高一个时钟周期
// reg data_rd_valid_prev, read_enable_prev;  // 保存上一周期的 data_rd_valid 和 read_enable 的值
// always @(posedge sys_clk or negedge sys_rst_n) begin
//     if (!sys_rst_n) begin
//         data_rd_valid_prev <= 1'b0;
//         read_enable_prev <= 1'b0;
//         rd_en  <= 1'b0;
//     end
//     else begin
//         data_rd_valid_prev <= data_rd_valid;      // 记录当前 a 的值
//         read_enable_prev <= read_enable;      // 记录当前 b 的值
//         // 当 a 和 b 当前为高，且上一周期不同时为高时，生成单周期脉冲
//         rd_en <=  (read_enable && uart_tx_done)||((data_rd_valid && read_enable) && !(data_rd_valid_prev && read_enable_prev));
//     end
// end

// //写入数据
// always@(posedge sys_clk or negedge sys_rst_n)
// begin
//   if(sys_rst_n==1'b0)begin
//     wr_en<=1'b0;
//     wr_data<=32'd0;
//     read_enable<=1'b0;
//   end
//   else begin

//     if(wr_data==32'd1024) begin //写入到1024，结束写操作，进入读操作
//       wr_en<=1'b0;       //拉低写使能
//       read_enable<=1'b1; //开始缓冲读数据
//       wr_data<=wr_data; 
//     end
//     else begin
//       wr_en<=1'b1;      //拉高写使能
//       read_enable<=1'b0;//禁止缓冲读数据
//       wr_data<=wr_data+32'd1;//数据累加
//     end
//   end

// end

endmodule
