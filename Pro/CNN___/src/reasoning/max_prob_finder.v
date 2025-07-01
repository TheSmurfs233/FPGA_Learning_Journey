module max_prob_finder (
    input      wire        clk,        // 时钟
    input      wire        rst_n,      // 异步复位（低有效）
    input      wire [7:0]  data_in,    // 概率输入数据
    input      wire        valid,      // 数据有效信号
    output     reg  [3:0]  max_index,  // 最大概率索引输出
    output     reg         valid_out   // 结果有效信号
);

// 内部寄存器
reg [3:0]  counter;       // 数据位置计数器（0-9）
reg [7:0]  current_max;   // 当前最大值存储
reg [3:0]  current_index; // 当前最大索引

// 主状态控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        // 异步复位初始化
        counter      <= 4'd0;
        current_max  <= 8'h00;
        current_index<= 4'd0;
        max_index    <= 4'd0;
        valid_out    <= 1'b0;
    end else begin
        valid_out <= 1'b0;  // 默认输出无效
        
        if (valid) begin
            if (counter < 4'd9) begin
                // 数据比较阶段
                if (data_in > current_max) begin
                    current_max  <= data_in;
                    current_index<= counter;
                end
                counter <= counter + 1;
            end else begin
                // 最终数据处理
                if (data_in > current_max) begin
                    current_max  <= data_in;
                    current_index<= counter;
                end
                
                // 输出结果
                max_index  <= current_index;
                valid_out  <= 1'b1;
                
                // 重置状态
                counter     <= 4'd0;
                current_max <= 8'h00;
                current_index<=4'd0;
            end
        end else begin
            // 无效时保持状态
            counter     <= 4'd0;
            current_max <= 8'h00;
            current_index<=4'd0;
        end
    end
end

endmodule