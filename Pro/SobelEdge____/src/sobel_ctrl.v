module sobel_ctrl (
    input               sys_clk     ,//输入系统时钟，50MHz
    input               sys_rst_n   ,//输入系统复位信号，低有效
    input               in_flag     , 
    input       [7:0]   in_data     ,
    output  reg         out_flag    ,
    output  reg [7:0]   out_data    
);

//parameter define
parameter LENGTH_P = 10'd100;//图像长度
parameter WIDTH_P = 10'd100;//图像宽度
parameter THRESHOLD = 8'b000_011_00 ; //比较阈值
parameter BLACK = 8'b0000_0000 ; //黑色
parameter WHITE = 8'b1111_1111 ; //白色

//wire define
wire    [7:0]   data_out1       ;//fifo1读出数据
wire    [7:0]   data_out2       ;//fifo2读出数据
//reg define
reg     [7:0]   cnt_h           ;//行数据计数器
reg     [7:0]   cnt_v           ;//列数据计数器
reg     [7:0]   cnt_rd          ;//读出数据计数器
reg             rd_en           ;//fifo1,fifo2读出使能
reg             wr_en1          ;//fifo1写使能
reg     [7:0]   data_in1        ;//fifo1写数据
reg             wr_en2          ;//fifo2写使能
reg     [7:0]   data_in2        ;//fifo2写数据
reg             dout_flag       ;//使能信号
reg             rd_en_reg1      ;//输出数据标志信号，延后一拍
reg             rd_en_reg2      ;//a,b,c赋值标志信号
reg             gx_gy_flag      ;//gx,gy计算标志信号
reg             gxy_flag        ; //gxy计算标志信号
reg             compare_flag    ; //阈值比较标志信号
reg     [7:0]   data_out1_reg1  ; //fifo1数据输出寄存
reg     [7:0]   data_out2_reg1  ; //fifo2数据输出寄存
reg     [7:0]   in_data_reg1    ; //in_data数据寄存
reg     [7:0]   a1              ;
reg     [7:0]   a2              ;
reg     [7:0]   a3              ;
reg     [7:0]   b1              ;
reg     [7:0]   b2              ;
reg     [7:0]   b3              ;
reg     [7:0]   c1              ;
reg     [7:0]   c2              ;
reg     [7:0]   c3              ; //图像数据
reg     [8:0]   gx              ;
reg     [8:0]   gy              ; //gx,gy
reg     [7:0]   gxy             ; //gxy

//instance define
fifo_generator_0 fifo_generator_0_inst1 (
  .clk(sys_clk),      // input wire clk
  .din(data_in1),      // input wire [7 : 0] din
  .wr_en(wr_en1),  // input wire wr_en
  .rd_en(rd_en),  // input wire rd_en
  .dout(data_out1),    // output wire [7 : 0] dout
  .full( ),    // output wire full
  .empty( )  // output wire empty
);
fifo_generator_0 fifo_generator_0_inst2 (
  .clk(sys_clk),      // input wire clk
  .din(data_in2),      // input wire [7 : 0] din
  .wr_en(wr_en2),  // input wire wr_en
  .rd_en(rd_en),  // input wire rd_en
  .dout(data_out2),    // output wire [7 : 0] dout
  .full( ),    // output wire full
  .empty( )  // output wire empty
);

