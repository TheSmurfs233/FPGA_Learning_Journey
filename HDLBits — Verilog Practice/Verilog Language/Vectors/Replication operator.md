# Vector5

### **link**：[Vector5 - HDLBits](https://hdlbits.01xz.net/wiki/Vector5)

### **intro**：

给定 5 个 1 位信号（a、b、c、d 和 e），计算 25 位输出向量中的所有 25 个成对 1 位比较。如果比较的两个位相等，则输出应为 1。

```
out[24] = ~a ^ a;   // a == a, so out[24] is always 1.
out[23] = ~a ^ b;
out[22] = ~a ^ c;
...
out[ 1] = ~e ^ d;
out[ 0] = ~e ^ e;
```

​          ![img](asset/Vector5.png)                     

如图所示，使用 **复制运算符** 和 **连接运算符** 可以更轻松地完成此操作。

- 顶部向量是每个输入的 5 次重复的串联
- 底部向量是 5 个输入的串联的 5 次重复

​                                                                                                                                                                                                                                                                                                                                                                  

### **code**：                                                        

```
module top_module (
	input a, b, c, d, e,
	output [24:0] out
);

	wire [24:0] top, bottom;
	assign top    = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
	assign bottom = {5{a,b,c,d,e}};
	assign out = ~top ^ bottom;	// Bitwise XNOR

	// This could be done on one line:
	// assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ {5{a,b,c,d,e}};
	
endmodule

```

### notes:




### reference：

