
module front_show(
    input  wire[3:0]  display_num, // 要显示的数字
    input  wire[9:0]  pixel_x, //行像素坐标
    input  wire[9:0]  pixel_y, //列像素坐标


    output wire        front_de,
    output reg [23:0]  pixel_data_out
);

parameter FRONT_COLOUR = 24'h000000; // 黑色文字
parameter BACK_COLOUR  = 24'hffffff; // 白色背景
parameter FRONT_WIDTH  = 8'd32;
parameter FRONT_HIGH   = 8'd64;

parameter FRONT_XSTART = 597;//字符串起始x坐标
parameter FRONT_YSTART = 10;//字符串起始y坐标  

wire [9:0]front_row_index; //像素点相对于字符区城起始点水平坐标
wire [9:0]front_col_index; //像素点相对于字符区城起始点垂直坐标

wire [FRONT_WIDTH -1 : 0] row_data; //行数据

assign front_col_index = FRONT_WIDTH - 1 -(pixel_x - FRONT_XSTART); //列坐标
assign front_row_index = pixel_y - FRONT_YSTART; //行坐标

// front_de:字符显示使能
assign front_de =  (pixel_x >= FRONT_XSTART) 
                && (pixel_x <  (FRONT_XSTART + FRONT_WIDTH)) 
                && (pixel_y >= FRONT_YSTART) 
                && (pixel_y <  FRONT_YSTART + FRONT_HIGH) ;


/*--------------------字库----------------------*/
digit_rom_64x32  digit_rom_64x32_inst (
    .digit(display_num),
    .row_addr(front_row_index),
    .row_data(row_data)
  );

always @(*) begin
    if (front_de == 1'b1) begin
        pixel_data_out = (row_data[front_col_index] == 1'b1) ? FRONT_COLOUR : BACK_COLOUR;
    end
    else begin
        pixel_data_out = BACK_COLOUR; // 默认颜色
    end
end


endmodule