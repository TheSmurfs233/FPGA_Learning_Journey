module vga_char (
    input  sys_clk,
    input  rst_n,
    output hsync,
    output vsync,
    output [15:0] rgb
);
    wire vga_clk;
    wire locked;
    wire [9:0] pix_x;
    wire [9:0] pix_y;
    wire [15:0] pix_data;
    //例化时钟模块
    vga_clk_gen  vga_clk_gen_inst (
        .clk(sys_clk),
        .rst_n(rst_n),
        .vga_clk(vga_clk),
        .locked(locked)
    );
    //例化时序控制模块
    vga_timing_ctrl  vga_timing_ctrl_inst (
        .vga_clk(vga_clk),
        .rst_n(rst_n && locked),
        .pix_data(pix_data),
        .hsync(hsync),
        .vsync(vsync),
        .pix_x(pix_x),
        .pix_y(pix_y),
        .rgb(rgb)
    );
    //例化图像生成模块
    vga_image_gen  vga_image_gen_inst (
        .vga_clk(vga_clk),
        .rst_n(rst_n && locked),
        .pix_x(pix_x),
        .pix_y(pix_y),
        .pix_data(pix_data)
    );
endmodule