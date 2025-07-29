module vga_image_gen (
    input  vga_clk,
    input  rst_n,
    input [9:0] pix_x,
    input [9:0] pix_y,  
    output reg [23:0] pix_data
);

    //颜色参数
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