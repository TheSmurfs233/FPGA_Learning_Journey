module fcnn_top (
    input wire  clk,
    input wire  rst_n,
    input  wire  fcnn_wr_fifo_en,
    input  wire [15:0] fcnn_wr_fifo_din,

    output wire [3:0] max_index_out,
    output wire max_index_out_valid
);

wire [15:0] img_data;
assign img_data = fcnn_wr_fifo_din*1024/255;
//start信号
reg start;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        start <= 1'b0;
    end
    else begin
        start <= 1'b1;
    end
end

/*-----------存储器读操作-----------------*/
//rom模块中存放着数字2的图像数据,共785个数据,784像素+1偏置
reg rom_rd_en;
reg [9:0] rom_rd_addra;
wire [15:0] rom_rd_data;
reg rom_rd_data_valid;
//rom读使能信号
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//         rom_rd_en <= 1'b0;
//     end
//     else if(start == 1'b1) begin
//         if(rom_rd_addra == 10'd784) begin
//             rom_rd_en <= 1'b0;
//         end
//         else begin
//             rom_rd_en <= 1'b1;
//         end
//     end
//     else begin
//         rom_rd_en <= 1'b0;
//     end
// end
// //rom读地址计数器
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//         rom_rd_addra <= 10'h3FF;
//     end
//     else if(start == 1'b1) begin
//         if (rom_rd_addra == 10'd784) begin
//             rom_rd_addra <= 10'd784;
//         end
//         else begin
//             rom_rd_addra <= rom_rd_addra + 10'd1;
//         end
//     end
//     else begin
//         rom_rd_addra <= rom_rd_addra;
//     end
// end
//rom读出数据有效信号
// always @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//         rom_rd_data_valid <= 1'b0;
//     end
//     else begin
//         rom_rd_data_valid <= rom_rd_en;
//     end
// end

// 将从rom中读出数据写入fifo
(*mark_debug="true"*)wire done_flag;
(*mark_debug="true"*)wire [15:0] matmul_h1_res;
(*mark_debug="true"*)wire matmul_h1_res_valid;
MatrixMultiplier  MatrixMultiplier_inst (
    .clk(clk),
    .rst_n(rst_n),
    .en(1'b1),    
    .wr_fifo_en(fcnn_wr_fifo_en),
    .wr_fifo_data(img_data),
    .done_flag(done_flag),
    .matmul_res(matmul_h1_res),
    .matmul_res_valid(matmul_h1_res_valid)
);

(*mark_debug="true"*)wire [15:0] h1_relu_res;
(*mark_debug="true"*)wire h1_relu_res_valid;
Relu  Relu_inst (
    .data_in(matmul_h1_res),
    .data_in_valid(matmul_h1_res_valid),
    .data_out(h1_relu_res),
    .data_out_valid(h1_relu_res_valid)
);
(*mark_debug="true"*)wire [15:0] matmul_h2_res;
(*mark_debug="true"*)wire  matmul_h2_res_valid;
(*mark_debug="true"*)wire done_flag_l2;

MatrixMultiplier_100_10  MatrixMultiplier_100_10_inst (
    .clk(clk),
    .rst_n(rst_n),
    .wr_fifo_en(h1_relu_res_valid),
    .wr_fifo_data(h1_relu_res),
    .done_flag(done_flag_l2),
    .matmul_res(matmul_h2_res),
    .matmul_res_valid(matmul_h2_res_valid)
);


(*mark_debug="true"*)wire [7:0] norm_res;
(*mark_debug="true"*)wire norm_res_valid;
Softmax  Softmax_inst (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(matmul_h2_res),
    .data_in_valid(matmul_h2_res_valid),
    .data_out(norm_res),
    .data_out_valid(norm_res_valid)
);

max_prob_finder  max_prob_finder_inst (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(norm_res),
    .valid(norm_res_valid),
    .max_index(max_index_out),
    .valid_out(max_index_out_valid)
);


// img_rom img_rom_inst (
//   .clka(clk),    // input wire clka
//   .ena(rom_rd_en),      // input wire ena
//   .addra(rom_rd_addra),  // input wire [9 : 0] addra
//   .douta(rom_rd_data)  // output wire [15 : 0] douta
// );



endmodule