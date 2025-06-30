`timescale 1ns/1ns
//**********arp协议层*************//
//mac帧数据通过端口传递进mac层模块eth_send中
//封装在fifo中的arp帧数据通过模拟fifo传给mac层模块eth_send
module eth_send_test(
    input rst_n,
	
	//GMII 接口信号	
	input  gmii_tx_clk,	//GMII接口发送时钟，由PHY芯片产生，125MHz
	output gmii_tx_en,	//GMII接口发送数据使能信号，高电平有效
	output gmii_tx_er,	//发送错误，用以破坏数据包发送
	output [7:0]gmii_tx_data, //GMII接口发送数据线，FPGA通过该数据线将需要发送的数据依次送给PHY芯片
	output phy_rst_n	// PHY 复位信号
);

	assign phy_rst_n = 1;
	
    wire send_done;
    wire [15:0]ip_total_len;	//IP数据包总长度 IP 报文(报头+数据)长度
    reg  [15:0]data_total_len;   //实际要发送的用户数据长度
    wire [15:0]ip_checksum;
	wire [31:0]src_ip;
	wire [31:0]dst_ip;
	wire [15:0]udp_total_len;	//UDP数据包总长度
	wire [15:0]dst_port;	//目标端口号
	wire [15:0]src_port; //源端口号

	wire fifo_rdreq;
	wire tx_go;
	
	reg [7:0] fifo_rddata;
	wire fifo_rdclk;
	reg [11:0]data_cnt;
	wire crc_en;
	parameter CRC = 32'h6E72D481; //整个数据包CRC校验值，本例中使用CRC计算软件计算得出。
	
	wire [31:0]CRC_result;
	
	//调整 CRC校验字字节顺序以符合以太网数据包校验格式
	//assign CRC_result = {CRC[7:0],CRC[15:8],CRC[23:16],CRC[31:24]};
	
    assign ip_total_len = data_total_len + 8'd28; //udp数据长度 + ip报头20字节和udp报头8字节
    assign udp_total_len = data_total_len + 8'd8; 
    assign src_ip = 32'hc0_a8_00_02;//源ip地址
	assign dst_ip = 32'hc0_a8_00_03;//目的ip地址

    assign dst_port = 16'd6102;	//目的端口号6102
	assign src_port = 16'd5000;	//源端口号5000

    CRC32_d8  CRC32_d8_inst (
    .clk(gmii_tx_clk),  
    .rst_n(rst_n),
    .data_in(gmii_tx_data),
    .enable(crc_en),
    .initialize(~gmii_tx_en),
    .crc( ),
    .crc_next( ),
    .crc_eth(CRC_result)
    
  );


	eth_send eth_send(
		.rst_n(rst_n),
		.tx_go(tx_go),
		.data_length(ip_total_len),
		.des_mac(48'h00_E0_21_88_F2_38),//全FF为广播包  //00-E0-21-88-F2-38
		.src_mac(48'h00_0a_35_01_fe_ca),//注：本实验的源地址修改会影响到CRC校验值，如需修改请重新计算校验值
		.type_length(16'h08_00),
        .crc_en(crc_en),
		.CRC_Result(CRC_result),
        .send_done(send_done),
		.fifo_rdreq(fifo_rdreq),
		.fifo_rddata(fifo_rddata),
		.fifo_rdclk(fifo_rdclk),
		.gmii_tx_clk(gmii_tx_clk),
		.gmii_tx_en(gmii_tx_en),
		.gmii_tx_er(gmii_tx_er),
		.gmii_tx_data(gmii_tx_data)
	);

    checksum  checksum_inst (
    .ver(4'h4),
    .hdr_len(4'h5),
    .tos(8'h00),
    .total_len(ip_total_len),
    .id(16'h0000),
    .offset(16'h000),
    .ttl(8'h40),
    .protocol(8'h11),
    .src_ip(src_ip),
    .dst_ip(dst_ip),
    .checksum_result(ip_checksum)
  );

    //每次发送完成，将发送的数据长度累加1  //可变长度数据发送序列，测试生成发送的数据每次长度自增1直到28再重置为22,下面发送数据也就是自定义fifo中定义了22+6(thanks)个数据，随着数据长度自增，发送数据会从22个数据逐渐增加到thanks
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		data_total_len <= 22;
	else if(send_done)begin
		if(data_total_len >= 28)
			data_total_len <= 22;
		else
			data_total_len <= data_total_len + 1'b1;
	end
	else 
		data_total_len <= data_total_len;
	
	//计数发送数据个数，用于产生对应的数据
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		data_cnt <= #1 12'd0;
	else if(fifo_rdreq)
		data_cnt <= #1 data_cnt + 1'b1;
	else
		data_cnt <= #1 12'd0;
	
	//UDP包数据段	
	always@(*)
	begin
		case(data_cnt)
			00: fifo_rddata =	8'h45;//协议版本,首部长度

            //服务类型
			01: fifo_rddata =	8'h00;
			
			//IP数据报总长度（IP报头+数据）
			02: fifo_rddata =	ip_total_len[15:8];
			03: fifo_rddata =	ip_total_len[7:0];
			
			//数据包标识
			04: fifo_rddata =	8'h00;
			05: fifo_rddata =	8'h00;
			
			//标识+分段偏移
			06: fifo_rddata =	8'h00;
			07: fifo_rddata =	8'h00;
			
			//生存时间 64
			08: fifo_rddata =	8'h40;

            //数据报类型 17： UDP
			09: fifo_rddata =	8'h11;

            //IP报头校验和 模块自动计算
			10: fifo_rddata =	ip_checksum[15:8];
			11: fifo_rddata =	ip_checksum[7:0];

            //源地址192.168.0.2
			12: fifo_rddata =	src_ip[31:24];
			13: fifo_rddata =	src_ip[23:16];
			14: fifo_rddata =	src_ip[15:8];
			15: fifo_rddata =	src_ip[7:0];
            //目的地址192.168.0.3
			16: fifo_rddata =	dst_ip[31:24];
			17: fifo_rddata =	dst_ip[23:16];
			18: fifo_rddata =	dst_ip[15:8];
			19: fifo_rddata =	dst_ip[7:0];

            //源端口号5000(0x1388)
			20: fifo_rddata =	src_port[15:8];
			21: fifo_rddata =	src_port[7:0];
            //目的端口号6102(0x17d6)
			22: fifo_rddata =	dst_port[15:8];
			23: fifo_rddata =	dst_port[7:0];

            //UDP数据报总长度（UDP报头+数据）
			24: fifo_rddata =	udp_total_len[15:8];
			25: fifo_rddata =	udp_total_len[7:0];

            //UDP报头校验和  忽略
			26: fifo_rddata =	8'h00;
			27: fifo_rddata =	8'h00;

            //用户数据：Hello, welcom to FPGA!
			28: fifo_rddata =	8'h48;//H
			29: fifo_rddata =	8'h65;//e
			30: fifo_rddata =	8'h6C;//l
			31: fifo_rddata =	8'h6C;//l
			32: fifo_rddata =	8'h6F;//o
			33: fifo_rddata =	8'h2C;//,
			34: fifo_rddata =	8'h20;// 
			35: fifo_rddata =	8'h77;//w
			36: fifo_rddata =	8'h65;//e
			37: fifo_rddata =	8'h6C;//l
			38: fifo_rddata =	8'h63;//c
			39: fifo_rddata =	8'h6F;//o
			40: fifo_rddata =	8'h6D;//m
			41: fifo_rddata =	8'h20;// 
			42: fifo_rddata =	8'h74;//t
			43: fifo_rddata =	8'h6F;//o
			44: fifo_rddata =	8'h20;// 
            45: fifo_rddata =	8'h46;//F
            46: fifo_rddata =	8'h50;//P
            47: fifo_rddata =	8'h47;//G
            48: fifo_rddata =	8'h41;//A
            49: fifo_rddata =	8'h21;//!

            50: fifo_rddata =	8'h74;//t
            51: fifo_rddata =	8'h68;//h
            52: fifo_rddata =	8'h61;//a
            53: fifo_rddata =	8'h6e;//n
            54: fifo_rddata =	8'h6b;//k
            55: fifo_rddata =	8'h73;//s
			default:fifo_rddata = 8'h00;
		endcase
	end	
	
	//发送间隔计数器
	reg [23:0]cnt;
	
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		cnt <= #1 0;
	else //计数器自增，不考虑溢出，接受溢出自动清零
		cnt <= #1 cnt + 1'b1;
		
	//24位cnt计满一次启动一次发送，该时间大约为134ms
	assign tx_go = (cnt == 24'd1);

endmodule

