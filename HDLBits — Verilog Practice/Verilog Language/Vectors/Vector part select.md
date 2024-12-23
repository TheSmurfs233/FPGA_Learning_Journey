# Vector2

### **link**：[Vector2 - HDLBits](https://hdlbits.01xz.net/wiki/Vector2)

### **intro**：

一个 32 位向量可以看作是包含 4 个字节（位 [31：24]、[23：16] 等）。构建一个 circuit 来反转 4 字节字的字节顺序。

```
AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa
```

### **code**：                                                        

```
module top_module( 
    input [31:0] in,
    output [31:0] out );//

    // assign out[31:24] = ...;
    assign out[31:24] = in [7:0];
    assign out[23:16] = in [15:8];
    assign out[15:8] = in [23:16];
    assign out[7:0] = in [31:24];
endmodule
```

### notes:


### reference：

