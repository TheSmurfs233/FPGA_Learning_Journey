# Wire

### **link**：[wire - HDLBits](https://hdlbits.01xz.net/wiki/Wire)

### **intro**：

创建一个具有一个 input 和一个 output 的模块，其行为类似于一条线。

### **code**：

```
module top_module( input in, output out );
	
	assign out = in;
	// Note that wires are directional, so "assign in = out" is not equivalent.
	
endmodule
```

### notes:

- verilog 中的wire 是有方向的，右侧的信号值被驱动到左侧的导线上,赋值是 “连续” 的。

- 在 Verilog 中，除了连续赋值（如 assign 语句用于组合逻辑的连续赋值）之外，还有三种常用于 procedural blocks（过程块）的赋值类型，其中两种是可综合的：

  1. **阻塞赋值（Blocking Assignment）**：使用 = 符号。在一个过程块内，阻塞赋值语句按照顺序依次执行，**即下一条语句必须等到当前阻塞赋值语句执行完成后才会开始执行**。它常用于对临时变量赋值、实现简单的组合逻辑在过程块内的描述等场景。例如：

     ```
     always @(*) begin
         a = b & c;  // 这里先计算 b & c 的值，然后将结果赋值给 a，后续语句需等待此赋值完成
         d = a + 1;  // 要等上一行 a 赋值结束，才会用新的 a 值参与计算并赋值给 d
     end
     ```

     **阻塞赋值是可综合的**，能将其综合成相应的硬件电路，比如上述代码可能综合成由与门和加法器组成的组合逻辑电路。

  2. **非阻塞赋值（Non-Blocking Assignment）**：使用 <= 符号。在过程块内，非阻塞赋值语句会同时启动所有被触发的赋值操作，它们不会相互阻塞，而是各自独立地按照时钟边沿触发的顺序，在当前时钟周期结束时更新目标寄存器的值。**常用于描述时序逻辑电路**，以避免因赋值顺序导致的竞争冒险等问题。例如：

     ```
     always @(posedge clk) begin
         reg_a <= in_a;  // 在时钟上升沿触发时，reg_a 被安排在当前时钟周期结束时更新为 in_a 的值
         reg_b <= reg_a;  // 同样，reg_b 也被安排在当前时钟周期结束时更新为 reg_a 当前的值（不是更新后的 reg_a 值，避免了错误的时序依赖）
     end
     ```

     **非阻塞赋值也是可综合的**，它是实现时序逻辑如寄存器、移位寄存器等硬件电路的关键赋值方式，确保了硬件电路在时钟驱动下正确地同步更新状态。

  3. **过程连续赋值（Procedural Continuous Assignment）**：有两种形式，即 assign 和 deassign 配合使用，以及 force 和 release 配合使用。过程连续赋值主要用于在仿真过程中对信号进行动态的强制赋值，以便调试、测试某些特殊的电路行为。它一般**不可综合**，因为其行为不符合硬件实现的常规逻辑。例如：

     ```
     initial begin
         assign a = 5;  // 在仿真初始阶段，强制将 a 的值设为 5
         #10 deassign a;  // 10 个时间单位后，解除对 a 的强制赋值，让 a 恢复正常驱动
     end
     ```

     这种赋值方式在实际硬件综合时没有对应的直接实现方式，只是在仿真验证环节为工程师提供灵活的调试手段。

  综上，阻塞赋值和非阻塞赋值是 Verilog 中用于 procedural blocks 且可综合的两种重要赋值类型，它们在不同的逻辑电路设计场景下发挥关键作用，理解并正确运用它们是 Verilog 编程的基础。

### reference：



