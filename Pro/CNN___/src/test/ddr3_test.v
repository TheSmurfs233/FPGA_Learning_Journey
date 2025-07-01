`timescale  1ns/1ns
module  ddr3_test_top
(
    input   wire        sys_clk          , //系统时钟
    input   wire        sys_rst_n        ,//系统复位，低电平有效

    //LED接口   
    output  wire  [3:0] led             ,//led灯 {PLL锁定信号，DDR初始化完成信号，OV5640初始化完成信号，1'b0}

    // 数码管硬件接口
    output wire [5:0]  seg_sel_n,    // 位选信号（低有效）
    output wire [7:0]  seg_data,      // 段选信号（共阳极）

    //rgmii接口
    output              phy_rst_n	        ,// PHY 复位信号    
    output              rgmii_tx_clk        ,          
    output  [3:0]       rgmii_tx_data       ,      
    output              rgmii_tx_en         ,

    //摄像头接口
    input   wire            ov5640_pclk     ,   //摄像头像素时钟
    input   wire            ov5640_href     ,   //摄像头行同步信号
    input   wire            ov5640_vsync    ,   //摄像头场同步信号
    input   wire    [7:0]   ov5640_data     ,   //摄像头图像数据
    output  wire            ov5640_pwdn     ,   //摄像头PWDN
    output  wire            ov5640_rst_n    ,   //摄像头复位信号
    output  wire            sccb_scl        ,   //SCL
    inout   wire            sccb_sda        ,   //SDA

    //HDMI接口
    output  wire            ddc_scl     ,
    output  wire            ddc_sda     ,
    output  wire            tmds_clk_p  ,
    output  wire            tmds_clk_n  ,   //HDMI时钟差分信号
    output  wire    [2:0]   tmds_data_p ,
    output  wire    [2:0]   tmds_data_n ,   //HDMI图像差分信号

    //DDR3接口
    inout  [15:0]       ddr3_dq     ,//数据线
    inout  [1:0]        ddr3_dqs_n  ,//数据选取脉冲差分信号
    inout  [1:0]        ddr3_dqs_p  ,//数据选取脉冲差分信号
    output [13:0]      ddr3_addr   ,//地址线
    output [2:0]       ddr3_ba     ,//bank线
    output             ddr3_ras_n  ,//行使能信号，低电平有效
    output             ddr3_cas_n  ,//列使能信号，低电平有效
    output             ddr3_we_n   ,//写使能信号，低电平有效
    output             ddr3_reset_n,//ddr3复位
    output [0:0]       ddr3_ck_p   ,//ddr3差分时钟
    output [0:0]       ddr3_ck_n   ,//ddr3差分时钟
    output [0:0]       ddr3_cke    ,//ddr3时钟使能信号
    output [0:0]       ddr3_cs_n   ,//ddr3片选信号
    output [1:0]       ddr3_dm     ,//ddr3掩码
    output [0:0]       ddr3_odt     //odt阻抗

);
//********************************************************************//
//****************** Parameter and Internal Signal *******************//
//********************************************************************//

//parameter define
//水平方向像素个数,用于设置SDRAM缓存大小
parameter   H_PIXEL     =   24'd640 ;   
//垂直方向像素个数,用于设置SDRAM缓存大小
parameter   V_PIXEL     =   24'd480 ;

//wire  define
wire      locked;
wire      clk_50m     ; //50mhz时钟
wire      clk_125m     ; //125mhz时钟
wire      clk_25m     ; //25mhz时钟
wire      ddr3_clk     ; //ddr3IP核时钟 320MHz
wire      rst_n        ; //复位信号(sys_rst_n & locked)
wire      wr_rst       ; 
wire      rd_rst       ;
wire      sys_init_done; //系统初始化完成
wire      ui_clk       ; //DDR3的读写时钟
wire      ui_rst       ; //ddr产生的复位信号
wire      wr_en        ; //ddr写使能
wire[15:0]wr_data      ; //ddr写数据
wire      rd_en        ; //ddr读使能
wire[15:0]rd_data      ; //ddr读数据
wire      read_enable  ; //数据读使能
(*mark_debug="true"*)wire      data_rd_valid;
wire        locked1;//320m ddr3时钟锁定信号
wire        locked2;

wire      ov5640_data_out_valid;
wire[15:0]ov5640_data_out;

wire      pix_data_req ;
wire      cfg_done     ; //OV5640寄存器配置完成
//********************************************************************//
//***************************** Main Code ****************************//
//********************************************************************//

assign led = {locked,sys_init_done,cfg_done,1'b0};
assign locked = locked1 && locked2;
assign  rst_n = sys_rst_n&sys_init_done&(!ui_rst)&locked; //rst_n:复位信号

//ov5640_rst_n:摄像头复位,固定高电平
assign  ov5640_rst_n = 1'b1;
assign  ov5640_pwdn = 1'b0;
//phy_rst_n:phy芯片复位信号
assign  phy_rst_n = 1'b1;

assign read_enable = cfg_done;
assign rd_en = (read_enable==1'b1) && (data_rd_valid==1'b1) && pix_data_req;



wire    O   ;
IBUFG  IBUFG_inst (
    .O(O),     // Buffer output
    .I(sys_clk)      // Buffer input (connect directly to top-level port)
     );
wire sys_clk_buf;
BUFG BUFG_inst(
    .O(sys_clk_buf), // 1-bit output: Clock output
    .I(O)  // 1-bit input: Clock input
);

wire    ov5640_pclk_O   ;
IBUFG  IBUFG_inst1 (
    .O(ov5640_pclk_O),     // Buffer output
    .I(ov5640_pclk)      // Buffer input (connect directly to top-level port)
     );
wire ov5640_pclk_buf;
BUFG BUFG_inst1(
    .O(ov5640_pclk_buf), // 1-bit output: Clock output
    .I(ov5640_pclk_O)  // 1-bit input: Clock input
);



// 将缓冲后的时钟连接到Clocking Wizard
clk_wiz_0 clk_wiz_0_inst
   (
    // Clock out ports
    .clk_320m(ddr3_clk),     // output clk_320m
    // Status and control signals
    .resetn(sys_rst_n), // input resetn
    .locked(locked1),       // output locked
   // Clock in ports
    .clk_in1(sys_clk_buf)   // input clk_in1
);      

clk_wiz_1 clk_wiz_1_inst
   (
    // Clock out ports
    .clk_50m(clk_50m),     // output clk_50m
    .clk_125m(clk_125m),     // output clk_125m
    .clk_25m(clk_25m),     // output clk_25m
    // Status and control signals
    .resetn(sys_rst_n), // input resetn
    .locked(locked2),       // output locked
   // Clock in ports
    .clk_in1(sys_clk_buf)   // input clk_in1
);      

//------------- hdmi_inst -------------
top_hdmi  top_hdmi_inst (
    .sys_clk(clk_50m),
    .sys_rst_n(rst_n && cfg_done), //没有写入数据时，不输出图像
    .clk_25m(clk_25m),
    .clk_125m(clk_125m),
    .pix_data({rd_data[15:11],3'b0,rd_data[10:5],2'b0,rd_data[4:0],3'b0}),

    .pix_data_req(pix_data_req) ,
    .ddc_scl(ddc_scl)           ,
    .ddc_sda(ddc_sda)           ,
    .hdmi_clk_p(tmds_clk_p)     ,//时钟差分信号
    .hdmi_clk_n(tmds_clk_n)     ,
    .hdmi_r_p(tmds_data_p[2])   ,//红色分量差分信号
    .hdmi_r_n(tmds_data_n[2])   ,
    .hdmi_g_p(tmds_data_p[1])   ,//绿色分量差分信号
    .hdmi_g_n(tmds_data_n[1])   ,
    .hdmi_b_p(tmds_data_p[0])   ,//蓝色分量差分信号
    .hdmi_b_n(tmds_data_n[0])   
);

//------------- ov5640_top_inst -------------
ov5640_top  ov5640_top_inst (
    .sys_clk(clk_25m),
    .sys_rst_n(rst_n),
    .sys_init_done(sys_init_done && cfg_done),
    .ov5640_pclk(ov5640_pclk_buf),
    .ov5640_href(ov5640_href),
    .ov5640_vsync(ov5640_vsync),
    .ov5640_data(ov5640_data),
    .cfg_done(cfg_done),
    .sccb_scl(sccb_scl),
    .sccb_sda(sccb_sda),
    .ov5640_data_out_valid(ov5640_data_out_valid),
    .ov5640_data_out(ov5640_data_out)
);

//将ov5640数据打两拍与灰度图像同步
reg [15:0] ov5640_data_out_r1;
reg [15:0] ov5640_data_out_r2;
reg ov5640_wr_en_r1;
reg ov5640_wr_en_r2;
always @(posedge ov5640_pclk_buf) begin
    ov5640_data_out_r1 <= ov5640_data_out;
    ov5640_data_out_r2 <= ov5640_data_out_r1;
    ov5640_wr_en_r1 <= ov5640_data_out_valid;
    ov5640_wr_en_r2 <= ov5640_wr_en_r1;
end

//------------- rgb2gray -----------
wire [7:0]  O_pixel_data_Gray;
wire        O_pixel_data_valid;
wire [15:0] O_rgb565_gray;
// 8位灰度 → RGB565
assign O_rgb565_gray = {O_pixel_data_Gray[7:3], O_pixel_data_Gray[7:2], O_pixel_data_Gray[7:3]}; // R5+G6+B5
rgb2gray # (
    .Pixel_Width(16)
)
rgb2gray_inst (
  .I_clk(ov5640_pclk_buf),
  .I_reset_p(!(sys_rst_n&locked)),
  .I_pixel_data_valid(ov5640_data_out_valid),
  .I_pixel_data_RGB(ov5640_data_out),
  .O_pixel_data_valid(O_pixel_data_valid),
  .O_pixel_data_Gray(O_pixel_data_Gray)
);

/*---------ddr3_test---------*/
//测试ddr3读写,从0写到DDR_TEST_LEN - 1,再依次读出
parameter DDR_TEST_LEN = 16'd128;
reg rst_n_r;
reg data_rd_valid_r;



(*mark_debug="true"*)reg ddr_wr_test_start_flag; //写开始标志
(*mark_debug="true"*)reg ddr_wr_test_busy_flag; //写忙标志
(*mark_debug="true"*)wire ddr_wr_test_end_flag; //写结束标志
(*mark_debug="true"*)reg ddr_rd_test_start_flag; //读开始标志
(*mark_debug="true"*)reg ddr_rd_test_busy_flag; //读忙标志
(*mark_debug="true"*)wire ddr_rd_test_end_flag; //读结束标志

(*mark_debug="true"*)wire [15:0] ddr_test_wr_data; //写数据
(*mark_debug="true"*)wire [15:0] ddr_test_rd_data; //读数据
(*mark_debug="true"*)reg [15:0] ddr_test_wr_cnt; //写计数
(*mark_debug="true"*)reg [15:0] ddr_test_rd_cnt; //读计数
(*mark_debug="true"*)wire ddr_test_wr_data_valid; //写数据有效标志
(*mark_debug="true"*)wire ddr_test_rd_data_en; //读使能
(*mark_debug="true"*)wire ddr_test_rd_data_valid; //读数据有效标志




// rst_n_r
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        rst_n_r <= 1'b0;
    end 
    else begin
        rst_n_r <= rst_n;
    end
end
// data_rd_valid_r
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        data_rd_valid_r <= 1'b0;
    end 
    else begin
        data_rd_valid_r <= data_rd_valid;
    end
end




// ddr_wr_test_start_flag: 开始标志
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        ddr_wr_test_start_flag <= 1'b0;
    end 
    else if (rst_n_r == 1'b0 && rst_n == 1'b1) begin
        ddr_wr_test_start_flag <= 1'b1;
    end
    else begin
        ddr_wr_test_start_flag <= 1'b0;
    end
end

// ddr_wr_test_busy_flag: 忙标志
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        ddr_wr_test_busy_flag <= 1'b0;
    end 
    else if (ddr_wr_test_start_flag == 1'b1) begin
        ddr_wr_test_busy_flag <= 1'b1;
    end
    else if(ddr_wr_test_end_flag == 1'b1) begin
        ddr_wr_test_busy_flag <= 1'b0;
    end
    else begin
        ddr_wr_test_busy_flag <= ddr_wr_test_busy_flag;
    end
end
// ddr_wr_test_end_flag: 结束标志
assign ddr_wr_test_end_flag = (ddr_wr_test_busy_flag == 1'b1)&&(ddr_test_wr_cnt == DDR_TEST_LEN - 1) ;

// ddr_test_wr_cnt: 写计数
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        ddr_test_wr_cnt <= 16'b0;
    end 
    else if (ddr_wr_test_busy_flag == 1'b1) begin
        if (ddr_test_wr_cnt == DDR_TEST_LEN - 1) begin
            ddr_test_wr_cnt <= 16'd0;
        end
        else begin
            ddr_test_wr_cnt <= ddr_test_wr_cnt + 16'b1;
        end
    end
    else begin
        ddr_test_wr_cnt <= 16'd0;
    end
end
// ddr_test_wr_data: 写数据
assign ddr_test_wr_data = ddr_test_wr_cnt;
// ddr_test_wr_data_valid: 写数据有效标志
assign ddr_test_wr_data_valid = ddr_wr_test_busy_flag;

//ddr_rd_test_start_flag: 开始标志
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        ddr_rd_test_start_flag <= 1'b0;
    end 
    else if(data_rd_valid_r == 1'b0 && data_rd_valid == 1'b1) begin
        ddr_rd_test_start_flag <= 1'b1;
    end
    else begin
        ddr_rd_test_start_flag <= 1'b0;
    end
end

// ddr_rd_test_busy_flag: 忙标志
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        ddr_rd_test_busy_flag <= 1'b0;
    end 
    else if (ddr_rd_test_start_flag == 1'b1) begin
        ddr_rd_test_busy_flag <= 1'b1;
    end
    else if(ddr_rd_test_end_flag == 1'b1) begin
        ddr_rd_test_busy_flag <= 1'b0;
    end
    else begin
        ddr_rd_test_busy_flag <= ddr_rd_test_busy_flag;
    end
end

// ddr_rd_test_end_flag: 结束标志
assign ddr_rd_test_end_flag = (ddr_rd_test_busy_flag == 1'b1)&&(ddr_test_rd_cnt == DDR_TEST_LEN - 1) ;

// ddr_test_rd_cnt: 读计数
always @(posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        ddr_test_rd_cnt <= 16'b0;
    end 
    else if (ddr_rd_test_busy_flag == 1'b1) begin
        if (ddr_test_rd_cnt == DDR_TEST_LEN - 1) begin
            ddr_test_rd_cnt <= 16'd0;
        end
        else begin
            ddr_test_rd_cnt <= ddr_test_rd_cnt + 16'b1;
        end
    end
    else begin
        ddr_test_rd_cnt <= 16'd0;
    end
end

// ddr_test_rd_data_en: 读使能
assign ddr_test_rd_data_en = ddr_rd_test_busy_flag;

// ddr_test_rd_data_valid: 读数据有效标志
assign ddr_test_rd_data_valid = ddr_test_rd_data_en;
//------------- ddr_rw_inst -------------

//data_wr:ddr写数据
reg [15:0] data_wr;


//DDR读写控制部分
axi_ddr_top #(
.DDR_WR_LEN(8),//写突发长度 1个64bit
.DDR_RD_LEN(8)//读突发长度  1个64bit

)
ddr_rw_inst
(
  .ddr3_clk     (ddr3_clk ),
  .sys_rst_n    (sys_rst_n&locked),
  .pingpang     (0        ),
   //写用户接口
  .user_wr_clk (clk_50m  ), //写时钟 
  .data_wren   (ddr_test_wr_data_valid), //写使能，高电平有效 ov5640_data_out_valid
//   .data_wr     (O_rgb565_gray ), //写数据16位 ov5640_data_out
  .data_wr     (ddr_test_wr_data ), //写数据16位 ov5640_data_out
  .wr_b_addr   (30'd0    ), //写起始地址
  .wr_e_addr   (30'd199  ), //写结束地址,8位一字节对应一个地址，16位x2
  .wr_rst      (1'b0     ), //写地址复位 wr_rst
  //读用户接口
  .user_rd_clk (clk_50m ), //读时钟
  .data_rden   (ddr_test_rd_data_en    ), //读使能，高电平有效
  .data_rd     (ddr_test_rd_data  ), //读数据16位
  .rd_b_addr   (30'd0    ), //读起始地址
  .rd_e_addr   (30'd199   ), //写结束地址,8位一字节对应一个地址,16位x2
  .rd_rst      (1'b0     ), //读地址复位 rd_rst
  .read_enable  (read_enable  ),
  .data_rd_valid(data_rd_valid),
   
  .ui_rst       (ui_rst       ), //ddr产生的复位信号
  .ui_clk       (ui_clk       ), //ddr操作时钟125m
  .calib_done   (sys_init_done), //代表ddr初始化完成
  
  //物理接口
  .ddr3_dq   (ddr3_dq   ),    //数据线
  .ddr3_dqs_n(ddr3_dqs_n),    //数据选取脉冲差分信号
  .ddr3_dqs_p(ddr3_dqs_p),    //数据选取脉冲差分信号
  .ddr3_addr (ddr3_addr ),    //地址线
  .ddr3_ba   (ddr3_ba   ),    //bank线
  .ddr3_ras_n(ddr3_ras_n),    //行使能信号，低电平有效
  .ddr3_cas_n(ddr3_cas_n),    //列使能信号，低电平有效
  .ddr3_we_n (ddr3_we_n ),    //写使能信号，低电平有效
  .ddr3_reset_n(ddr3_reset_n),//ddr3复位
  .ddr3_ck_p (ddr3_ck_p ),    //ddr3差分时钟
  .ddr3_ck_n (ddr3_ck_n ),    //ddr3差分时钟
  .ddr3_cke  (ddr3_cke  ),    //ddr3时钟使能信号
  .ddr3_cs_n (ddr3_cs_n ),    //ddr3片选信号
  .ddr3_dm   (ddr3_dm   ),    //ddr3掩码
  .ddr3_odt  (ddr3_odt  )     //odt阻抗
   

);







eth_udp_send  eth_udp_send_inst (
    .clk_125m(clk_125m),
    .rst_n(sys_rst_n && locked),
    .fifo_wr_clk(ov5640_pclk_buf),
    .fifo_wr_data(h_wr_data),
    .fifo_wr_en(ov5640_data_out_valid || h_wr_en),
    .phy_rst_n(phy_rst_n),
    .rgmii_tx_clk(rgmii_tx_clk),
    .rgmii_tx_data(rgmii_tx_data),
    .rgmii_tx_en(rgmii_tx_en)
);


reg [3:0] num;
seg_led  seg_led_inst (
    .clk(clk_50m),
    .rst_n(rst_n),
    .num(num),
    .seg_sel_n(seg_sel_n),
    .seg_data(seg_data)
);

endmodule
