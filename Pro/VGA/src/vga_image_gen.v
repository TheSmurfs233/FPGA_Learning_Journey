module vga_image_gen (
    input  vga_clk,
    input  rst_n,
    input [9:0] pix_x,
    input [9:0] pix_y,  
    output reg [15:0] pix_data
);
    //颜色参数
    parameter BLACK = 16'h0000; //黑色
    parameter WHITE = 16'hFFFF; //白色
    parameter GREEN = 16'h0400; //绿色    
    parameter BLUE = 16'h001F; //蓝色
    parameter RED = 16'hF800; //红色
    parameter ORANGE = 16'hFD20; //橙色
    parameter YELLOW = 16'hFFE0; //黄色
    parameter PURPLE = 16'hF81F; //紫色
    parameter CYAN = 16'h07FF; //青色
    parameter GRAY = 16'h8410; //灰色

    always @(posedge vga_clk ) begin
        if (!rst_n) begin
            pix_data <= BLACK;
        end
        else begin
            case (pix_x/10'd64)
                10'd0: pix_data <= RED;
                10'd1: pix_data <= ORANGE;
                10'd2: pix_data <= YELLOW;
                10'd3: pix_data <= GREEN;
                10'd4: pix_data <= CYAN;
                10'd5: pix_data <= BLUE;
                10'd6: pix_data <= PURPLE;
                10'd7: pix_data <= BLACK;
                10'd8: pix_data <= WHITE;
                10'd9: pix_data <= GRAY;
                default: pix_data <= BLACK;
            endcase
        end
            
    end
endmodule