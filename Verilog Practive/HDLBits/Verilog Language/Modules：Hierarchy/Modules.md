# Module

### **link**：[Module - HDLBits](https://hdlbits.01xz.net/wiki/Module)

### **intro**：

创建一个 *module 实例，*然后将模块的三个引脚 连接到顶层模块的三个端口。                                                                                                                                                                                                                                                                                                                                                                                                                                                             

### **code**：

```
module top_module ( input a, input b, output out );
    //mod_a mod_a_ins(a,b,out);
    mod_a mod_a_ins(.in1(a),.in2(b),.out(out));
endmodule


```

### notes:

##### **将信号连接到模块端口**

将电线连接到端口有两种常用的方法：按位置或按名称。

- **按位置**
  实例化 module 时，ports 根据 module 的声明从左到右连接。例如：

  ```
  mod_a instance1 ( wa, wb, wc );
  ```

  这将实例化一个类型的模块，并为其提供*实例名称* “instance1”，然后将 signal （在新模块之外） 连接到新模块**的第一个端口 （） 、第二个端口 （） 和第三个端口 （）** 。这种语法的一个缺点是，如果模块的端口列表发生变化，则还需要找到并更改模块的所有实例以匹配新模块。

- **按名称**

  **按名称***将信号连接到模块的端口，即使端口列表发生变化，电线也可以保持正确连接。但是，此语法更详细。

  ```
  mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) );
  ```

  上面的代码行实例化一个名为 “instance2” 的模块，然后将 signal（在模块外部）连接到**名为** out的端口，连接到**名为** in1的端口，以及**名为** in2的端口。请注意 ports 的 Sequences 在这里是无关紧要的，因为无论它在子模块的 port 列表中的位置如何，都将连接到正确的名称。另请注意此语法中端口名称前面的句点。

### reference：

