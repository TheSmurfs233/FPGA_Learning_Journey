`timescale  1ns/1ns
module  uart_ddr_hdmi
(
    input   wire    sys_clk          , //系统时钟
    input   wire    sys_rst_n        ,//系统复位，低电平有效
    
    input   wire            rx          ,
//HDMI
    output  wire            ddc_scl     ,
    output  wire            ddc_sda     ,
    output  wire            tmds_clk_p  ,
    output  wire            tmds_clk_n  ,   //HDMI时钟差分信号
    output  wire    [2:0]   tmds_data_p ,
    output  wire    [2:0]   tmds_data_n ,   //HDMI图像差分信号
//DDR3接口
    inout [15:0]       ddr3_dq,
    inout [1:0]        ddr3_dqs_n,
    inout [1:0]        ddr3_dqs_p,
    output [13:0]      ddr3_addr,
    output [2:0]       ddr3_ba,
    output             ddr3_ras_n,
    output             ddr3_cas_n,
    output             ddr3_we_n,
    output             ddr3_reset_n,
    output [0:0]       ddr3_ck_p,
    output [0:0]       ddr3_ck_n,
    output [0:0]       ddr3_cke,
    output [0:0]       ddr3_cs_n,
    output [1:0]       ddr3_dm,
    output [0:0]       ddr3_odt

);
//********************************************************************//
//****************** Parameter and Internal Signal *******************//
//********************************************************************//
//parameter define
//水平方向像素个数,用于设置SDRAM缓存大小
parameter   H_PIXEL     =   24'd640 ;   
//垂直方向像素个数,用于设置SDRAM缓存大小
parameter   V_PIXEL     =   24'd480 ;

//------------- UART -------------
parameter   UART_BPS    =   20'd460800        ,   //比特率
            CLK_FREQ    =   26'd50_000_000  ;   //时钟频率
//wire  define
wire      pll_locked;
wire      locked1;
wire      clk_25m     ; 
wire      clk_50m     ; 
wire      clk_125m     ; 
wire      clk_200m     ;
wire      rst_n        ; //复位信号(sys_rst_n & pll_locked)
wire      wr_en        ; //sdram写使能
wire[31:0]wr_data      ; //sdram写数据
wire      rd_en        ; //sdram读使能
wire[31:0]rd_data      ; //sdram读数据
wire      ddr3_init_done; //系统初始化完成(SDRAM初始化+摄像头初始化)
wire      ui_clk       ; //DDR3的读写时钟
wire      ui_rst       ; //ddr产生的复位信号
wire            hsync   ;   //输出行同步信号
wire            vsync   ;   //输出场同步信号
wire    [7:0]   po_data;
wire            po_flag;
wire     [31:0] rgb;
wire    [31:0] bit32_out;
wire    bit32_out_valid;

//********************************************************************//
//***************************** Main Code ****************************//
//********************************************************************//
assign  rst_n = sys_rst_n & ddr3_init_done & pll_locked;

bit8_to_bit32  bit8_to_bit32_inst (
    .sys_clk(clk_50m),
    .sys_rst_n(rst_n),
    .bit8_in_valid(po_flag),
    .bit8_in(po_data),

    .bit32_out_valid(wr_en),
    .bit32_out(wr_data)
  );
uart_rx
#(
    .UART_BPS       (UART_BPS   ),  //串口波特率
    .CLK_FREQ       (CLK_FREQ   )   //时钟频率
)
uart_rx_inst
(
    .sys_clk        (clk_50m    ),  //input             sys_clk
    .sys_rst_n      (rst_n      ),  //input             sys_rst_n
    .rx             (rx         ),  //input             rx
            
    .po_data        (po_data    ),  //output    [7:0]   po_data
    .po_flag        (po_flag    )   //output   po_flag,一个时钟的高电平
);

clk_wiz_0 clk_wiz_0_inst
   (
    // Clock out ports
    .clk_out1_50m(clk_50m),     // output clk_out1_50m
    .clk_out2_200m(clk_200m),     // output clk_out2_200m
    .clk_out3_125m(clk_125m),     // output clk_out3_125m
    .clk_out4_25(clk_25m),     // output clk_out4_25
    // Status and control signals
    .resetn(sys_rst_n), // input resetn
    .locked(pll_locked),       // output locked
   // Clock in ports
    .clk_in1(sys_clk));      // input clk_in1


//------------- ddr_rw_inst -------------
//DDR读写控制部分
axi_ddr_top 
#(
.DDR_WR_LEN(32),//写突发长度 最大128个64bit
.DDR_RD_LEN(32)//读突发长度 最大128个64bit
)

ddr_rw_inst(
  .ddr3_clk     (clk_200m           ),
  .sys_rst_n    (pll_locked   ),
  .pingpang     (0                  ),
   //写用户接口
  .user_wr_clk  (clk_50m            ), //写时钟
  .data_wren    (wr_en            ), //写使能，高电平有效
  .data_wr      (wr_data            ), //写数据32位wr_data
  .wr_b_addr    (30'd0              ), //写起始地址
  .wr_e_addr    (H_PIXEL*V_PIXEL*3  ), //写结束地址,8位一字节对应一个地址，16位x2
  .wr_rst       (1'b0               ), //写地址复位 wr_rst
  //读用户接口   
  .user_rd_clk  (clk_25m             ), //读时钟
  .data_rden    (rd_en              ), //读使能，高电平有效
  .data_rd      (rd_data            ), //读数据32位
  .rd_b_addr    (30'd0              ), //读起始地址
  .rd_e_addr    (H_PIXEL*V_PIXEL*3  ), //写结束地址,8位一字节对应一个地址,16位x2
  .rd_rst       (1'b0               ), //读地址复位 rd_rst
  .read_enable  (1'b1               ),
   
  .ui_rst       (ui_rst             ), //ddr产生的复位信号
  .ui_clk       (ui_clk             ), //ddr操作时钟125m
  .calib_done   (ddr3_init_done     ), //代表ddr初始化完成
  
  //物理接口
  .ddr3_dq      (ddr3_dq            ),
  .ddr3_dqs_n   (ddr3_dqs_n         ),
  .ddr3_dqs_p   (ddr3_dqs_p         ),
  .ddr3_addr    (ddr3_addr          ),
  .ddr3_ba      (ddr3_ba            ),
  .ddr3_ras_n   (ddr3_ras_n         ),
  .ddr3_cas_n   (ddr3_cas_n         ),
  .ddr3_we_n    (ddr3_we_n          ),
  .ddr3_reset_n (ddr3_reset_n       ),
  .ddr3_ck_p    (ddr3_ck_p          ),
  .ddr3_ck_n    (ddr3_ck_n          ),
  .ddr3_cke     (ddr3_cke           ),
  .ddr3_cs_n    (ddr3_cs_n          ),
  .ddr3_dm      (ddr3_dm            ),
  .ddr3_odt     (ddr3_odt           )
   

);
//------------- vga_ctrl_inst -------------
vga_ctrl  vga_ctrl_inst
(
    .vga_clk    (clk_25m    ),  //输入工作时钟,频率25MHz,1bit
    .sys_rst_n  (rst_n      ),  //输入复位信号,低电平有效,1bit
    .pix_data   (rd_data    ),  //输入像素点色彩信息,32bit

    .pix_x      (           ),  //输出VGA有效显示区域像素点X轴坐标,10bit
    .pix_y      (           ),  //输出VGA有效显示区域像素点Y轴坐标,10bit
    .hsync      (hsync      ),  //输出行同步信号,1bit
    .vsync      (vsync      ),  //输出场同步信号,1bit
    .rgb_valid  (rd_en      ),
    .rgb        (rgb        )   //输出像素点色彩信息,32bit
);

//------------- hdmi_ctrl_inst -------------
hdmi_ctrl   hdmi_ctrl_inst
(
    .clk_1x      (clk_25m           ),   //输入系统时钟
    .clk_5x      (clk_125m          ),   //输入5倍系统时钟
    .sys_rst_n   (rst_n             ),   //复位信号,低有效
    .rgb_blue    (rgb[7:0]          ),   //蓝色分量
    .rgb_green   (rgb[15:8]         ),   //绿色分量
    .rgb_red     (rgb[23:16]        ),   //红色分量
    .hsync       (hsync             ),   //行同步信号
    .vsync       (vsync             ),   //场同步信号
    .de          (rd_en             ),   //使能信号
    .hdmi_clk_p  (tmds_clk_p        ),
    .hdmi_clk_n  (tmds_clk_n        ),   //时钟差分信号
    .hdmi_r_p    (tmds_data_p[2]    ),
    .hdmi_r_n    (tmds_data_n[2]    ),   //红色分量差分信号
    .hdmi_g_p    (tmds_data_p[1]    ),
    .hdmi_g_n    (tmds_data_n[1]    ),   //绿色分量差分信号
    .hdmi_b_p    (tmds_data_p[0]    ),
    .hdmi_b_n    (tmds_data_n[0]    )    //蓝色分量差分信号
);

endmodule
