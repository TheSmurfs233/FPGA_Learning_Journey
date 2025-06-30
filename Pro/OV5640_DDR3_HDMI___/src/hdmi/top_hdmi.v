module top_hdmi (
    input           sys_clk     ,
    input           sys_rst_n   ,
    input           clk_25m     ,
    input           clk_125m    ,
    input   [31:0]  pix_data    ,
    output          pix_data_req,
    
    //hdmi output port
    output          ddc_scl     ,
    output          ddc_sda     ,
    output          hdmi_clk_p  ,
    output          hdmi_clk_n  ,
    output          hdmi_r_p    ,
    output          hdmi_r_n    ,
    output          hdmi_g_p    ,
    output          hdmi_g_n    ,
    output          hdmi_b_p    ,
    output          hdmi_b_n    
);
    

//wire define
//wire        clk_1x  ;
//wire        clk_5x  ;
//wire        locked  ;
wire        rst_n   ;
wire [9:0]  pix_x   ;
wire [9:0]  pix_y   ;
//wire [23:0] pix_data;
wire        hsync   ;
wire        vsync   ;
wire        de      ;
wire [23:0] rgb     ;


assign ddc_scl = 1'b1;
assign ddc_sda = 1'b1;

//instance define

// vga_image_gen  vga_image_gen_inst (
//     .vga_clk(clk_25m),
//     .rst_n(sys_rst_n),
//     .pix_x(pix_x),
//     .pix_y(pix_y),
//     .pix_data(pix_data)
//   );


vga_timing_ctrl  vga_timing_ctrl_inst (
    .vga_clk(clk_25m),
    .rst_n(sys_rst_n),
    .pix_data(pix_data),
    .hsync(hsync),
    .vsync(vsync),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .rgb(rgb),
    .pix_data_req(pix_data_req),
    .de(de)
);

hdmi_ctrl  hdmi_ctrl_inst (
    .clk_1x(clk_25m),
    .clk_5x(clk_125m),
    .sys_rst_n(sys_rst_n),
    .hsync(hsync),
    .vsync(vsync),
    .de(de),
    .rgb_red(rgb[23:16]),
    .rgb_green(rgb[15:8]),
    .rgb_blue(rgb[7:0]),
    .hdmi_clk_p(hdmi_clk_p),
    .hdmi_clk_n(hdmi_clk_n),
    .hdmi_r_p(hdmi_r_p),
    .hdmi_r_n(hdmi_r_n),
    .hdmi_g_p(hdmi_g_p),
    .hdmi_g_n(hdmi_g_n),
    .hdmi_b_p(hdmi_b_p),
    .hdmi_b_n(hdmi_b_n)
  );
endmodule