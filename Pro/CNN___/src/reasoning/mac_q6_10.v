// Multiply-accumulate unit for Q6.10 format
module mac_q6_10(
    input  wire clk,
    input  wire mac_en,
    input  wire [15:0] A,
    input  wire [15:0] B,
    output reg  [15:0] res_q6_10
);
wire [31:0] P;
wire [21:0] mul_res_q6_10;
mult mult_inst_0 (
  // .CLK(clk),  // input wire CLK
  .A(A),      // input wire [15 : 0] A
  .B(B),      // input wire [15 : 0] B
  .P(P)      // output wire [31 : 0] P
);
assign mul_res_q6_10 = P>>>10;

always @(posedge clk) begin
    if (mac_en) begin
        res_q6_10 <= res_q6_10 + $signed(mul_res_q6_10);
    end
    else begin
        res_q6_10 <= 16'h0;
    end
end

endmodule