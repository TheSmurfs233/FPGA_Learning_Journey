`timescale 1ns / 1ps

module oled_display_testbench;

    // 定义输入和输出信号
    reg sys_clk;
    reg sys_rst_n;
    reg key;
    wire led;
    wire oled_sck;
    wire oled_mosi;
    wire oled_dc;
    wire oled_cs;
    wire oled_rst;

    // 实例化 oled_display 模块
    oled_display oled_display_inst (
       .sys_clk(sys_clk),
       .sys_rst_n(sys_rst_n),
       .key(key),
       .led(led),
       .oled_sck(oled_sck),
       .oled_mosi(oled_mosi),
       .oled_dc(oled_dc),
       .oled_cs(oled_cs),
       .oled_rst(oled_rst)
    );

    // 时钟生成
    always begin
        #10 sys_clk = ~sys_clk; // 50MHz 时钟，周期为 20ns
    end

    // 测试用例逻辑
    initial begin
        // 初始化信号
        sys_clk = 0;
        sys_rst_n = 0;
        key = 0;

        // 复位系统
        #30 sys_rst_n = 1;

        // 等待一段时间
        #200;

        // 模拟按键按下
        key = 1;
        #2000 key = 0;

        // 观察一段时间
        #1000;

        // 检查 led 是否正确翻转
        if (led == 1) begin
            $display("LED is on as expected.");
        end else begin
            $error("LED is not on as expected.");
        end

        // 观察一段时间，检查 OLED 相关信号
        #1000;

        // 可以添加更多的测试逻辑，例如：
        // 检查 oled_dc 是否在预期的时刻切换
        // 检查 oled_mosi 是否正确发送数据
        // 检查 oled_sck 和 oled_cs 的信号行为

        // 结束测试
        $finish;
    end

endmodule