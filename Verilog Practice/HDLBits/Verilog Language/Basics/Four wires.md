# Wire4

### **link**：[Wire4 - HDLBits](https://hdlbits.01xz.net/wiki/Wire4)

### **intro**：

创建一个具有 3 个输入和 4 个输出的模块，其行为类似于进行以下连接的电线：

a ->  w
b ->  x
b ->  y
c ->  z

### **code**：

```
module top_module( 
    input a,b,c,
    output w,x,y,z );
	assign w=a;
    assign x=b;
    assign y=b;
    assign z=c;
endmodule
```

### notes:

- 当有多个 `assign` 语句时，它们在代码中的显示**顺序**无关紧要。与编程语言不同，`赋值`语句（“连续赋值”）描述事物之间的*连接*，而不是将值从一个事物复制到另一个事物*的操作*。


### reference：



