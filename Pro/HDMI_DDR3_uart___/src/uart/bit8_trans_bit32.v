module bit8_to_bit32 (
    input               sys_clk,
    input               sys_rst_n,
    input               bit8_in_valid,
    input  [7:0]        bit8_in,
    output reg          bit32_out_valid,
    output reg [31:0]   bit32_out
);

reg  [1:0]  cnt;         // 计数器（0~2计数）
reg  [23:0] temp_data;   // 临时数据寄存器

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        cnt             <= 2'b00;
        temp_data       <= 24'h0;
        bit32_out_valid <= 1'b0;
        bit32_out       <= 32'h0;
    end
    else begin
        bit32_out_valid <= 1'b0;  // 默认无效
        
        if (bit8_in_valid) begin  // 有效数据输入
            case (cnt)
                2'd0: begin      // 第1个字节
                    temp_data[23:16] <= bit8_in;
                    cnt <= 2'd1;
                end
                2'd1: begin     // 第2个字节
                    temp_data[15:8] <= bit8_in;
                    cnt <= 2'd2;
                end
                2'd2: begin     // 第3个字节
                    // 拼接并扩展为32位，高位补0
                    bit32_out       <= {8'h00, temp_data[23:16], temp_data[15:8], bit8_in};
                    bit32_out_valid <= 1'b1;  // 输出有效信号
                    temp_data[7:0]  <= bit8_in; // 更新临时寄存器（可选）
                    cnt <= 2'd0;              // 重置计数器
                end
                default: cnt <= 2'd0;
            endcase
        end
        else begin  // 无效输入时重置计数器
            if (cnt != 2'd0) begin
                cnt       <= cnt;
                temp_data <= temp_data;
            end
        end
    end
end

endmodule
