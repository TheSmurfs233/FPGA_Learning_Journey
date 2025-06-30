module checksum
(
	input [3:0]ver,	//版本
	input [3:0]hdr_len,//首部长度
	input [7:0]tos,	//服务类型
	input [15:0]total_len,	//IP报文总长
	input [15:0]id,	//分段标识
	input [15:0]offset,	//偏移
	input [7:0]ttl,	//生存周期
	input [7:0]protocol, //上层协议类型
	input [31:0]src_ip,	//源IP地址
	input [31:0]dst_ip,	//目的IP地址
	
	output [15:0]checksum_result //校验和
);

	
    wire [31:0]suma,sumb;

    assign suma = {ver,hdr_len,tos} + total_len + id 
                        + offset + {ttl,protocol} + src_ip[31:16]
                        + src_ip[15:0] + dst_ip[31:16] + dst_ip[15:0];
    
    assign sumb = (suma[31:16] + suma[15:0]);
    
    assign checksum_result = sumb[31:16]? 
                            ~(sumb[31:16] + sumb[15:0]):
                            ~sumb[15:0];

endmodule
