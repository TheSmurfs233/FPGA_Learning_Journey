`timescale 1ns/1ns

module checksum_tb;

	reg [3:0]ver;
	reg [3:0]hdr_len;
	reg [7:0]tos;
	reg [15:0]total_len;
	reg [15:0]id;
	reg [15:0]offset;
	reg [7:0]ttl;
	reg [7:0]protocol;
	reg [31:0]src_ip;
	reg [31:0]dst_ip;
	
	wire [15:0]checksum_result;

	checksum checksum
	(
		.ver(ver),
		.hdr_len(hdr_len),
		.tos(tos),
		.total_len(total_len),
		.id(id),
		.offset(offset),
		.ttl(ttl),
		.protocol(protocol),
		.src_ip(src_ip),
		.dst_ip(dst_ip),
		.checksum_result(checksum_result)
	);
	
	initial begin
		ver = 0;
		hdr_len = 0;
		tos = 0;
		total_len = 0;
		id = 0;
		offset = 0;
		ttl = 0;
		protocol = 0;
		src_ip = 0;
		dst_ip = 0;
		#200;
		
		ver = 4'h4;
		hdr_len = 4'h5;
		tos = 8'h0;
		total_len = 16'h0032;
		id = 16'h0000;
		offset = 16'h0000;
		ttl = 8'h40;
		protocol = 8'h11;
		src_ip = 32'hc0a80002;
		dst_ip = 32'hc0a80003;
		#300;
	
		ver = 4'h4;
		hdr_len = 4'h5;
		tos = 8'h0;
		total_len = 16'h0032;
		id = 16'h0000;
		offset = 16'h0000;
		ttl = 8'h40;
		protocol = 8'h11;
		src_ip = 32'hc0a80005;
		dst_ip = 32'hc0a80008;
		#300;
		
		ver = 4'h4;
		hdr_len = 4'h5;
		tos = 8'h0;
		total_len = 16'h0032;
		id = 16'h0000;
		offset = 16'h0000;
		ttl = 8'h40;
		protocol = 8'h11;
		src_ip = 32'hc0a80105;
		dst_ip = 32'hc0a80108;
		#300;	
		$stop;
	end
	
endmodule
