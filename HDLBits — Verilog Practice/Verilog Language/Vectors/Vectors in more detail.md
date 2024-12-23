# Vector1

### **link**：[Vector1 - HDLBits](https://hdlbits.01xz.net/wiki/Vector1)

### **intro**：

构建一个组合电路，将输入半字（16 位，[15：0]）拆分为较低的 [7：0] 和较高的 [15：8] 字节。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             

### **code**：                                                        

```
`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_hi=in[15:8];
    assign out_lo=in[7:0];
endmodule

```

### notes:

1. 向量必须被声明 `type [upper:lower] vector_name`;

2. - 例如

     ```
     wire [7:0] w;         // 8-bit wire
     reg  [4:1] x;         // 4-bit reg
     output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)
     input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)
     output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.
     wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.
     ```

3. 隐式网络（Implicit Net）

   - **规则**：当在 Verilog 代码中使用一个未声明的标识符作为连线（wire）类型的信号时，编译器会自动创建一个隐式网络。这种隐式声明的网络默认是`wire`类型，除非通过`default_nettype`编译指令进行了修改。

   - **示例：**以下代码中，`a`和`b`是显式声明的`wire`类型信号，而`c`没有显式声明，它将被隐式声明为`wire`类型。

     ```
     module implicit_net_example;
         wire a, b;
         assign c = a & b;
     endmodule
     ```

   - **特点：**隐式网络的宽度默认为 1 位。

   - **`default_nettype`编译指令：**`default_nettype`编译指令用于设置默认的网络类型，当没有显式声明网络类型时，编译器将使用`default_nettype`指定的类型来创建隐式网络。

   - **示例：**以下代码将默认网络类型设置为`tri`（三态线），因此未声明的`d`将被隐式声明为`tri`类型。

     ```
     `default_nettype tri
     
     module implicit_net_example;
         wire a, b;
         assign d = a & b;
     endmodule
     ```

4. **解压缩数组（Unpacked Array）与打包数组（Packed Array）**

   ```
   reg [7:0] mem [255:0];   // 256 unpacked elements, each of which is a 8-bit packed vector of reg.
   reg mem2 [28:0];         // 29 unpacked elements, each of which is a 1-bit reg.
   ```


### reference：

