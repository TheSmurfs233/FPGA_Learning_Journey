
module flash_se_ctrl_tb;

  // Parameters

  //Ports
  reg  sys_clk;
  reg  sys_rst_n;
  reg  key;
  wire  sck;
  wire  cs_n;
  wire mosi;

  flash_se_ctrl  flash_se_ctrl_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .key(key),
    .sck(sck),
    .cs_n(cs_n),
    .mosi(mosi)
  );

always #10  sys_clk = ! sys_clk ;
initial begin
    sys_clk = 0;
    sys_rst_n = 0;
    key = 0;
    #100 sys_rst_n = 1;
    #120 key = 1;
    #20  key = 0;
    #5000 key = 1;
    #20  key = 0;
end


endmodule