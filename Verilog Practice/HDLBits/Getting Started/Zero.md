# Zero

### **link**：[Zero - HDLBits](https://hdlbits.01xz.net/wiki/Zero)

### **intro**：

构建一个没有输入且一个输出常数为 `0` 的 output 的电路。

### **code**：

```
module top_module(
    output zero
);// Module body starts after semicolon
	assign zero=1'b0;
endmodule

```

### notes:

HDLBits 使用 Verilog-2001 ANSI 样式的端口声明语法,它更易于阅读并减少拼写错误。但也可以使用较旧的 Verilog-1995 语法。下面的两个 module 声明是可接受的和等效的：

```
module top_module ( zero );
    output zero;
    // Verilog-1995
endmodule
```

```
module top_module ( output zero ); 

    // Verilog-2001
endmodule
```

### reference：



