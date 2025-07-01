module neural_weights2_bram (
    input  wire            clk,             // 全局时钟
    input  wire            bram_en,         // 使能信号
    input  wire [15:0]     bram_addr,       // 总宽度=16位
    output wire [2*16-1:0] bram_dout_flat   // 总宽度=2*16=32位
);

wire [15:0] dout0;
weight2_bram_0 weight2_bram_0 (
  .clka(clk),    // input wire clka
  .ena(bram_en),     // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(bram_addr),  // input wire [13 : 0] addra
  .dina(16'b0),    // input wire [15 : 0] dina
  .douta(dout0)  // output wire [15 : 0] douta
);
// 数据合并：将输出拼接到扁平总线
assign bram_dout_flat[15:0] = dout0;


// bram1
// wire [13:0] addr1 = bram_addr_flat[27:14];
wire [15:0] dout1;
weight2_bram_1 weight2_bram_1 (
  .clka(clk),    // input wire clka
  .ena(bram_en),     // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(bram_addr),  // input wire [13 : 0] addra
  .dina(16'b0),    // input wire [15 : 0] dina
  .douta(dout1)  // output wire [15 : 0] douta
);
// 数据合并：将输出拼接到扁平总线
assign bram_dout_flat[31:16] = dout1;





endmodule