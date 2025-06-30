module seg_key_top(
    input  wire        clk,          // 系统时钟（如50MHz）
    input  wire        rst_n,        // 异步复位（低有效）
    input  wire [1:0]  key,        // 按键输入
    output wire [19:0] num_out,

    // 数码管硬件接口
    output wire [5:0]  seg_sel_n,    // 位选信号（低有效）
    output wire [7:0]  seg_data      // 段选信号（共阳极）
);


reg [19:0] num; // 要显示的数字
wire [1:0] key_out; // 按键输出

assign num_out = num;

seg_led  seg_led_inst (
    .clk(clk),
    .rst_n(rst_n),
    .num(num),
    .seg_sel_n(seg_sel_n),
    .seg_data(seg_data)
);

key_debounce  key_debounce_inst1 (
    .sys_clk(clk),
    .rst_n(rst_n),
    .key_in(key[0]),
    .key_out(key_out[0])
);

key_debounce  key_debounce_inst2 (
    .sys_clk(clk),
    .rst_n(rst_n),
    .key_in(key[1]),
    .key_out(key_out[1])
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        num <= 20'd127;
    end 
    else if (key_out[0] == 1'b1) begin
        if (num >= 20'd255) begin
            num <= 20'd255;
        end
        else begin
            num <= num + 20'd4; // 每次按键增加4
        end
    end
    else if(key_out[1] == 1'b1) begin
        if (num <= 20'd0) begin
            num <= 20'd0;
        end
        else begin
            num <= num - 20'd4; // 每次按键减少4
        end
    end
    else begin
        num <= num; // 保持不变
    end
end


endmodule