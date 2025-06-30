`timescale 1ns/1ns
//mac层
module eth_send(
	input rst_n, //复位输入
	input tx_go, //发送启动信号，单时钟周期高脉冲使能一次发送
	
	input [47:0]des_mac, //目标MAC地址
	input [47:0]src_mac, //本机/源MAC地址
	input [15:0]type_length,	//数据帧类型
	input [31:0]CRC_Result,	//CRC校验结果
	input [15:0]data_length,	//数据长度
	
    //数据fifo
	output fifo_rdreq,	//fifo读取请求	
	input [7:0]fifo_rddata,	//fifo读取到数据内容
	output fifo_rdclk,	//fifo读时钟
	
	//GMII 接口信号	
	input gmii_tx_clk, //GMII接口发送时钟，125MHz
	output reg gmii_tx_en,	//GMII接口发送数据使能信号，高电平有效
	output gmii_tx_er,	//发送错误，用以破坏数据包发送
	output reg [7:0]gmii_tx_data	//GMII接口数据总线，FPGA通过该数据线将需要发送的数据依次送给PHY芯片

);


	reg [5:0] cnt;		//序列机计数器，本以太网帧发送系统使用线性序列机方式设计
	reg en_tx;	//内部的数据帧发送使能信号，高电平时将数据通过MII接口送出
	wire en_tx_data;	//发送MAC帧中数据部分使能信号，一个完整的MAC帧包含数据和MAC帧头以及结尾的校验部分，本信号用于标识帧中数据段部分
	reg [15:0]data_num;	//待发送的数据帧中数据部分数量
	
	reg [47:0]r_des_mac; //目标MAC地址
	reg [15:0]r_type_length;	//数据帧类型
	
	assign fifo_rdreq = en_tx_data;	//fifo读请求，fifo需要设置为show ahead模式
	
	assign fifo_rdclk = gmii_tx_clk;	//fifo读时钟
	assign gmii_tx_er = 1'b0;
	always@(posedge gmii_tx_clk)
	if(tx_go)
		r_des_mac <= des_mac;
	else
		r_des_mac <= r_des_mac;
		
	always@(posedge gmii_tx_clk)
	if(tx_go)
		r_type_length <= type_length;
	else
		r_type_length <= r_type_length;
	
	//根据发送启动信号产生内部发送使能信号
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		en_tx <= #1  1'd0;
	else if(tx_go)
		en_tx <= #1  1'd1;
	else if(cnt >= 27)//一帧数据发送完成，清零发送使能信号
		en_tx <= #1  1'd0;
	
	//主序列机计数器
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		cnt <= #1  6'd0;
	else if(en_tx)begin
		if(!en_tx_data) 
			cnt <= #1  cnt + 6'd1;
		else	//在发送整个帧中的数据部分时，计数器暂停
			cnt <= #1  cnt;
	end
	else
		cnt <= #1  6'd0;		
	
	//帧中数据发送使能信号
	assign en_tx_data = (cnt == 23) && (data_num > 1);
	
	//待发送数据计数器，每发送一个数据段中的数据，本计数器减1.
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		data_num <= #1  0;
	else if(tx_go)
		data_num <= #1  data_length;
	else if(en_tx_data)
		data_num <= #1  data_num - 1'b1;
	else
		data_num <= #1  data_num;
	
	//序列机部分，根据不同的时刻，切换MII接口数据线上的内容，包含前导码、分隔符、目的地址、源地址、以太网帧类型/长度、数据段数据、结尾CRC校验值
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		gmii_tx_data <= #1  8'd0;
	else begin
		case(cnt)
			1, 2, 3, 4, 5, 6, 7:
				gmii_tx_data <= #1  8'h55;	//前导码
				
			8: gmii_tx_data <= #1  8'hd5;	//分隔符
			
			//目的MAC地址
			9: gmii_tx_data <= #1  r_des_mac[47:40];
			10: gmii_tx_data <= #1  r_des_mac[39:32];
			11: gmii_tx_data <= #1  r_des_mac[31:24];
			12: gmii_tx_data <= #1  r_des_mac[23:16];
			13: gmii_tx_data <= #1  r_des_mac[15:8];
			14: gmii_tx_data <= #1  r_des_mac[7:0];

			//源MAC地址
			15: gmii_tx_data <= #1  src_mac[47:40];
			16: gmii_tx_data <= #1  src_mac[39:32];
			17: gmii_tx_data <= #1  src_mac[31:24];
			18: gmii_tx_data <= #1  src_mac[23:16];
			19: gmii_tx_data <= #1  src_mac[15:8];
			20: gmii_tx_data <= #1  src_mac[7:0];
			
			//以太网帧类型/长度
			21: gmii_tx_data <= #1  r_type_length[15:8];
			22: gmii_tx_data <= #1  r_type_length[7:0];
			
			//发送数据
			23: gmii_tx_data <= #1  fifo_rddata;
			
			//发送CRC 校验结果
			24: gmii_tx_data <= #1  CRC_Result[31:24];
			25: gmii_tx_data <= #1  CRC_Result[23:16];
			26: gmii_tx_data <= #1  CRC_Result[15:8];
			27: gmii_tx_data <= #1  CRC_Result[7:0];
	
			28: gmii_tx_data <= #1  8'd0;
			default: gmii_tx_data <= #1  8'd0;
		endcase
	end
	
	//MII数据发送使能信号
	always@(posedge gmii_tx_clk or negedge rst_n)
	if(!rst_n)
		gmii_tx_en <= #1  1'b0;
	else if((cnt >= 1) && (cnt <= 27))
		gmii_tx_en <= #1  1'b1;
	else
		gmii_tx_en <= #1  1'b0;

endmodule
