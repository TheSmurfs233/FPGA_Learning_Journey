module vga_image_gen (
    input  vga_clk,
    input  rst_n,
    input [9:0] pix_x,
    input [9:0] pix_y,  
    output [15:0] pix_data 
);
//parameter definition
parameter H_VALID = 10'd640 ; //行有效数据
parameter V_VALID = 10'd480 ; //场有效数据

parameter H_PIC = 10'd100 ; //图片长度
parameter W_PIC = 10'd100 ; //图片宽度
parameter PIC_SIZE= 14'd10000 ; //图片像素个数

//颜色参数
    parameter RED = 16'hF800; //红色
    parameter ORANGE = 16'hFD20; //橙色
    parameter YELLOW = 16'hFFE0; //黄色
    parameter GREEN = 16'h07E0; //绿色 
    parameter CYAN = 16'h07FF; //青色
    parameter BLUE = 16'h001F; //蓝色
    parameter PURPLE = 16'hF81F; //紫色
    parameter BLACK = 16'h0000; //黑色
    parameter WHITE = 16'hFFFF; //白色
    parameter GRAY = 16'hD69A; //灰色
 
//wire definition
wire rd_en ; //ROM读使能
wire [15:0] pic_data ; //自ROM读出的图片数据

//reg definition
reg [13:0] rom_addr ; //读ROM地址
reg pic_valid ; //图片数据有效信号
reg [15:0] pix_data_bar ; //背景色彩信息



/*********main logic************/

//rd_en:ROM读使能
assign rd_en = (((pix_x >= (((H_VALID - H_PIC)/2) - 1'b1))
&& (pix_x < (((H_VALID - H_PIC)/2) + H_PIC - 1'b1)))
&&((pix_y >= ((V_VALID - W_PIC)/2))
&& ((pix_y < (((V_VALID - W_PIC)/2) + W_PIC)))));

//pic_valid:图片数据有效信号
always@(posedge vga_clk or negedge rst_n)
if(rst_n == 1'b0) begin
  pic_valid <= 1'b0;
end
else begin
  pic_valid <= rd_en;
end


//pix_data_out:输出VGA显示图像数据
assign pix_data = (pic_valid == 1'b1) ? pic_data : pix_data_bar;

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
always@(posedge vga_clk or negedge rst_n)
if(rst_n == 1'b0) begin
  rom_addr <= 14'h3FFF;
end
else if(rom_addr >= (PIC_SIZE - 1'b1)) begin
  rom_addr <= 14'd0;
end
else if(rd_en == 1'b1) begin
  rom_addr <= rom_addr + 1'b1;
end


//ROM IP核实例化
blk_mem_gen_0 blk_mem_gen_0_ins (
  .clka(vga_clk),    // input wire clka
  .ena(rd_en),      // input wire ena
  .wea( ),      // input wire [0 : 0] wea
  .addra(rom_addr),  // input wire [13 : 0] addra
  .dina( ),    // input wire [15 : 0] dina
  .douta(pic_data )  // output wire [15 : 0] douta
);

endmodule