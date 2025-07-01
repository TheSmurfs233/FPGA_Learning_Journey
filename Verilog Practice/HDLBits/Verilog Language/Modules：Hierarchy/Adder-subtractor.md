# Module addsub

### **link**：[Module addsub - HDLBits](https://hdlbits.01xz.net/wiki/Module_addsub)

### **intro**：

构建一个加减法器（adder - subtractor）,需要实例化两个 16 位加法器模块来构建 32 位的加减法器功能。

![image-20250102175501944](asset/image-20250102175501944.png)                                                                                                

### **code**：

```
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout;
	//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    add16 add16_l(a[15:0],b[15:0]^{16{sub}},sub,sum[15:0],cout);
    add16 add16_h(a[31:16],b[31:16]^{16{sub}},cout,sum[31:16],0);
endmodule

```

### notes:

- 加减法器可以通过对加法器的一个输入进行选择性取反来实现，这相当于先对输入取反再加上 1，从而实现两种操作：`a+b+0`（加法操作）和 `a+~b+1`（减法操作，其中`~b`表示`b`的反码）。

### reference：

