/* 
输入为Q6.10定点数
计算为单精度浮点数
输出为单精度浮点数放大100倍并转换为int8
*/
module Softmax(
    input   wire        clk,
    input   wire        rst_n,
    input   wire [15:0] data_in,
    input   wire        data_in_valid,
    output  wire [7:0]  data_out,
    output  wire        data_out_valid
);

// --------------------------------------------
// 阶段1：数据格式转换，Q6.10定点数转单精度浮点数
// --------------------------------------------
wire float_res_valid;
wire [31:0] floa_res_data;

fixed_to_float fixed_to_float_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(data_in_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(data_in),              // input wire [15 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(float_res_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(floa_res_data)    // output wire [31 : 0] m_axis_result_tdata
);


// --------------------------------------------
// 阶段2：指数计算
// --------------------------------------------
wire [31:0] exp_res_data;
wire  exp_res_data_valid;
exp exp_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(float_res_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(floa_res_data),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(exp_res_data_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(exp_res_data)    // output wire [31 : 0] m_axis_result_tdata
);

// --------------------------------------------
// 阶段3：指数求和与指数结果缓存（存储10个浮点指数值）
// --------------------------------------------
reg [31:0] exp_buffer [0:9];
reg [3:0]  wr_ptr;  // 0~9计数器
reg [3:0]  rd_ptr;  // 0~9读计数器
reg buffer_ready;
wire exp_res_data_last;
wire [31:0] norm_res_data;
wire  norm_res_data_valid;

assign exp_res_data_last = (wr_ptr == 4'd9)? 1'b1 : 1'b0;

// wr_ptr:写计数器
// buffer_ready:缓存满信号
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        wr_ptr <= 1'b0;
        buffer_ready <= 1'b0;
    end else if (exp_res_data_valid) begin
        exp_buffer[wr_ptr] <= exp_res_data; // 写入缓存
        if (wr_ptr == 4'd9 || rd_ptr == 4'd9) begin
            wr_ptr <= 1'b0;
            buffer_ready <= 1; // 缓存满信号
        end 
        else begin
            wr_ptr <= wr_ptr + 1;
            buffer_ready <= 0;
        end
    end
    else begin
        buffer_ready <= buffer_ready;
    end
end

wire [31:0] exp_sum_res_data;
wire  exp_sum_res_data_valid;
wire  exp_sum_res_data_last;
//浮点数累加器
float_accum float_accum_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(exp_res_data_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(exp_res_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_a_tlast(exp_res_data_last),              // input wire s_axis_a_tlast
  .m_axis_result_tvalid(exp_sum_res_data_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(exp_sum_res_data),    // output wire [31 : 0] m_axis_result_tdata
  .m_axis_result_tlast(exp_sum_res_data_last)    // output wire m_axis_result_tlast
);

// --------------------------------------------
// 阶段4：softmax归一化结果计算
// --------------------------------------------

reg [31:0] exp_sum_res_data_cache; // 缓存求和结果
reg exp_div_valid_r0; //除法器数据有效信号
reg [31:0] rd_buffer_exp_res_data;
reg exp_div_valid_r1; 
wire exp_div_valid;

assign exp_div_valid = exp_div_valid_r0 || exp_div_valid_r1;

//rd_ptr:读计数器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_ptr <= 4'd0;
        rd_buffer_exp_res_data <= 32'd0;
    end else if (exp_div_valid_r0 || exp_sum_res_data_last) begin
        rd_buffer_exp_res_data <= exp_buffer[rd_ptr]; // 读出缓存
        if (rd_ptr == 4'd9) begin
            rd_ptr <= 4'd0;
        end 
        else begin
            rd_ptr <= rd_ptr + 4'd1;
        end
    end
    else begin
        rd_ptr <= 4'd0;
    end
end

// wire [31:0] rd_buffer_exp_res_data;
// assign rd_buffer_exp_res_data = exp_buffer[rd_ptr];

//exp_sum_res_data_cache:缓存求和结果
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        exp_sum_res_data_cache <= 32'd0;
    end
    else if(exp_sum_res_data_last == 1'b1) begin
        exp_sum_res_data_cache <= exp_sum_res_data;
    end
    else begin
        exp_sum_res_data_cache <= exp_sum_res_data_cache;
    end
end

//exp_div_valid_r0
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        exp_div_valid_r0 <= 1'b0;
    end
    else if(exp_sum_res_data_last == 1'b1) begin
        exp_div_valid_r0 <= 1'b1;
    end
    else if(rd_ptr == 4'd9) begin
        exp_div_valid_r0 <= 1'b0;
    end
    else begin
        exp_div_valid_r0 <= exp_div_valid_r0;
    end
end

//exp_div_valid_r1
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        exp_div_valid_r1 <= 1'b0;
    end
    else begin
        exp_div_valid_r1 <= exp_div_valid_r0;
    end
end


float_div float_div_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(exp_div_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(rd_buffer_exp_res_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(exp_div_valid),            // input wire s_axis_b_tvalid
  .s_axis_b_tdata(exp_sum_res_data_cache),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(norm_res_data_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(norm_res_data)    // output wire [31 : 0] m_axis_result_tdata
);

// --------------------------------------------
// 阶段5：单精度浮点放大100倍,并转换为int8
// --------------------------------------------
wire [31:0] norm_res_data_x100;
wire  norm_res_data_valid_x100;

float_mult float_mult_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(norm_res_data_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(norm_res_data),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(1'b1),                    // input wire s_axis_b_tvalid
  .s_axis_b_tdata(32'h42C80000),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(norm_res_data_valid_x100),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(norm_res_data_x100)    // output wire [31 : 0] m_axis_result_tdata
);

float_to_int8 float_to_int8_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(norm_res_data_valid_x100),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(norm_res_data_x100),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(data_out_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(data_out)    // output wire [7 : 0] m_axis_result_tdata
);



endmodule