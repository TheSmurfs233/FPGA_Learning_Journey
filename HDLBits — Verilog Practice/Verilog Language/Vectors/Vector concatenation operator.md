# Vector3

### **link**：[Vector3 - HDLBits](https://hdlbits.01xz.net/wiki/Vector3)

### **intro**：

给定几个输入向量，将它们连接在一起，然后将它们拆分为几个输出向量。有 6 个 5 位输入向量：a、b、c、d、e 和 f，总共有 30 位输入。有四个 8 位输出向量：w、x、y 和 z，用于 32 位输出。输出应该是输入向量的串联，后跟两个 `1` 位：                                                                                                                                                                                                                                                                                                                                                                                                                                                                   

### **code**：                                                        

```
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    // assign { ... } = { ... };
    assign {w[7:0],x[7:0],y[7:0],z[7:0]}={a[4:0],b[4:0],c[4:0],d[4:0],e[4:0],f[4:0],2'b11};
endmodule

```

### notes:




### reference：

