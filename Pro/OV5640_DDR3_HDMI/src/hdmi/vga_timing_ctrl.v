module vga_timing_ctrl (
    input           vga_clk ,
    input           rst_n   ,
    input   [23:0]  pix_data,
    output          hsync   ,
    output          vsync   ,
    output  [9:0]   pix_x   ,
    output  [9:0]   pix_y   ,
    output  [23:0]  rgb     ,
    output      pix_data_req,//像素数据请求信号
    output          de      //de:数据有效信号
);
    reg [9:0] h_cnt;
    reg [9:0] v_cnt;
    wire rgb_valid;//rgb有效信号
    //wire pix_data_req;//像素数据请求信号

    assign de = rgb_valid;

    //行计数器
    always @(posedge vga_clk ) begin
        if (!rst_n) begin
            h_cnt <= 10'h3FF;
        end
        else begin
            if(h_cnt >= 10'd799) begin
                h_cnt <= 10'd0;
            end
            else begin
                h_cnt <= h_cnt + 10'd1;
            end
        end
    end

    //场计数器
    always @(posedge vga_clk ) begin
        if (!rst_n) begin
            v_cnt <= 1'b0;
        end
        else if(v_cnt == 10'd524) begin
            v_cnt <= 1'b0;
        end
        else if(h_cnt == 10'd799) begin
            v_cnt <= v_cnt + 1'b1;
        end
        else begin
            v_cnt <= v_cnt;
        end
    end

    //行同步信号
    assign hsync = (h_cnt <= 10'd95);
    //场同步信号
    assign vsync = (v_cnt <= 10'd1);

    //rgb有效信号
    assign rgb_valid = (h_cnt >= 10'd144) && (h_cnt <= 10'd783) && (v_cnt >= 10'd35) && (v_cnt <= 10'd514);
    //pix_data_req像素数据请求信号
    assign pix_data_req = (h_cnt >= 10'd144 -1'b1) && (h_cnt <= 10'd783 - 1'b1) && (v_cnt >= 10'd35) && (v_cnt <= 10'd514);

    //像素x坐标输出
    assign pix_x = pix_data_req ? h_cnt - 10'd143 : 10'h3FF;
    //像素y坐标输出
    assign pix_y = pix_data_req ? v_cnt - 10'd35 : 10'h3FF;

    //rgb:输出像素点色彩信息
    assign rgb = (rgb_valid == 1'b1) ? pix_data : 24'b0 ;
endmodule
