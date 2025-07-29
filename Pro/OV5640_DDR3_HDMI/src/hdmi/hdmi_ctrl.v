module hdmi_ctrl (
    input           clk_1x      ,
    input           clk_5x      , 
    input           sys_rst_n   ,
    input           hsync       ,
    input           vsync       ,
    input           de          ,
    input   [7:0]   rgb_red     ,
    input   [7:0]   rgb_green   ,
    input   [7:0]   rgb_blue    ,

    output          hdmi_clk_p  ,
    output          hdmi_clk_n  ,
    output          hdmi_r_p    ,
    output          hdmi_r_n    ,
    output          hdmi_g_p    ,
    output          hdmi_g_n    ,
    output          hdmi_b_p    ,
    output          hdmi_b_n    
);
//parameter define

//wire define
wire    [9:0]   data_out_r; //编码后的10bit红色信号
wire    [9:0]   data_out_g; //编码后的10bit绿色信号
wire    [9:0]   data_out_b; //编码后的10bit蓝色信号

//reg define

//instance define
encode encode_inst1(
    .sys_clk(clk_1x),
    .sys_rst_n(sys_rst_n),
    .c0(hsync),
    .c1(vsync),
    .de(de),
    .data_in(rgb_red),
    .data_out(data_out_r)
);
encode encode_inst2(
    .sys_clk(clk_1x),
    .sys_rst_n(sys_rst_n),
    .c0(hsync),
    .c1(vsync),
    .de(de),
    .data_in(rgb_green),
    .data_out(data_out_g)
);
encode encode_inst3(
    .sys_clk(clk_1x),
    .sys_rst_n(sys_rst_n),
    .c0(hsync),
    .c1(vsync),
    .de(de),
    .data_in(rgb_blue),
    .data_out(data_out_b)
);
par2ser par2ser_inst1(
    .clk_5x(clk_5x),
    .par_data(data_out_r),
    .ser_data_p(hdmi_r_p),
    .ser_data_n(hdmi_r_n)
);
par2ser par2ser_inst2(
    .clk_5x(clk_5x),
    .par_data(data_out_g),
    .ser_data_p(hdmi_g_p),
    .ser_data_n(hdmi_g_n)
);
par2ser par2ser_inst3(
    .clk_5x(clk_5x),    
    .par_data(data_out_b),
    .ser_data_p(hdmi_b_p),
    .ser_data_n(hdmi_b_n)
);
par2ser par2ser_inst4(
    .clk_5x(clk_5x),    
    .par_data(10'b11111_00000),
    .ser_data_p(hdmi_clk_p),
    .ser_data_n(hdmi_clk_n)
);
endmodule