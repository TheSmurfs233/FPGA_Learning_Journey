module checksum
(
	input [3:0]ver,	//�汾
	input [3:0]hdr_len,//�ײ�����
	input [7:0]tos,	//��������
	input [15:0]total_len,	//IP�����ܳ�
	input [15:0]id,	//�ֶα�ʶ
	input [15:0]offset,	//ƫ��
	input [7:0]ttl,	//��������
	input [7:0]protocol, //�ϲ�Э������
	input [31:0]src_ip,	//ԴIP��ַ
	input [31:0]dst_ip,	//Ŀ��IP��ַ
	
	output [15:0]checksum_result //У���
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
