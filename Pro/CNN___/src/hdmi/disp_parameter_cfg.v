
/*使用说明

参数: Resolution_xxxx
预定义用来决定显示设备分辨率，常见设备分辨率如下所述

4.3寸TFT显示屏：
  Resolution_480x272

5寸TFT显示屏：
  Resolution_800x480

VGA常见分辨率：
  Resolution_640x480
  Resolution_800x600
  Resolution_1024x600
  Resolution_1024x768
  Resolution_1280x720
  Resolution_1920x1080
*/

`define Resolution_640x480


//定义不同分辨率的时序参数
/*
行同步信号时序分为 6 段， Sync （同步）、 Back Porch （后沿）、 Left Border （左边
框）、 “Addressable” Video （有效图像）、 Right Border （右边框）、 Front Porch （前沿），
这 6 段构成一个行扫描周期，单位为像素时钟周期。
H_Total_Time: 总的水平时序
H_Right_Border: 右边框时序
H_Front_Porch: 前沿时序
H_Sync_Time: 同步时序
H_Back_Porch: 后沿时序
H_Left_Border: 左边框时序
V_Total_Time: 总的垂直时序
V_Bottom_Border: 底部边框时序
V_Front_Porch: 前沿时序
V_Sync_Time: 同步时序
V_Back_Porch: 后沿时序
V_Top_Border: 顶部边框时序
*/

`ifdef Resolution_480x272
    `define H_Total_Time    12'd525
    `define H_Right_Border  12'd0
    `define H_Front_Porch   12'd2
    `define H_Sync_Time     12'd41
    `define H_Back_Porch    12'd2
    `define H_Left_Border   12'd0
    `define H_Valid_Time    12'd480

    `define V_Total_Time    12'd286
    `define V_Bottom_Border 12'd0
    `define V_Front_Porch   12'd2
    `define V_Sync_Time     12'd10
    `define V_Back_Porch    12'd2
    `define V_Top_Border    12'd0
    `define V_Valid_Time    12'd272
  
`elsif Resolution_640x480
    // clk_pix = 25MHz, 1 pixel = 1/25MHz = 40ns
    `define H_Total_Time    12'd800
    `define H_Right_Border  12'd8
    `define H_Front_Porch   12'd8
    `define H_Sync_Time     12'd96
    `define H_Back_Porch    12'd40
    `define H_Left_Border   12'd8
    `define H_Valid_Time    12'd640

    `define V_Total_Time    12'd525
    `define V_Bottom_Border 12'd8
    `define V_Front_Porch   12'd2
    `define V_Sync_Time     12'd2
    `define V_Back_Porch    12'd25
    `define V_Top_Border    12'd8
    `define V_Valid_Time    12'd480

`elsif Resolution_800x480
    `define H_Total_Time    12'd1056
    `define H_Right_Border  12'd0
    `define H_Front_Porch   12'd40
    `define H_Sync_Time     12'd128
    `define H_Back_Porch    12'd88
    `define H_Left_Border   12'd0
    `define H_Valid_Time    12'd800

    `define V_Total_Time    12'd525
    `define V_Bottom_Border 12'd8
    `define V_Front_Porch   12'd2
    `define V_Sync_Time     12'd2
    `define V_Back_Porch    12'd25
    `define V_Top_Border    12'd8
    `define V_Valid_Time    12'd480

`elsif Resolution_800x600
    // clk_pix = 40MHz, 1 pixel = 1/40MHz = 25ns
    `define H_Total_Time    12'd1056
    `define H_Right_Border  12'd0
    `define H_Front_Porch   12'd40
    `define H_Sync_Time     12'd128
    `define H_Back_Porch    12'd88
    `define H_Left_Border   12'd0
    `define H_Valid_Time    12'd800

    `define V_Total_Time    12'd628
    `define V_Bottom_Border 12'd0
    `define V_Front_Porch   12'd1
    `define V_Sync_Time     12'd4
    `define V_Back_Porch    12'd23
    `define V_Top_Border    12'd0
    `define V_Valid_Time    12'd600

`elsif Resolution_1024x600
    `define H_Total_Time    12'd1344
    `define H_Right_Border  12'd0
    `define H_Front_Porch   12'd24
    `define H_Sync_Time     12'd136
    `define H_Back_Porch    12'd160
    `define H_Left_Border   12'd0
    `define H_Valid_Time    12'd1024

    `define V_Total_Time    12'd628
    `define V_Bottom_Border 12'd0
    `define V_Front_Porch   12'd1
    `define V_Sync_Time     12'd4
    `define V_Back_Porch    12'd23
    `define V_Top_Border    12'd0
    `define V_Valid_Time    12'd600

`elsif Resolution_1024x768
    `define H_Total_Time    12'd1344
    `define H_Right_Border  12'd0
    `define H_Front_Porch   12'd24
    `define H_Sync_Time     12'd136
    `define H_Back_Porch    12'd160
    `define H_Left_Border   12'd0
    `define H_Valid_Time    12'd1024

    `define V_Total_Time    12'd806
    `define V_Bottom_Border 12'd0
    `define V_Front_Porch   12'd3
    `define V_Sync_Time     12'd6
    `define V_Back_Porch    12'd29
    `define V_Top_Border    12'd0
    `define V_Valid_Time    12'd768

`elsif Resolution_1280x720
    `define H_Total_Time    12'd1650
    `define H_Right_Border  12'd0
    `define H_Front_Porch   12'd110
    `define H_Sync_Time     12'd40
    `define H_Back_Porch    12'd220
    `define H_Left_Border   12'd0
    `define H_Valid_Time    12'd1280

    `define V_Total_Time    12'd750
    `define V_Bottom_Border 12'd0
    `define V_Front_Porch   12'd5
    `define V_Sync_Time     12'd5
    `define V_Back_Porch    12'd20
    `define V_Top_Border    12'd0
    `define V_Valid_Time    12'd720
  
`elsif Resolution_1920x1080
    `define H_Total_Time    12'd2200
    `define H_Right_Border  12'd0
    `define H_Front_Porch   12'd88
    `define H_Sync_Time     12'd44
    `define H_Back_Porch    12'd148
    `define H_Left_Border   12'd0
    `define H_Valid_Time    12'd1920

    `define V_Total_Time    12'd1125
    `define V_Bottom_Border 12'd0
    `define V_Front_Porch   12'd4
    `define V_Sync_Time     12'd5
    `define V_Back_Porch    12'd36
    `define V_Top_Border    12'd0
    `define V_Valid_Time    12'd1080

`endif