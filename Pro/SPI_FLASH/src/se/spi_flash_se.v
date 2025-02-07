module spi_flash_se (
    input   wire        sys_clk     ,
    input   wire        sys_rst_n   ,
    input   wire        key_in      ,
    
    output  wire        cs_n        ,
    output  wire        sck         ,
    output  wire        mosi
);
//parameter define

//wire define
wire key_flag ;
//reg define

//instance define
key_filter  key_filter_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .key_in(key_in),
    .key_flag(key_flag)
  );

flash_se_ctrl  flash_se_ctrl_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .key(key_flag),
    .sck(sck),
    .cs_n(cs_n),
    .mosi(mosi)
);


endmodule