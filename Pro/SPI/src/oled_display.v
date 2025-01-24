module oled_display  (
    input  sys_clk,
    input  sys_rst_n,
    input  key,
    output reg led,
    output oled_sck,    //spi时钟
    output oled_mosi,   //spi数据输出
    output oled_dc,     //1数据/0指令选择
    output oled_cs,     //spi片选
    output reg oled_rst     //oled复位
  );
  ila_0 ila_0_ins (
	.clk(sys_clk), // input wire clk
	
	.probe0(oled_sck),
	.probe1(oled_mosi), 
	.probe2(oled_dc),
  .probe3(oled_cs)
);

  /***********************reg变量声明*********************************/
  reg     [7:0]           send_buffer [51:0];    //指令数组
  reg     [7:0]          diaplay_buffer[7:0][127:0];   //显示输出缓冲数组
  reg spi_start;  //开始信号
  
  reg [15:0] cmd_cnt; //指令计数器
  reg [15:0] data_cnt;    //数据计数器
  reg [19:0] key_cnt;   //按键计数器
  reg key_state_r;  //按键状态
  reg oled_state;   //oled状态

  /***********************wire变量声明*********************************/
  wire [7:0] data_send;//发送数据
  wire send_done;  //发送完成标志位
  wire [7:0] data_rec; 
  wire rec_done;   //接收完成标志位
  wire spi_miso;   //spi数据输入
  /*******************assign语句*********************/
  //指令/数据选择
  assign oled_dc = (cmd_cnt<16'd26)?1'b0:1'b1;
  //发送数据(指令/数据)
  assign data_send = send_buffer[cmd_cnt];



  //按键消抖计数
  always @(posedge sys_clk ) begin
    if(!sys_rst_n) begin
        key_cnt <= 'd0;
    end
    else if (!key) begin
        if(key_cnt > 20'hFFFF) begin
            key_cnt <= key_cnt;
        end
        else begin
          key_cnt <= key_cnt + 20'd1;  
        end
    end
    else begin
        key_cnt <= 20'd0;
    end
  end
  //获得按键状态
  always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        key_state_r <= 1'd0;
    end
    else if (key_cnt == 'd50_000) begin
        key_state_r <= 1'd1;
    end
    else begin
        key_state_r <= 1'd0;
    end
  end

  //LED输出
  always @(posedge sys_clk ) begin
    if(!sys_rst_n) begin
        led <= 'd0;
    end
    else if (key_state_r) begin
        led <= ~led;
    end
    else begin
        led <= led;
    end
  end


  //oled工作状态
  always @(posedge sys_clk ) begin
    if (!sys_rst_n) begin
      oled_state <= 1'b0;
    end
    else begin
      oled_state <= 1'b1;
    end
  end
  //命令计数器
  always @(posedge sys_clk , negedge sys_rst_n)begin
    if(!sys_rst_n)begin
      cmd_cnt <= 16'h00;
    end
    else if(send_done == 1'b1)begin
      cmd_cnt <= cmd_cnt + 16'h01;
    end
    else begin
      cmd_cnt <= cmd_cnt;
    end 
  end



  //OLED初始化
  //OLED初始化指令
  always @(posedge sys_clk , negedge sys_rst_n)
  begin
    if(!sys_rst_n) begin
      send_buffer[0] <= 8'hAE;//设置显示关闭
      send_buffer[1] <= 8'hD5;//---set low column address
      send_buffer[2] <= 8'h80;//---set high column address
      send_buffer[3] <= 8'hA8;//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
      send_buffer[4] <= 8'h3F;//--set contrast control register
      send_buffer[5] <= 8'hD3;//--Set SEG Output Current Brightness
      send_buffer[6] <= 8'h00;//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
      send_buffer[7] <= 8'h40;//--Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
      send_buffer[8] <= 8'hA1;//--set normal display
      send_buffer[9] <= 8'hC8;//--set multiplex ratio(1 to 64)
      send_buffer[10] <= 8'hDA;//--1/64 duty
      send_buffer[11] <= 8'h12;//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
      send_buffer[12] <= 8'h81;//-not offset
      send_buffer[13] <= 8'hCF;//--set display clock divide ratio/oscillator frequency
      send_buffer[14] <= 8'hD9;//--set divide ratio, Set Clock as 100 Frames/Sec
      send_buffer[15] <= 8'hF1;//--set pre-charge period
      send_buffer[16] <= 8'hDB;//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
      send_buffer[17] <= 8'h30;//--set com pins hardware configuration
      send_buffer[18] <= 8'hA4;//
      send_buffer[19] <= 8'hA6;//--set vcomh
      send_buffer[20] <= 8'h8D;//--Set VCOM Deselect Level
      send_buffer[21] <= 8'h14;//--Set Page Addressing Mode (0x00/0x01/0x02)
      send_buffer[22] <= 8'hAF;//
      send_buffer[23] <= 8'h0A;//行地址低位
      send_buffer[24] <= 8'h1A;//行地址高位
      send_buffer[25] <= 8'hB2;// 页地址
      send_buffer[26] <= 8'h55;// Disable Inverse Display On (0xa6/a7)
      send_buffer[27] <= 8'h55;
      
      /*******  设置初始坐标点为0,0  ********/
      send_buffer[28] <= 8'h55;//set y=0 行为0
      send_buffer[29] <= 8'h55;//set x=0
      send_buffer[30] <= 8'h55;//确认指令
      send_buffer[31] <= 8'h55;//set y=1 行为1
      send_buffer[32] <= 8'h55;//set x=0
      send_buffer[33] <= 8'h55;//确认指令
      send_buffer[34] <= 8'h55;
      send_buffer[35] <= 8'h55;
      send_buffer[36] <= 8'h00;
      send_buffer[37] <= 8'h00;
      send_buffer[38] <= 8'h00;
      send_buffer[39] <= 8'h00;
      send_buffer[40] <= 8'h04;
      send_buffer[41] <= 8'h00;
      send_buffer[42] <= 8'h00;
      send_buffer[43] <= 8'h00;
      send_buffer[44] <= 8'h00;
      send_buffer[45] <= 8'h00;
      send_buffer[46] <= 8'h00;
      send_buffer[47] <= 8'h00;
      send_buffer[48] <= 8'h00;
      send_buffer[49] <= 8'h00;
      send_buffer[50] <= 8'h00;
      send_buffer[51] <= 8'h00;
    end
  end

  //显存数组初始化
  integer i;
  integer j;
  always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[0][i] <= 'hff;
        end
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[1][i] <= 'h00;
        end
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[2][i] <= 'hff;
        end
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[3][i] <= 'h00;
        end
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[4][i] <= 'hff;   
        end
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[5][i] <= 'h00;
        end
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[6][i] <= 'hff;
        end
        for(i=0;i<128;i=i+1) begin
            diaplay_buffer[7][i] <= 'hff;
        end
    end
    else begin
        for(j=0;j<8;j=j+1) begin
            for(i=0;i<128;i=i+1) begin
                diaplay_buffer[j][i] <= 'hff;
            end
        end
    end
  end 
  //开始信号
  always @(posedge sys_clk,negedge sys_rst_n )begin
    if (!sys_rst_n) begin
        spi_start<=1'b1;
    end
    else if (send_done==1'b1) begin
        spi_start<=1'b1;
    end
    else begin
        spi_start<=1'b0;
    end
  end



//OLED复位信号输出
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        oled_rst <= 1'd1;
    end
    else if (key_state_r) begin
        oled_rst <= 1'd0;
    end
    else begin
        oled_rst <= 1'd1;
    end
end

  spi_drive  spi_drive_inst (
               .sys_clk(sys_clk),
               .rst_n(sys_rst_n),
               .spi_start(spi_start),
               .data_send(data_send),
               .data_rec( ),
               .send_done(send_done),
               .rec_done( ),
               .spi_miso( ),
               .spi_sck(oled_sck),
               .spi_cs(oled_cs),
               .spi_mosi(oled_mosi)
             );


endmodule
