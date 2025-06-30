`timescale 1ns / 1ps


//     Gray = R*0.299 + G*0.587 + B*0.114
//     Gray = (R*76 + G*150 + B*30) >> 8    使用8位精度来进行运算

module rgb2gray
#(
                       parameter  Pixel_Width = 16
)
(
                        input                         I_clk,
                        input                         I_reset_p,
                        input                         I_pixel_data_valid,
                        input  [Pixel_Width-1:0]      I_pixel_data_RGB,//RGB 888 [23-16,15-8,7-0]
                        output reg                    O_pixel_data_valid,
                        output [7:0]                  O_pixel_data_Gray

);

reg  [14:0] R_mult;// 7bit * 8 bit
reg  [15:0] G_mult;//8bit * 8bit
reg  [14:0] B_mult;//5bit * 8bit
reg  [16:0] gray_temp;
reg         pixel_data_valid_d1; 


wire [7:0]  RGB_R;
wire [7:0]  RGB_G;
wire [7:0]  RGB_B;

assign  RGB_R = {I_pixel_data_RGB[15:11],I_pixel_data_RGB[13:11]};
assign  RGB_G = {I_pixel_data_RGB[10:5],I_pixel_data_RGB[6:5]};
assign  RGB_B = {I_pixel_data_RGB[4:0],I_pixel_data_RGB[2:0]};

always@(posedge I_clk)
   begin
      if(I_reset_p)
         begin
            R_mult <= 'h0;
            G_mult <= 'h0;
            B_mult <= 'h0;            
         end
      else
         begin
            R_mult <= RGB_R * 76;
            G_mult <= RGB_G * 150;
            B_mult <= RGB_B * 30;            
         end
   end

always@(posedge I_clk)
   begin
      if(I_reset_p)
         gray_temp <=  'h0;
      else
         gray_temp <= R_mult + G_mult + B_mult;
   end
always@(posedge I_clk)
   begin
      pixel_data_valid_d1 <= I_pixel_data_valid;
      O_pixel_data_valid <= pixel_data_valid_d1;
   end

assign    O_pixel_data_Gray = (gray_temp[16])? 8'hff : gray_temp[15:8];// >> 8 bit
   
endmodule

