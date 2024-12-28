# Module pos

### **link**：[Module pos - HDLBits](https://hdlbits.01xz.net/wiki/Module_pos)

### **intro**：

按位置将 6 个端口连接到您的top模块的端口                                                                                                                                                                                                                                                                                                                                                                                                                                                           

### **code**：

```
module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    mod_a mod_a_ins(out1,out2,a,b,c,d);
endmodule


```

### notes:

### reference：

