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
		.data_length(16'd50),
		.des_mac(48'hff_ff_ff_ff_ff_ff),
		.src_mac(48'h00_0a_35_01_fe_ca),//注：本实验的源地址修改会影响到CRC校验值，如需修改请重新计算校验值
		.type_length(16'h08_00),
        .crc_en(crc_en),
		.CRC_Result(CRC_result),
		.fifo_rdreq(fifo_rdreq),
		.fifo_rddata(fifo_rddata),
		.fifo_rdclk(fifo_rdclk),
		.gmii_tx_clk(gmii_tx_clk),
		.gmii_tx_en(gmii_tx_en),
		.gmii_tx_er(gmii_tx_er),
		.gmii_tx_data(gmii_tx_data)
	);
	
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
			02: fifo_rddata =	8'h00;
			03: fifo_rddata =	8'h32;
			
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

            //IP报头校验和
			10: fifo_rddata =	8'hF9;
			11: fifo_rddata =	8'h65;

            //源地址192.168.0.2
			12: fifo_rddata =	8'hC0;
			13: fifo_rddata =	8'hA8;//192
			14: fifo_rddata =	8'h00;//168
			15: fifo_rddata =	8'h02;//0
            //目的地址192.168.0.3
			16: fifo_rddata =	8'hC0;
			17: fifo_rddata =	8'hA8;
			18: fifo_rddata =	8'h00;
			19: fifo_rddata =	8'h03;

            //源端口号5000(0x1388)
			20: fifo_rddata =	8'h13;
			21: fifo_rddata =	8'h88;
            //目的端口号6102(0x17d6)
			22: fifo_rddata =	8'h17;
			23: fifo_rddata =	8'hD6;

            //UDP数据报总长度（UDP报头+数据）
			24: fifo_rddata =	8'h00;
			25: fifo_rddata =	8'h1E;

            //UDP报头校验和
			26: fifo_rddata =	8'hB2;
			27: fifo_rddata =	8'h6E;

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

