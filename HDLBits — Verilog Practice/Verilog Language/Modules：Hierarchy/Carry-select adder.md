# Module cseladd

### **link**：[Module cseladd - HDLBits](https://hdlbits.01xz.net/wiki/Module_cseladd)

### **intro**：

在`top_module`中实例化三个`add16`模块和一个 16 位的 2 选 1 多路复用器，以构建 32 位的进位选择加法器。使用三个`add16`模块分别计算低 16 位、高 16 位进位为 0 和高 16 位进位为 1 的情况，然后根据低 16 位的进位输出选择高 16 位的正确结果。

![image-20250102172829550](asset/image-20250102172829550.png)                                                                                                

### **code**：

```
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);	
    wire cout_l,cout_h0,cout_h1;
    wire [15:0] t0,t1;
	//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    add16 add16_l(a[15:0],b[15:0],0,sum[15:0],cout_l);
    add16 add16_h1(a[31:16],b[31:16],1,t1,cout_h1);
    add16 add16_h0(a[31:16],b[31:16],0,t0,cout_h0);
    //always@(*)begin
    //    if(cout_l)
    //        sum[31:16]=t1;
    //    else
    //        sum[31:16]=t0;
    //end
    assign sum[31:16]=cout_l?t1:t0;
endmodule

```

### notes:

- **模块实例化的规则与限制**
  在硬件描述语言（如 Verilog）中，模块实例化是将一个已定义的模块在当前模块中创建一个实例的过程。**模块实例化必须在模块的顶层进行**，而不能在always块内。这是由**硬件结构的静态性**和**信号连接与驱动的一致性**决定的。
  - 硬件电路一旦设计完成并实现（例如在 FPGA 或 ASIC 中），其结构是固定不变的。
  - 模块的输入和输出端口需要与其他信号正确连接，这些连接关系在模块实例化时确定，并且在整个电路运行过程中保持不变。在顶层进行实例化可以确保这些连接是静态的、可预测的。
- **`assign`语句的本质和用途**
  - `assign`语句用于进行**连续赋值**。它主要用于**描述组合逻辑电路**，这些电路的输出会随着输入的变化而立即变化，没有任何延迟（在理想情况下）。例如，简单的逻辑门（与门、或门等）和算术运算（加法、减法等）组合形成的组合逻辑可以用`assign`语句来描述。
  - 当使用`assign`语句时，它会创建一个隐含的组合逻辑电路来实现赋值操作。例如，`assign y = a & b;`会创建一个与门电路，其中`a`和`b`是输入，`y`是输出。这个电路会实时地根据`a`和`b`的变化来更新`y`的值。
- **`always`块的性质和作用**
  - `always`块是一个**过程块**，用于**描述时序逻辑或带有条件判断的组合逻辑**。它可以由时钟信号触发（例如在同步电路设计中），也可以由敏感信号列表中的信号变化触发（用于实现异步电路部分）。
  - 在`always`块内部，代码的执行是按照顺序进行的，类似于软件中的程序语句执行顺序。这与`assign`语句所代表的组合逻辑的并行、实时更新的特性不同。

### reference：

