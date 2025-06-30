module sobel (
    input           sys_clk     ,
    input           sys_rst_n   ,
    input           rx          ,

    output          tx          ,
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
//parameter define

//wire define
wire        clk_50m;
wire        clk_25m;
wire        clk_125m;
wire        rst_n;
wire        in_flag;
wire        out_flag;
wire        in_data;
wire        out_data;
//reg define

//assign define
assign rst_n = (sys_rst_n & locked);//rst_n:复位信号

//instance define
clk_gen clk_gen_inst1
   (
    // Clock out ports
    .c0(clk_50m),     // output c0
    .c1(clk_25m),     // output c1
    .clk_out3(clk_125m),     // output clk_out3
    // Status and control signals
    .resetn(sys_rst_n), // input resetn
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(sys_clk));      // input clk_in1

uart_rx  uart_rx_inst (
    .clk(clk_50m),
    .rst_n(rst_n),
    .uart_rx_d(rx),

    .uart_rx_done(in_flag),
    .uart_rx_data(in_data)
  );

sobel_ctrl  sobel_ctrl_inst (
    .sys_clk(clk_50m),
    .sys_rst_n(rst_n),
    .in_flag(in_flag),
    .in_data(in_data),

    .out_flag(out_flag),
    .out_data(out_data)
  );

hdmi_ram  hdmi_ram_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(rst_n),
    .clk_1x(clk_25m),
    .clk_5x(clk_125m),
    .in_data(out_data),
    .in_flag(out_flag),
    .ddc_scl(ddc_scl),
    .ddc_sda(ddc_sda),
    .hdmi_clk_p(hdmi_clk_p),
    .hdmi_clk_n(hdmi_clk_n),
    .hdmi_r_p(hdmi_r_p),
    .hdmi_r_n(hdmi_r_n),
    .hdmi_g_p(hdmi_g_p),
    .hdmi_g_n(hdmi_g_n),
    .hdmi_b_p(hdmi_b_p),
    .hdmi_b_n(hdmi_b_n)
  );

uart_tx  uart_tx_inst (
    .clk(sys_clk),
    .rst_n(rst_n),
    .uart_tx_en(out_flag),
    .uart_tx_data(out_data),
    .uart_tx_busy( ),
    .uart_tx_d(tx)
  );
endmodule