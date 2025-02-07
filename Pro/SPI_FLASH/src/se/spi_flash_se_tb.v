
module spi_flash_se_tb;

  // Parameters

  //Ports
  reg  sys_clk;
  reg  sys_rst_n;
  reg  key_in;
  wire  cs_n;
  wire  sck;
  wire  mosi;

  spi_flash_se  spi_flash_se_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .key_in(key_in),
    .cs_n(cs_n),
    .sck(sck),
    .mosi(mosi)
  );

always #10  sys_clk = ! sys_clk ;
initial begin
    sys_clk = 0;
    sys_rst_n = 0;
    key_in = 0;
    #100 sys_rst_n = 1;
    #100 key_in = 1;
    #20  key_in = 0;
end
endmodule