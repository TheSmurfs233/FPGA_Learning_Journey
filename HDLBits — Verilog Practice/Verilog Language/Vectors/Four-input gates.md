# Gates4

### **link**：[Gates4 - HDLBits](https://hdlbits.01xz.net/wiki/Gates4)

### **intro**：

构建一个具有四个输入的组合电路，`in[3：0]。`

有 3 个输出：

- out_and：4 输入 AND 门的输出。
- out_or：4 输入 OR 门的输出。
- out_xor：4 输入 XOR 门的输出。                                                                                                                                                                                                                                                                                                                                                                                                                                                                       

### **code**：                                                        

```
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
	assign out_and = & in;
    assign out_or = | in;
    assign out_xor = ^ in;
endmodule

```

### notes:

1. **按位与运算符的简化写法**

   - **语法格式**：`& signal`，其中`signal`是一个多位信号。

   - **运算规则**：对`signal`的每一位进行与运算，等价于`signal[n] & signal[n-1] &... & signal[0]`，其中`n`为信号的最高位索引。只有当所有位都是 1 时，结果才为 1，只要有一位是 0，结果就是 0。

   - **应用场景**：常用于判断多个条件是否同时满足，例如在总线仲裁逻辑中，用于判断多个设备的请求信号是否都为低电平（表示没有设备请求总线）。

2. **按位或运算符`|`的简化写法**

   - **语法格式**：`| signal`，`signal`为多位信号。

   - **运算规则**：对`signal`的每一位进行或运算，等同于`signal[n] | signal[n-1] |... | signal[0]`。只要`signal`的各位中有一位是 1，最终的结果就是 1；只有当所有位都是 0 时，结果才为 0。

   - **应用场景**：可用于检测多个信号中是否有任何一个为有效信号，比如在中断检测逻辑中，用于判断多个中断源是否有任何一个产生了中断请求。

3. **按位异或运算符`^`的简化写法**
   ......


### reference：

