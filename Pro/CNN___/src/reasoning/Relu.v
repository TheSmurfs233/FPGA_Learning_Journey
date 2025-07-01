module Relu(
    input   wire [15:0] data_in,
    input   wire        data_in_valid,
    output  wire [15:0] data_out,
    output  wire        data_out_valid
);

assign data_out = (data_in[15] == 1'b0)? data_in : 0;
assign data_out_valid = data_in_valid;

endmodule