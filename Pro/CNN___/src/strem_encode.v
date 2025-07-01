/*
接收来自OV5640的视频流
输出视频流数据和行列计数器,像素计数器
*/
module strem_encode (
    input  wire        pclk,
    input  wire        rst_n,
    input  wire        ov5640_vsync,
    input  wire        ov5640_href,
    input  wire [15:0] data_in,
    input  wire        data_in_valid,

    output wire [15:0] data_out,
    output wire        data_out_valid,
    output reg  [9:0]  h_index,
    output reg  [9:0]  v_index,
    output reg [19:0]  pixel_count
);
reg vsync_r1,href_r1;    // 场同步信号寄存
wire vsync_rise,href_rise;      // 行场同步信号上升沿

assign data_out = data_in;
assign data_out_valid = data_in_valid;

//vsync_r1: 记录上一时刻的vsync信号
always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) begin
        vsync_r1 <= 1'b0;
    end
    else begin
        vsync_r1 <= ov5640_vsync;
    end
end

//href_r1: 记录上一时刻的href信号
always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) begin
        href_r1 <= 1'b0;
    end
    else begin
        href_r1 <= ov5640_href;
    end
end
// vsync_rise,href_rise:
assign vsync_rise = (ov5640_vsync & ~vsync_r1);
assign href_rise = (ov5640_href & ~href_r1);


// v_index: 列计数器
always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) begin
        v_index <= 10'd0;
    end
    else if(href_rise == 1'b1) begin
        v_index <= 10'd0;
    end
    else if (data_in_valid) begin
        v_index <= v_index + 10'd1;
    end
    else begin
        v_index <= v_index;
    end
end


// h_index: 行计数器
always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) begin
        h_index <= 10'd0;
    end
    else if(vsync_rise == 1'b1) begin
        h_index <= 10'd0;
    end
    else if (v_index == 10'd639 && data_in_valid == 1'b1) begin
        h_index <= h_index + 10'd1;
    end
    else begin
        h_index <= h_index;
    end
end



// pixel_count: 像素计数器
always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) begin
        pixel_count <= 19'd0;
    end
    else if(vsync_rise == 1'b1) begin
        pixel_count <= 19'd0;
    end
    else if (data_in_valid == 1'b1) begin
        pixel_count <= pixel_count + 19'd1;
    end
    else begin
        pixel_count <= pixel_count;
    end
end

endmodule //strem_encode