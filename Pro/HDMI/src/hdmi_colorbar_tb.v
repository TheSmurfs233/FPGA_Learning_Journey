`timescale 1ns / 1ps
module hdmi_colorbar_tb;

  // Parameters

  //Ports
  reg sys_clk;
  reg sys_rst_n;
  wire ddc_scl;
  wire ddc_sda;
  wire hdmi_clk_p;
  wire hdmi_clk_n;
  wire hdmi_r_p;
  wire hdmi_r_n;
  wire hdmi_g_p;
  wire hdmi_g_n;
  wire hdmi_b_p;
  wire hdmi_b_n;

//时钟生成
always #10  sys_clk = ! sys_clk ;

// 复位控制
initial begin
    sys_clk = 1;
    sys_rst_n = 0;       // 初始复位
    #100;                // 保持复位 100ns
    sys_rst_n = 1;       // 释放复位
end
hdmi_colorbar  hdmi_colorbar_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
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


endmodule