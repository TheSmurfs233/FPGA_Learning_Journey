# Module fadd

### **link**：[Module fadd - HDLBits](https://hdlbits.01xz.net/wiki/Module_fadd)

### **intro**：

创建一个具有两级层次结构的电路，`top_module`需实例化两个`add16`模块（已提供），每个`add16`模块又需实例化 16 个`add1`模块（需自行编写），从而构建一个 32 位加法器。该 32 位加法器无需处理进位输入（假设为 0）和进位输出（忽略）。

- `add16`模块：具有`input[15:0] a`、`input[15:0] b`、`input cin`、`output[15:0] sum`、`output cout`端口，用于执行 16 位加法。
- `add1`模块：需自行编写，具有`input a`、`input b`、`input cin`、`output sum`、`output cout`端口，用于执行 1 位全加操作，计算`a + b + cin`的和与进位输出。

`add16`模块之间的连接方式如下图所示，一个`add16`模块计算加法结果的低 16 位，另一个计算高 16 位。

![image-20241227115147126](asset/image-20241227115147126.png)                                                                                                

### **code**：

```
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    //module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    wire t;
    add16 add16_l(a[15:0],b[15:0],0,sum[15:0],t);
    add16 add16_h(a[31:16],b[31:16],t,sum[31:16],);
endmodule


module add1 ( input a, input b, input cin,   output sum, output cout );
// Full adder module here
	assign sum=a^b^cin;
    assign cout=a&b|a&cin|b&cin;
endmodule

```

### notes:



### reference：

