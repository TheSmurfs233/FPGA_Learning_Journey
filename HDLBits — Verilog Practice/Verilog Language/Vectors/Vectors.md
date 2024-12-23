# Vector0

### **link**：[Vector0 - HDLBits](https://hdlbits.01xz.net/wiki/Vector0)

### **intro**：

构建一个具有一个 3 位输入的电路，然后输出相同的向量，并将其拆分为三个单独的 1 位输出。将 output 连接到输入向量的位置 0、位置 1 等。![img](asset/Vector0.png)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             

### **code**：                                                        

```
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];
    assign outv=vec;
endmodule

```

### notes:

- 向量的*声明*将维度放在向量名称*之前*，这与 C 语法相比是不常见的。


### reference：

