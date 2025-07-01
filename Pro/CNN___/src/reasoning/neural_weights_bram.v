module neural_weights1_bram (
    input  wire            clk,             // 全局时钟
    input  wire            bram_en,         // 使能信号
    // input  wire [5*14-1:0] bram_addr_flat,  // 总宽度=5*14=70位
    input  wire [15:0]     bram_addr,  // 总宽度=5*14=70位

    output wire [5*16-1:0] bram_dout_flat   // 总宽度=5*16=80位
);
// ---------------------------------------------------------------
// 使用genvar循环例化25个BRAM（直接映射地址和输出）
// ---------------------------------------------------------------


// genvar i;
// generate
//     for (i = 0; i < 1; i = i + 1) begin : BRAM_GEN
//         // 地址拆分：每个BRAM对应12位地址
//         wire [11:0] addr = bram_addr_flat[i*12 +: 12];
//         wire [15:0] dout;

//         // 例化参数化BRAM模块
//         single_port_bram #(
//             .INIT_FILE($sformatf("../../rtl/weight1_%02d.hex", i))
//         ) u_bram (
//             .clk  (clk),
//             .addr (addr),
//             .dout (dout)
//         );
//         // 数据合并：将输出拼接到扁平总线
//         assign bram_dout_flat[i*16 +: 16] = dout;
//     end
// endgenerate

// bram0
// wire [13:0] addr0 = bram_addr_flat[13: 0];
wire [15:0] dout0;
weight1_bram_0 weight1_bram_0 (
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
weight1_bram_1 weight1_bram_1 (
  .clka(clk),    // input wire clka
  .ena(bram_en),     // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(bram_addr),  // input wire [13 : 0] addra
  .dina(16'b0),    // input wire [15 : 0] dina
  .douta(dout1)  // output wire [15 : 0] douta
);
// 数据合并：将输出拼接到扁平总线
assign bram_dout_flat[31:16] = dout1;

// bram2
// wire [13:0] addr2 = bram_addr_flat[41:28];
wire [15:0] dout2;
weight1_bram_2 weight1_bram_2 (
  .clka(clk),    // input wire clka
  .ena(bram_en),     // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(bram_addr),  // input wire [13 : 0] addra
  .dina(16'b0),    // input wire [15 : 0] dina
  .douta(dout2)  // output wire [15 : 0] douta
);
// 数据合并：将输出拼接到扁平总线
assign bram_dout_flat[47:32] = dout2;

// bram3
// wire [13:0] addr3 = bram_addr_flat[55:42];
wire [15:0] dout3;
weight1_bram_3 weight1_bram_3 (
  .clka(clk),    // input wire clka
  .ena(bram_en),     // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(bram_addr),  // input wire [13 : 0] addra
  .dina(16'b0),    // input wire [15 : 0] dina
  .douta(dout3)  // output wire [15 : 0] douta
);
// 数据合并：将输出拼接到扁平总线
assign bram_dout_flat[63:48] = dout3;

// bram4
// wire [13:0] addr4 = bram_addr_flat[69:56];
wire [15:0] dout4;
weight1_bram_4 weight1_bram_4 (
  .clka(clk),    // input wire clka
  .ena(bram_en),     // input wire ena
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(bram_addr),  // input wire [13 : 0] addra
  .dina(16'b0),    // input wire [15 : 0] dina
  .douta(dout4)  // output wire [15 : 0] douta
);
// 数据合并：将输出拼接到扁平总线
assign bram_dout_flat[79:64] = dout4;



endmodule