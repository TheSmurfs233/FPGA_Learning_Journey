module par2ser (
    input               clk_5x    ,
    input   [9:0]       par_data  ,

    output              ser_data_p,
    output              ser_data_n
);
//parameter define

//wire define
wire [4:0]  data_rise = {par_data[8],par_data[6],par_data[4],par_data[2],par_data[0]};
wire [4:0]  data_fall = {par_data[9],par_data[7],par_data[5],par_data[3],par_data[1]};
wire        Q;
//reg define
reg [4:0] data_rise_s = 0;
reg [4:0] data_fall_s = 0;
reg [2:0] cnt         = 0;

//instance define

always @(posedge clk_5x ) begin
    cnt <= (cnt[2] == 1'b1) ? 3'd0 : cnt + 1'b1;
    data_rise_s <= (cnt[2] == 1'b1) ? data_rise : {1'b0,data_rise_s[4:1]};
    data_fall_s <= (cnt[2] == 1'b1) ? data_fall : {1'b0,data_fall_s[4:1]};
end

ODDR #(
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_inst (
      .Q(Q),   // 1-bit DDR output
      .C(clk_5x),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(data_rise_s[0]), // 1-bit data input (positive edge)
      .D2(data_fall_s[0]), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

OBUFDS #(
      .IOSTANDARD("TMDS_33"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst (
      .O(ser_data_p),     // Diff_p output (connect directly to top-level port)
      .OB(ser_data_n),   // Diff_n output (connect directly to top-level port)
      .I(Q)      // Buffer input
   );

   
endmodule

