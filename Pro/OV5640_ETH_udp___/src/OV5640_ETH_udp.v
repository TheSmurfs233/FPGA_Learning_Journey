module ov5640_eth_udp (
    input  wire         clk,
    input  wire         rst_n,

    //LED接口   
    output  wire  [1:0] led                 ,//led灯 {PLL锁定信号，OV5640初始化完成信号}

    //rgmii接口
    output              phy_rst_n	        ,// PHY 复位信号    
    output              rgmii_tx_clk        ,          
    output  [3:0]       rgmii_tx_data       ,      
    output              rgmii_tx_en         ,

    //OV5640接口
    input   wire            ov5640_pclk     ,   //摄像头像素时钟
    (*mark_debug="true"*)input   wire            ov5640_href     ,   //摄像头行同步信号
    (*mark_debug="true"*)input   wire            ov5640_vsync    ,   //摄像头场同步信号
    input   wire    [7:0]   ov5640_data     ,   //摄像头图像数据
    output  wire            ov5640_pwdn     ,   //摄像头PWDN
    output  wire            ov5640_rst_n    ,   //摄像头复位信号
    output  wire            sccb_scl        ,   //SCL
    inout   wire            sccb_sda            //SDA

);
parameter WIDTH = 640;
parameter HIGHT = 480;

wire        clk_50m;
wire        clk_125m;
wire        clk_25m;
wire        pll_locked;
wire        cfg_done;
(*mark_debug="true"*)wire [15:0] ov5640_data_out;
(*mark_debug="true"*)wire        ov5640_wr_en;


assign led = {pll_locked,cfg_done};

//ov5640_rst_n:摄像头复位,固定高电平
assign  ov5640_rst_n = 1'b1;
assign  ov5640_pwdn = 1'b0;
//phy_rst_n:phy芯片复位信号
assign  phy_rst_n = 1'b1;



//行号编码实现---------------
(*mark_debug="true"*)reg ov5640_href_reg;    // 延迟一拍的行同步信号
(*mark_debug="true"*)reg ov5640_href_rise;
(*mark_debug="true"*)reg  [15:0] h_cnt;
(*mark_debug="true"*)reg  [15:0] h_pix_cnt;
always @(posedge ov5640_pclk ,negedge rst_n) begin
    if (!rst_n) begin
        ov5640_href_reg <= 1'd0;
        ov5640_href_rise <= 1'd0;
    end
    else begin
        ov5640_href_reg <= ov5640_href;      // 保存上一拍的值
        ov5640_href_rise <= ~ov5640_href_reg & ov5640_href; // 上一拍为0且当前为1时输出高电平
    end
end

//h_cnt:行计数器
always @(posedge ov5640_pclk ,negedge rst_n) begin
    if (!rst_n) begin
        h_cnt <= 16'd0;
    end
    else if(ov5640_vsync == 1'b1) begin
        h_cnt <= 16'd0;
    end
    else if(ov5640_href_rise == 1'b1) begin
        h_cnt <= h_cnt + 1'd1;
    end
    else begin
        h_cnt <= h_cnt;
    end
end

//h_pix_cnt:行像素计数器
always @(posedge ov5640_pclk ,negedge rst_n) begin
    if (!rst_n) begin
        h_pix_cnt <= 16'd0;
    end
    else if(ov5640_href_rise == 1'b1) begin
        h_pix_cnt <= 16'd0;
    end
    else if(ov5640_wr_en == 1'b1) begin
        h_pix_cnt <= h_pix_cnt + 1'd1;
    end
    else begin
        h_pix_cnt <= h_pix_cnt;
    end
end
(*mark_debug="true"*)reg h_wr_en;
(*mark_debug="true"*)wire [15:0] h_wr_data;

// 内部寄存器
reg prev_equal;            // 存储前一个周期的比较结果
// 组合逻辑比较当前值
wire current_equal = (h_pix_cnt == 16'd640);

//h_wr_en:行编码写使能
always @(posedge ov5640_pclk or negedge rst_n) begin
    if (!rst_n) begin
        // 异步复位初始化
        prev_equal <= 1'b0;
        h_wr_en      <= 1'b0;
    end else begin
        // 寄存当前比较结果
        prev_equal <= current_equal;
        // 检测上升沿：当前周期相等且上一周期不相等
        h_wr_en <= current_equal && !prev_equal;
    end
end
//h_wr_data:行编码数据
assign h_wr_data = (h_wr_en == 1'b1) ? h_cnt:ov5640_data_out;


//-------------------


pll pll
   (
    // Clock out ports
    .clk_out1(clk_50m),     // output clk_out1
    .clk_out2(clk_125m),     // output clk_out2
    .clk_out3(clk_25m),     // output clk_out3
    // Status and control signals
    .resetn(rst_n), // input resetn
    .locked(pll_locked),       // output locked
   // Clock in ports
    .clk_in1(clk)
);      // input clk_in1


ov5640_top  ov5640_top_inst (
    .sys_clk(clk_25m),
    .sys_rst_n(rst_n && pll_locked),
    .sys_init_done( rst_n && pll_locked && cfg_done),
    .ov5640_pclk(ov5640_pclk),
    .ov5640_href(ov5640_href),
    .ov5640_vsync(ov5640_vsync),
    .ov5640_data(ov5640_data),
    .cfg_done(cfg_done),
    .sccb_scl(sccb_scl),
    .sccb_sda(sccb_sda),
    .ov5640_wr_en(ov5640_wr_en),
    .ov5640_data_out(ov5640_data_out)
);

eth_udp_send  eth_udp_send_inst (
    .clk_125m(clk_125m),
    .rst_n(rst_n && pll_locked),
    .fifo_wr_clk(ov5640_pclk),
    .fifo_wr_data(h_wr_data),
    .fifo_wr_en(ov5640_wr_en || h_wr_en),
    .phy_rst_n(phy_rst_n),
    .rgmii_tx_clk(rgmii_tx_clk),
    .rgmii_tx_data(rgmii_tx_data),
    .rgmii_tx_en(rgmii_tx_en)
);

endmodule