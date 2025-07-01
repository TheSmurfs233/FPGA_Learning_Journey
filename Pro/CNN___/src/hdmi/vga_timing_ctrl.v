`include "disp_parameter_cfg.v"

module vga_timing_ctrl (
    input   wire         vga_clk ,
    input   wire         rst_n   ,
    input   wire [23:0]  pix_data,
    output  wire         hsync   ,
    output  wire         vsync   ,
    output  wire [9:0]   pix_x   ,
    output  wire [9:0]   pix_y   ,
    output  wire [23:0]  rgb     ,
    output  wire         pix_data_req,   //像素数据请求信号
    output  wire         de              //de:数据有效信号
);


reg [11:0] h_cnt;
reg [11:0] v_cnt;
wire rgb_valid;//rgb有效信号


assign de = rgb_valid;
//行计数器
always @(posedge vga_clk ) begin
    if (!rst_n) begin
        h_cnt <= 12'hFFF;
    end
    else begin
        if(h_cnt >= `H_Total_Time - 1'b1) begin
            h_cnt <= 12'h0;
        end
        else begin
            h_cnt <= h_cnt + 1'b1;
        end
    end
end

//场计数器
always @(posedge vga_clk ) begin
    if (!rst_n) begin
        v_cnt <= 12'h0;
    end
    else if(v_cnt == `V_Total_Time - 1'b1) begin
        v_cnt <= 12'h0;
    end
    else if(h_cnt == `H_Total_Time - 1'b1) begin
        v_cnt <= v_cnt + 1'b1;
    end
    else begin
        v_cnt <= v_cnt;
    end
end
//行同步信号
assign hsync = (h_cnt <= (`H_Sync_Time - 1'b1));

//场同步信号
assign vsync = (v_cnt <= (`V_Sync_Time - 1'b1));

//rgb_valid:rgb有效信号  
assign rgb_valid = (h_cnt >= `H_Sync_Time + `H_Back_Porch + `H_Left_Border) 
                && (h_cnt <  `H_Sync_Time + `H_Back_Porch + `H_Left_Border + `H_Valid_Time) 
                && (v_cnt >= `V_Sync_Time + `V_Back_Porch + `V_Top_Border) 
                && (v_cnt <  `V_Sync_Time + `V_Back_Porch + `V_Top_Border + `V_Valid_Time)
                ? 1'b1 : 1'b0;

//pix_data_req:像素数据请求信号
assign pix_data_req =  (h_cnt >= `H_Sync_Time + `H_Back_Porch + `H_Left_Border - 1'b1) 
                    && (h_cnt <  `H_Sync_Time + `H_Back_Porch + `H_Left_Border + `H_Valid_Time - 1'b1) 
                    && (v_cnt >= `V_Sync_Time + `V_Back_Porch + `V_Top_Border) 
                    && (v_cnt <  `V_Sync_Time + `V_Back_Porch + `V_Top_Border + `V_Valid_Time)
                ? 1'b1 : 1'b0;

// pix_x,pix_y:VGA有效显示区域像素点坐标
//像素x坐标输出
assign pix_x = (pix_data_req == 1'b1) 
            ? (h_cnt - (`H_Sync_Time + `H_Back_Porch + `H_Left_Border - 1'b1)) : 12'hFFF;
//像素y坐标输出
assign pix_y = (pix_data_req == 1'b1)  
            ? (v_cnt - (`V_Sync_Time + `V_Back_Porch + `V_Top_Border)) : 12'hFFF;

//rgb:输出像素点色彩信息
assign rgb = (rgb_valid == 1'b1) ? pix_data : 24'b0 ;
endmodule
