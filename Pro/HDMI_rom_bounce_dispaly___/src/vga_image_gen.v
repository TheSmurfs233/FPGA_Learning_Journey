module vga_image_gen (
    input  vga_clk,
    input  rst_n,
    input [9:0] pix_x,
    input [9:0] pix_y,  
    output [23:0] pix_data
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
wire rd_en ; //ROM读使能
wire [23:0] pic_data ; //自ROM读出的图片数据

//reg define
reg [15:0] rom_addr ; //读ROM地址
reg pic_valid ; //图片数据有效信号
reg [23:0] pix_data_bar ; //背景色彩信息

reg x_flag ; //x方向移动标志位
reg y_flag ; //y方向移动标志位
reg [9:0] x_move ; //x方向移动距离
reg [9:0] y_move ; //y方向移动距离

//instance define
blk_mem_gen_0 blk_mem_gen_0_inst (
  .clka(vga_clk),    // input wire clka
  .ena(rd_en),      // input wire ena
  .addra(rom_addr),  // input wire [15 : 0] addra
  .douta(pic_data)  // output wire [23 : 0] douta
);


//**********main logic************//
//x_flag:判断x方向移动标志位
always@(posedge vga_clk) begin
  if (!rst_n) begin
    x_flag <= 1'b0;
  end
  else if(x_move == 10'd0) begin
    x_flag <= 1'b0;
  end
  else if(x_move == 10'd539) begin
    x_flag <= 1'b1;
  end
  else begin
    x_flag <= x_flag;
  end
end

//y_flag:判断y方向移动标志位
always@(posedge vga_clk) begin
  if (!rst_n) begin
    y_flag <= 1'b0;
  end
  else if(y_move == 10'd0) begin
    y_flag <= 1'b0;
  end
  else if(y_move == 10'd379) begin
    y_flag <= 1'b1;
  end
  else begin
    y_flag <= y_flag;
  end
end

//x_move,y_move:控制x,y方向移动距离
always @(posedge vga_clk ) begin
  if (!rst_n) begin
    x_move <= 10'd0;
    y_move <= 10'd0;
  end
  else begin
    if(pix_x == 10'd639 && pix_y == 10'd479) begin
      if (x_flag == 1'b0) begin
        x_move <= x_move + 10'd1;
      end
      else if(x_flag == 1'b1) begin
        x_move <= x_move - 10'd1;
      end
      else begin
        x_move <= x_move;
      end
      if (y_flag == 1'b0) begin
        y_move <= y_move + 10'd1;
      end
      else if(y_flag == 1'b1) begin
        y_move <= y_move - 10'd1;
      end 
      else begin
        y_move <= y_move;
      end
    end
  end
end


//rd_en:ROM读使能
assign rd_en = ((pix_x >= x_move) 
&& (pix_x < (x_move + H_PIC))
&& (pix_y >= y_move)
&& (pix_y < (y_move+W_PIC)));

//pic_valid:图片数据有效信号
always@(posedge vga_clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
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
    if (!rst_n) begin
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

//rom_addr:读ROM地址
always@(posedge vga_clk or negedge rst_n) begin
    if(rst_n == 1'b0) begin
      rom_addr <= 16'h3FFF;
    end
    else if(rom_addr >= (PIC_SIZE - 1'b1)) begin
      rom_addr <= 16'd0;
    end
    else if(rd_en == 1'b1) begin
      rom_addr <= rom_addr + 1'b1;
    end
end

endmodule