/*
此模块输入为ov5640的数据流,输出为多路视频流数据,多路视频流数据作为其它各个模块的输入
*/
module video_stream_process #
(
parameter  H_PIXEL=640, // 行像素数
parameter  V_PIXEL=480  // 列像素数
)
(
    input   wire            pclk,
    input   wire            rst_n,

    input   wire   [3:0]    display_num, // 显示数字

    // ov5640 data input
    input   wire            ov5640_vsync,
    input   wire            ov5640_href,
    input   wire   [15:0]   ov5640_data_in, 
    input   wire            ov5640_data_in_valid,

    // gray data output
    output  wire   [7:0]    gray_data_8bit,
    output  wire   [15:0]   gray_data_16bit_rgb565,
    output  wire            gray_data_valid,

    // ddr3 wr data output
    output  reg    [15:0]   ddr3_wr_data,
    output  reg             ddr3_wr_data_valid,

    // udp tx data output
    output  wire   [15:0]   udp_tx_data,
    output  wire            udp_tx_data_valid,

    // fcnn wr data output
    output  reg    [7:0]    fcnn_wr_data,
    output  reg             fcnn_wr_data_valid
);
/*-----------信号定义-------------*/
//下面这些信号均是滞后两个周期的同步信号
wire v_sync,h_sync;         //行场同步信号
wire [15:0] strem_data_out; //摄像头数据输出
wire strem_data_out_valid;  //摄像头数据有效
wire [9:0] h_index;         //行像素索引
wire [9:0] v_index;         //列像素索引
wire [19:0] pixel_count;    //像素计数器
/*-------------------------------*/

/*-----------字符显示-------------*/
wire front_de;
wire [23:0] front_pixel_data_out;

/*-----------红色方框-------------*/
reg [15:0] red_box_pixel_data_out;
reg red_box_de;

/*-------灰度化模块----------*/
// 灰度数据滞后两个周期
rgb2gray # (
    .Pixel_Width(16)
)
rgb2gray_inst (
  .I_clk(pclk),
  .I_reset_p(!rst_n),
  .I_pixel_data_valid(ov5640_data_in_valid),
  .I_pixel_data_RGB(ov5640_data_in),
  .O_pixel_data_valid(gray_data_valid),
  .O_pixel_data_Gray(gray_data_8bit),
  .O_pixel_data_Gray_rgb565(gray_data_16bit_rgb565)
);

//将ov5640数据打两拍与灰度图像同步
reg [15:0] ov5640_data_out_r1,ov5640_data_out_r2;
reg ov5640_data_out_valid_r1,ov5640_data_out_valid_r2;
reg ov5640_href_r1,ov5640_href_r2,ov5640_vsync_r1,ov5640_vsync_r2;

assign v_sync = ov5640_vsync_r2;
assign h_sync = ov5640_href_r2;

always @(posedge pclk) begin
    ov5640_data_out_r1 <= ov5640_data_in;
    ov5640_data_out_r2 <= ov5640_data_out_r1;
    ov5640_data_out_valid_r1 <= ov5640_data_in_valid;
    ov5640_data_out_valid_r2 <= ov5640_data_out_valid_r1;
    ov5640_href_r1 <= ov5640_href;
    ov5640_href_r2 <= ov5640_href_r1;
    ov5640_vsync_r1 <= ov5640_vsync;
    ov5640_vsync_r2 <= ov5640_vsync_r1;
end




/*-----------对来自摄像头的数据进行行列像素编码-------------*/
strem_encode  strem_encode_inst (
    .pclk(pclk),
    .rst_n(rst_n),
    .ov5640_vsync(ov5640_vsync_r2),
    .ov5640_href(ov5640_href_r2),
    .data_in(ov5640_data_out_r2),
    .data_in_valid(ov5640_data_out_valid_r2),
    .data_out(strem_data_out),
    .data_out_valid(strem_data_out_valid),
    .h_index(h_index),
    .v_index(v_index),
    .pixel_count(pixel_count)
);




/*-----------udp数据输出-------------*/
reg udp_temp;
always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) begin
        udp_temp <= 1'b0;
    end
    else begin
        udp_temp <= ddr3_wr_data_valid;
    end
end

assign udp_tx_data_valid = ddr3_wr_data_valid == 1'b1 || (udp_temp == 1'b1 && v_index == H_PIXEL);
assign udp_tx_data = (ddr3_wr_data_valid == 1'b1)? ddr3_wr_data : h_index;


/*-----------ddr3数据输出-------------*/
always @(*) begin
    if (red_box_de == 1'b1) begin
        ddr3_wr_data = red_box_pixel_data_out;
        ddr3_wr_data_valid = 1'b1;
    end
    else if(front_de == 1'b1) begin
        ddr3_wr_data = front_pixel_data_out[15:0];
        ddr3_wr_data_valid = strem_data_out_valid;
    end
    else begin
        ddr3_wr_data = strem_data_out;
        ddr3_wr_data_valid = strem_data_out_valid;
    end
end
/*-----------神经网络&红色方框数据输出-------------*/

always @(*) begin
    // 灰度化
    if (v_index >= 306 && v_index <= 333 && h_index >= 226 &&h_index <= 253) begin
        red_box_pixel_data_out = {{8{fcnn_wr_data[7]}},fcnn_wr_data};
        red_box_de = gray_data_valid;
        // 做了一下二值处理
        fcnn_wr_data = (gray_data_8bit <=8'd127) ?8'h00:8'hff; 
        fcnn_wr_data_valid = gray_data_valid;
    end
    // 红色边框
    else if(v_index >= 304 && v_index <= 334 && (h_index == 224 || h_index ==225)) begin
        red_box_pixel_data_out = 16'hF800;
        red_box_de = gray_data_valid;
        fcnn_wr_data_valid = 1'b0;
        fcnn_wr_data = 8'd0;
    end
    // 红色边框
    else if(v_index >= 304 && v_index <= 334 && (h_index == 254 || h_index ==255)) begin
        red_box_pixel_data_out = 16'hF800;
        red_box_de = gray_data_valid;
        fcnn_wr_data_valid = 1'b0;
        fcnn_wr_data = 8'd0;
    end
    // 红色边框
    else if(h_index >= 226 && h_index <= 253 && (v_index == 305 || v_index ==304)) begin
        red_box_pixel_data_out = 16'hF800;
        red_box_de = gray_data_valid;
        fcnn_wr_data_valid = 1'b0;
        fcnn_wr_data = 8'd0;
    end
    else if(h_index >= 226 && h_index <= 253 && (v_index == 334 || v_index ==335)) begin
        // 结尾补1
        if(h_index == 253 && v_index == 334) begin
            fcnn_wr_data_valid = strem_data_out_valid;
            fcnn_wr_data = 8'd255;
        end
        else begin
            fcnn_wr_data_valid = 1'b0;
            fcnn_wr_data = 8'd0;
        end
        red_box_pixel_data_out = 16'hF800;
        red_box_de = gray_data_valid;
    end
    else begin
        red_box_pixel_data_out = 16'h0000;
        red_box_de = 1'b0;
        fcnn_wr_data_valid = 1'b0;
        fcnn_wr_data = 8'd0;
    end
end

/*-----------字符显示-------------*/
front_show  front_show_inst (
    .display_num(display_num),
    .pixel_x(v_index),
    .pixel_y(h_index),
    .front_de(front_de),
    .pixel_data_out(front_pixel_data_out)
);

endmodule