//*********main logic*********//
//cnt_h:行数据计数器 0~99
always @(posedge sys_clk , negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        cnt_h <= 0;
    end
    else if(in_flag == 1'b1) begin
        if (cnt_h == LENGTH_P - 1'b1) begin
            cnt_h <= 8'd0;
        end
        else begin
            cnt_h <= cnt_h + 1'b1;
        end
    end
    else begin
        cnt_h <= cnt_h;
    end
end

//cnt_v:列计数器 0~99
always @(posedge sys_clk , negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        cnt_v <= 0;
    end
    else if(in_flag == 1'b1 && cnt_h == LENGTH_P - 1'b1) begin
        if (cnt_v == WIDTH_P - 1'b1) begin
            cnt_v <= 8'd0;
        end
        else begin
            cnt_v <= cnt_v + 1'b1;
        end
    end
    else begin
        cnt_v <= cnt_v;
    end
end

//cnt_rd：fifo数据读出个数计数,用来判断何时对gx,gy进行运算
always @(posedge sys_clk , negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        cnt_rd <= 0;
    end
    else if(rd_en == 1'b1) begin
        if(cnt_rd == LENGTH_P - 1'b1)begin
            cnt_rd <= 8'd0;
        end
        else begin
            cnt_rd <= cnt_rd + 1'b1;
        end
    end
    else begin
        cnt_rd <= cnt_rd;
    end
end

//wr_en1：fifo1写使能,高电平有效
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        wr_en1 <= 1'b0;
    end
    else if(cnt_v == 8'd0 && in_flag == 1'b1) begin 
        wr_en1 <= 1'b1; //第0行写入fifo1
    end
    else begin
        wr_en1 <= dout_flag;    //2-98行写入fifo1
    end
end

//wr_en2：fifo2写使能,高电平有效
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        wr_en2 <= 1'b0;
    end
    else if((cnt_v >=8'b1) && (cnt_v <= (WIDTH_P - 1'b1) - 1'b1) && (in_flag == 1'b1)) begin
        wr_en2 <= 1'b1; //2-98行写入fifo2
    end
    else begin
        wr_en2 <= 1'b0;
    end
end

//data_in1：fifo1的数据写入
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        data_in1 <= 8'd0;
    end
    else if(cnt_v == 8'd0 && in_flag == 1'b1) begin
        data_in1 <= in_data; //第0行写入fifo1
    end
    else if (dout_flag == 1'b1) begin
        data_in1 <= data_out2;
    end
    else begin
        data_in1 <= data_in1;
    end
end

//data_in2：fifo2的数据写入
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        data_in2 <= 8'd0;
    end
    else if((cnt_v >= 8'd1) && (cnt_v <= (WIDTH_P - 1'b1) - 1'b1) && (in_flag == 1'b1)) begin
        data_in2 <= in_data;
    end
    else begin
        data_in2 <= data_in2;
    end
end

//rd_en：fifo1和fifo2的共用读使能,高电平有效
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        rd_en <= 1'b0;
    end
    else if((cnt_v >= 8'd2) && (cnt_v <= (WIDTH_P - 1'b1) - 1'b1) && (in_flag == 1'b1)) begin
        rd_en <= 1'b1;
    end
    else begin
        rd_en <= 1'b0;
    end
end

//dout_flag：控制fifo1写使能wr_en1
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        dout_flag <= 1'b0;
    end
    else if((wr_en2 == 1'b1) && (rd_en == 1'b1)) begin
        dout_flag <= 1'b1;
    end
    else begin
        dout_flag <= 1'b0;
    end
end

//rd_en_reg1：输出数据标志信号
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        rd_en_reg1 <= 1'b0;
    end
    else if(rd_en == 1'b1) begin
        rd_en_reg1 <= 1'b1;
    end
    else begin
        rd_en_reg1 <= 1'b0;
    end
end

//data_out1_reg1：data_out1数据寄存
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        data_out1_reg1 <= 8'd0;
    end
    else if(rd_en_reg1 == 1'b1) begin
        data_out1_reg1 <= data_out1;
    end
end

//data_out2_reg1：data_out2数据寄存
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        data_out2_reg1 <= 8'd0;
    end
    else if(rd_en_reg1 == 1'b1) begin
        data_out2_reg1 <= data_out2;
    end
end

//in_data_reg1：输入数据inin_data寄存
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        in_data_reg1 <= 8'd0;
    end
    else if(rd_en_reg1 == 1'b1) begin
        in_data_reg1 <= in_data;
    end
    else begin
        in_data_reg1 <= in_data_reg1;
    end
end

//rd_en_reg2：a,b,c赋值标志信号
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        rd_en_reg2 <= 1'b0;
    end
    else if(rd_en_reg1 == 1'b1) begin
        rd_en_reg2 <= 1'b1;
    end
    else begin
        rd_en_reg2 <= 1'b0;
    end
end

//gx_gy_flag：gx,gy计算标志信号
always @(posedge sys_clk ,negedge sys_rst_n ) begin
    if (!sys_rst_n) begin
        gx_gy_flag <= 1'b0;
    end
    else if((rd_en_reg2 == 1'b1)&&((cnt_rd >= 8'd3)||(cnt_rd == 8'd0)))begin
        gx_gy_flag <= 1'b1;
    end
    else begin
        gx_gy_flag <= 1'b0;
    end
end

//gxy_flag：gxy计算标准信号
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        gxy_flag <= 1'b0;
    end
    else if(gx_gy_flag == 1'b1)begin
        gxy_flag <= 1'b1;
    end
    else begin
        gxy_flag <= 1'b0;
    end
end

//compare_flag,阈值比较标志信号
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        compare_flag <= 1'b0;
    end
    else if(gxy_flag == 1'b1)begin
        compare_flag <= 1'b1;
    end
    else begin
        compare_flag <= 1'b0;
    end
end

//a,b,c赋值
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        a1 <= 8'd0;
        a2 <= 8'd0;
        a3 <= 8'd0;
        b1 <= 8'd0;
        b2 <= 8'd0;
        b3 <= 8'd0;
        c1 <= 8'd0;
        c2 <= 8'd0;
        c3 <= 8'd0;
    end
    else if(rd_en_reg2 == 1'b1)begin
        a1 <= data_out1_reg1;
        b1 <= data_out2_reg1;
        c1 <= in_data_reg1;
        a2 <= a1;
        b2 <= b1;
        c2 <= c1;
        a3 <= a2;
        b3 <= b2;
        c3 <= c2;
    end
end

 //gx：计算gx
always@(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)begin
        gx <= 9'd0;
    end
    else if(gx_gy_flag == 1'b1)begin
    gx <= a3 - a1 + ((b3 - b1) << 1) + c3 - c1;
    end
    else begin
        gx <= gx;
    end
end

//gy：计算gy
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        gy <= 9'd0;
    end
    else if(gx_gy_flag == 1'b1)begin
        gy <= a1 - c1 + ((a2 - c2) << 1) + a3 - c3;
    end
    else begin
        gy <= gy;
    end
end

//gxy：gxy计算
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        gxy <= 0;
    end
    else if((gx[8] == 1'b1) && (gy[8] == 1'b1) && (gxy_flag == 1'b1))begin
        gxy <= (~gx[7:0] + 1'b1) + (~gy[7:0] + 1'b1);
    end
    else if((gx[8] == 1'b1) && (gy[8] == 1'b0) && (gxy_flag == 1'b1))begin
        gxy <= (~gx[7:0] + 1'b1) + (gy[7:0]);
    end
    else if((gx[8] == 1'b0) && (gy[8] == 1'b1) && (gxy_flag == 1'b1))begin
        gxy <= (gx[7:0]) + (~gy[7:0] + 1'b1);
    end
    else if((gx[8] == 1'b0) && (gy[8] == 1'b0) && (gxy_flag == 1'b1))begin
        gxy <= (gx[7:0]) + (gy[7:0]);
    end
end

//out_data：通过gxy与阈值比较,赋值out_data
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        out_data <= 8'b0;
    end
    else if((gxy >= THRESHOLD) && (compare_flag == 1'b1))begin
        out_data <= BLACK;
    end
    else if(compare_flag == 1'b1)begin
        out_data <= WHITE;
    end
end

//out_flag：输出标志位
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
        out_flag <= 1'b0;
    end
    else if(compare_flag == 1'b1)begin
        out_flag <= 1'b1;
    end
    else begin
        out_flag <= 1'b0;
    end
end
endmodule
