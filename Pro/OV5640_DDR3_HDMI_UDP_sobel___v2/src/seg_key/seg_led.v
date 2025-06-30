module seg_led (
    input  wire        clk,          // 系统时钟（如50MHz）
    input  wire        rst_n,        // 异步复位（低有效）
    input  wire [19:0] num,          // 要显示的数字
    
    // 数码管硬件接口
    output reg  [5:0]  seg_sel_n,    // 位选信号（低有效）
    output wire [7:0]  seg_data      // 段选信号（共阳极）
);

// ---- 寄存器定义 ----
reg [3:0] seg_digits [5:0];  // 存储6位BCD数字（十万位到个位）

// ---- 动态扫描参数 ----
localparam SCAN_FREQ  = 1000;        // 扫描频率1kHz
localparam CLK_FREQ   = 50_000_000;  // 系统时钟50MHz
localparam SCAN_CYCLES = CLK_FREQ / (SCAN_FREQ * 6); // 每个数码管显示周期

reg [31:0] scan_counter;       // 扫描计数器
reg [2:0]  scan_index;         // 当前扫描索引（0~5）

// ---- 段选译码表（共阳数码管）----
reg [7:0] seg_decoder [0:15];  // 0~F的段码（含小数点）
initial begin
    seg_decoder[0]  = 8'hC0; // 0
    seg_decoder[1]  = 8'hF9; // 1
    seg_decoder[2]  = 8'hA4; // 2
    seg_decoder[3]  = 8'hB0; // 3
    seg_decoder[4]  = 8'h99; // 4
    seg_decoder[5]  = 8'h92; // 5
    seg_decoder[6]  = 8'h82; // 6
    seg_decoder[7]  = 8'hF8; // 7
    seg_decoder[8]  = 8'h80; // 8
    seg_decoder[9]  = 8'h90; // 9
    seg_decoder[10] = 8'h88; // A
    seg_decoder[11] = 8'h83; // B
    seg_decoder[12] = 8'hC6; // C
    seg_decoder[13] = 8'hA1; // D
    seg_decoder[14] = 8'h86; // E
    seg_decoder[15] = 8'h8E; // F
end
wire [23:0] bcd; // BCD码

// ---- 二进制码转BCD码 ----
bin_2_bcd # (
    .W(20)
)
bin_2_bcd_inst (
  .bin(num),
  .bcd(bcd)
);

always @(*) begin
    seg_digits[0] = bcd[3:0];   // 个位
    seg_digits[1] = bcd[7:4];   // 十位
    seg_digits[2] = bcd[11:8];  // 百位
    seg_digits[3] = bcd[15:12]; // 千位
    seg_digits[4] = bcd[19:16]; // 万位
    seg_digits[5] = bcd[23:20]; // 十万位
end

// ---- 动态扫描逻辑 ----
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        scan_counter <= 0;
        scan_index   <= 0;
        seg_sel_n    <= 6'b111111;
    end else begin
        if (scan_counter >= SCAN_CYCLES - 1) begin
            scan_counter <= 0;
            seg_sel_n <= 6'b111111;  // 关闭所有数码管
            scan_index <= (scan_index == 5) ? 0 : scan_index + 1;
        end else begin
            scan_counter <= scan_counter + 1;
            seg_sel_n <= ~(6'b000001 << scan_index); // 动态扫描
        end
    end
end

// ---- 段选输出逻辑 ----
assign seg_data = seg_decoder[seg_digits[scan_index]];

endmodule