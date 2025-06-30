`timescale 1ns/1ns
//arp协议层
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
		
	parameter CRC = 32'h6E72D481; //整个数据包CRC校验值，本例中使用CRC计算软件计算得出。
	
	wire [31:0]CRC_result;
	
	//调整 CRC校验字字节顺序以符合以太网数据包校验格式
	assign CRC_result = {CRC[7:0],CRC[15:8],CRC[23:16],CRC[31:24]};
	
	eth_send eth_send(
		.rst_n(rst_n),
		.tx_go(tx_go),
		.data_length(16'd46),
		.des_mac(48'hff_ff_ff_ff_ff_ff),
		.src_mac(48'h00_0a_35_01_fe_c0),//注：本实验的源地址修改会影响到CRC校验值，如需修改请重新计算校验值
		.type_length(16'h08_06),
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
	
	//ARP包数据段	
	always@(*)
	begin
		case(data_cnt)
			//hdwr type
			00: fifo_rddata =	8'h00;
			01: fifo_rddata =	8'h01;
			
			//protocol type
			02: fifo_rddata =	8'h08;
			03: fifo_rddata =	8'h00;
			
			//hdwr size
			04: fifo_rddata =	8'h06;
			
			//protocol size
			05: fifo_rddata =	8'h04;
			
			//opcode
			06: fifo_rddata =	8'h00;
			07: fifo_rddata =	8'h01;
			
			//sender mac
			08: fifo_rddata =	8'h00;
			09: fifo_rddata =	8'h0A;
			10: fifo_rddata =	8'h35;
			11: fifo_rddata =	8'h01;
			12: fifo_rddata =	8'hFE;
			13: fifo_rddata =	8'hC0;
			
			//sender ip : 192.168.0.2
			14: fifo_rddata =	8'hc0;//192
			15: fifo_rddata =	8'ha8;//168
			16: fifo_rddata =	8'h00;//0
			17: fifo_rddata =	8'h02;//2
			
			//target mac
			18: fifo_rddata =	8'h00;
			19: fifo_rddata =	8'h00;
			20: fifo_rddata =	8'h00;
			21: fifo_rddata =	8'h00;
			22: fifo_rddata =	8'h00;
			23: fifo_rddata =	8'h00;
			
			//target ip : 192.168.0.3
			24: fifo_rddata =	8'hc0;//192
			25: fifo_rddata =	8'ha8;//168
			26: fifo_rddata =	8'h00;//0
			27: fifo_rddata =	8'h03;//3
			
			//填充字段，以使整个数据帧长度达到64字节
			28: fifo_rddata =	8'h00;
			29: fifo_rddata =	8'h00;
			30: fifo_rddata =	8'h00;
			31: fifo_rddata =	8'h00;
			32: fifo_rddata =	8'h00;
			33: fifo_rddata =	8'h00;
			34: fifo_rddata =	8'h00;
			35: fifo_rddata =	8'h00;
			36: fifo_rddata =	8'h00;
			37: fifo_rddata =	8'h00;
			38: fifo_rddata =	8'h00;
			39: fifo_rddata =	8'h00;
			40: fifo_rddata =	8'h00;
			41: fifo_rddata =	8'h00;
			42: fifo_rddata =	8'h00;
			43: fifo_rddata =	8'h00;
			44: fifo_rddata =	8'h00;
			45: fifo_rddata =	8'h00;
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

