# Module name

### **link**：[Module name - HDLBits](https://hdlbits.01xz.net/wiki/Module_name)

### **intro**：

您必须*按名称*将 6 个端口连接到您的 top模块的端口                                                                                                                                                                                                                                                                                                                                                                                                                                   

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
    //module mod_a ( output out1, output out2, input in1, input in2, input in3, input in4);
    mod_a mod_a_ins(
        .out1(out1),
        .out2(out2),
        .in1(a),
        .in2(b),
        .in3(c),
        .in4(d)
    );
endmodule

```

### notes:

### reference：

