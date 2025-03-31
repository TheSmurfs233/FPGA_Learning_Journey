module soc_top(
    input                               clk,
    input                               rst_n,
    output wire [1:0]                   led 
);

wire clk_25m;

clk_wiz_0 clk_wiz_0_instance (
 // Clock out ports
.clk_25m(clk_25m),     // output clk_25m
 // Status and control signals
.resetn(rst_n), // input resetn
// Clock in ports
.clk_in1(clk)
);      // input clk_in1


riscv  riscv_inst (
    .clk(clk_25m),
    .rst_n(rst_n),
    .led(led)
);


endmodule

