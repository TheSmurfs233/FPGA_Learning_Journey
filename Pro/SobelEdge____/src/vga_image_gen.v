module vga_image_gen (
    input           vga_clk ,
    input           sys_clk , 
    input           sys_rst_n   ,
    input   [9:0]   pix_x   ,
    input   [9:0]   pix_y   ,  
    input   [7:0]   in_data , //输入RAM写数据
    input           in_flag , //输入RAM写使能

    output  [23:0]  pix_data
);

//parameter define
parameter RED       = 24'hFF0000; //红色
parameter ORANGE    = 24'hFFA500; //橙色
parameter YELLOW    = 24'hFFFF00; //黄色
parameter GREEN     = 24'h008000; //绿色    
parameter CYAN      = 24'h00FFFF; //青色
parameter BLUE      = 24'h0000FF; //蓝色
parameter PURPLE    = 24'h800080; //紫色
parameter BLACK     = 24'h000000; //黑色
parameter WHITE     = 24'hFFFFFF; //白色
parameter GRAY      = 24'h808080; //灰色

parameter H_VALID = 10'd640 ; //行有效数据
parameter V_VALID = 10'd480 ; //场有效数据

parameter H_PIC = 10'd100 ; //图片长度
parameter W_PIC = 10'd100 ; //图片宽度
parameter PIC_SIZE= 14'd10000 ; //图片像素个数

//wire define
wire            rd_en        ; //RAM读使能
wire    [23:0]  pic_data     ; //自RAM读出的图片数据

//reg define
reg             pic_valid    ; //图片数据有效信号
reg     [23:0]  pix_data_bar ; //背景色彩信息
reg     [15:0]  wr_addr      ; //ram写地址
reg     [15:0]  rd_addr      ; //ram读地址

//instance define


blk_mem_gen_0 blk_mem_gen_0_inst (
  .clka(sys_clk),    // input wire clka
  .ena(in_flag),      // input wire ena
  .wea(in_flag),      // input wire [0 : 0] wea
  .addra(wr_addr),  // input wire [15 : 0] addra
  .dina(in_data),    // input wire [7 : 0] dina
  .clkb(vga_clk),    // input wire clkb
  .enb(rd_en),      // input wire enb
  .addrb(rd_addr),  // input wire [13 : 0] addrb
  .doutb(pic_data)  // output wire [31 : 0] doutb
);
//**********main logic************//
//wr_addr:ram写地址
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(sys_rst_n == 1'b0)begin
      wr_addr <= 16'd0;
    end
    else if((wr_addr == (PIC_SIZE - 1'b1)) && (in_flag == 1'b1))begin
      wr_addr <= 16'd0;
    end
    else if(in_flag == 1'b1)begin
      wr_addr <= wr_addr + 1'b1;
    end
end

//rd_addr:ram读地址
always@(posedge vga_clk or negedge sys_rst_n)begin
  if(sys_rst_n == 1'b0)begin
    rd_addr <= 16'd0;
  end
  else if(rd_addr == (PIC_SIZE - 1'b1))begin
    rd_addr <= 16'd0;
  end
  else if(rd_en == 1'b1)begin
    rd_addr <= rd_addr + 1'b1;
  end
  else begin
    rd_addr <= rd_addr;
  end
end
//rd_en:ram读使能
assign rd_en = (((pix_x >= (((H_VALID - H_PIC)/2) - 1'b1))
&& (pix_x < (((H_VALID - H_PIC)/2) + H_PIC - 1'b1)))
&&((pix_y >= ((V_VALID - W_PIC)/2))
&& ((pix_y < (((V_VALID - W_PIC)/2) + W_PIC)))));

//pic_valid:图片数据有效信号
always@(posedge vga_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0) begin
      pic_valid <= 1'b0;
    end
    else begin
      pic_valid <= rd_en;
    end
end


//pix_data_out:输出VGA显示图像数据
assign pix_data = (pic_valid == 1'b1) ? pic_data : pix_data_bar;


//彩条显示
//根据当前像素点坐标指定当前像素点颜色数据，在屏幕上显示彩条
always @(posedge vga_clk ) begin
    if (!sys_rst_n) begin
        pix_data_bar <= BLACK;
    end
    else begin
        case (pix_x/10'd64)
            10'd0: pix_data_bar <= RED;
            10'd1: pix_data_bar <= ORANGE;
            10'd2: pix_data_bar <= YELLOW;
            10'd3: pix_data_bar <= GREEN;
            10'd4: pix_data_bar <= CYAN;
            10'd5: pix_data_bar <= BLUE;
            10'd6: pix_data_bar <= PURPLE;
            10'd7: pix_data_bar <= BLACK;
            10'd8: pix_data_bar <= WHITE;
            10'd9: pix_data_bar <= GRAY;
            default: pix_data_bar <= BLACK;
        endcase
    end
end

endmodule