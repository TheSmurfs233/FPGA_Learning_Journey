# Norgate

### **link**：[Xnorgate - HDLBits](https://hdlbits.01xz.net/wiki/Xnorgate)

### **intro**：

创建一个实现 XNOR 门（同或门）的模块。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      

### **code**：                                                        

```
module top_module( 
    input a, 
    input b, 
    output out );
	assign out = a ~^ b;
endmodule
```

### notes:

**逻辑门图解**

- **与门 AND  &**  
- **或门 OR  |**
- **非门 NOT  ~**

![img](asset/v2-7286e1c81a80e4727042fe89d9178bc2_1440w.jpg)

- **与非门 NAND  **

- **或非门 NOR**

  ![img](asset/v2-d2d04b751590cfe45c826f4cb5dee9ce_1440w.jpg)

- **异或门 XOR   ^**

- **同或门 XNOR  ~^**

  ![img](asset/v2-da8679f7d01afe9d577fd503186fb5b9_1440w.jpg)


### reference：

[Logic gate | Wikitronics | Fandom](https://electronics.fandom.com/wiki/Logic_gate)
