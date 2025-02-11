`timescale 1ns/1ps  // 修改时间单位为1ns（更符合常规）
module encode_tb();

// 定义模块接口
reg         sys_clk;    // 25MHz时钟
reg         sys_rst_n;
reg  [7:0]  data_in;
reg         c0;
reg         c1;
reg         de;
wire [9:0]  data_out;

// 生成25MHz时钟（周期40ns）
always #20 sys_clk = ~sys_clk;  // 半周期20ns → 全周期40ns

// 实例化被测模块
encode uut (
  .sys_clk   (sys_clk),
  .sys_rst_n (sys_rst_n),
  .data_in   (data_in),
  .c0        (c0),
  .c1        (c1),
  .de        (de),
  .data_out  (data_out)
);

// 测试主程序
initial begin
  // 初始化信号
  sys_clk = 0;
  sys_rst_n = 0;
  data_in = 8'h00;
  {c0, c1} = 2'b00;
  de = 0;
  
  // 重要：复位时间需覆盖至少两个时钟周期
  #80 sys_rst_n = 1;  // 原#20 → 改为2个时钟周期（2*40ns=80ns）

  //////////////////////////////////////
  // 测试阶段1：控制令牌验证
  //////////////////////////////////////
  $display("\n=== Control Token Test ===");
  
  // 每个测试间隔改为2个时钟周期（80ns）
  test_control(2'b00, 10'b1101010100);  // CTRLTOKEN0
  test_control(2'b01, 10'b0010101011);  // CTRLTOKEN1
  test_control(2'b10, 10'b0101010100);  // CTRLTOKEN2
  test_control(2'b11, 10'b1010101011);  // CTRLTOKEN3

  //////////////////////////////////////
  // 测试阶段2：数据编码验证
  //////////////////////////////////////
  $display("\n=== Data Encode Test ===");
  de = 1;
  
  // 等待时间调整为3个时钟周期（120ns）
  test_data(8'h00, 10'b1101010100);  // 全0数据
  test_data(8'hFF, 10'b0010101011);  // 全1数据
  test_data(8'hAA, 10'b0100110011); // 示例值需替换

  //////////////////////////////////////
  // 测试阶段3：复位功能验证
  //////////////////////////////////////
  $display("\n=== Reset Test ===");
  sys_rst_n = 0;
  #160; // 4个时钟周期
  if(data_out !== 10'h0) begin
    $display("[ERROR] Reset failed");
    $finish;
  end
  
  #400 $display("\n=== ALL TEST PASSED ===");
  $finish;
end

//--------------------------------------------------
// 测试子程序（时序调整）
//--------------------------------------------------

task test_control;
  input [1:0] ctrl;
  input [9:0] expected;
  begin
    {c1, c0} = ctrl;
    #80; // 等待2个完整时钟周期（25MHz → 40ns周期 ×2）
    if(data_out !== expected) begin
      $display("[ERROR] Ctrl %b: OUT=%b, EXP=%b", 
              ctrl, data_out, expected);
      $finish;
    end
    else $display("[PASS] Ctrl %b → %b", ctrl, data_out);
  end
endtask

task test_data;
  input [7:0] data;
  input [9:0] expected;
  begin
    data_in = data;
    #120; // 等待3个时钟周期（考虑编码模块流水线延迟）
    
    if(data_out !== expected) begin
      $display("[ERROR] Data 0x%h: OUT=%b, EXP=%b",
              data, data_out, expected);
      $finish;
    end
    else $display("[PASS] Data 0x%h → %b", data, data_out);
  end
endtask

endmodule