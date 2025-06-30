
module rgmii_to_gmii(
    input         rst_n,

    //rgmii接口
    input         rgmii_rx_clk,
    input  [3:0]  rgmii_rx_data,
    input         rgmii_rx_dv,

    //gmii接口
    output        gmii_rx_clk,
    output [7:0]  gmii_rx_data,
    output        gmii_rx_dv,
    output        gmii_rx_er
);


  wire          gmii_rx_er_r;
  

  assign gmii_rx_clk = rgmii_rx_clk;

  genvar i;
  generate
    for(i=0;i<4;i=i+1)
    begin: rgmii_rx_data_i
      IDDR #(
        .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                              // or "SAME_EDGE_PIPELINED" 
        .INIT_Q1(1'b0   ),  // Initial value of Q1: 1'b0 or 1'b1
        .INIT_Q2(1'b0   ),  // Initial value of Q2: 1'b0 or 1'b1
        .SRTYPE ("SYNC" )   // Set/Reset type: "SYNC" or "ASYNC" 
      ) IDDR_rxd (
        .Q1   (gmii_rx_data[i]   ), // 1-bit output for positive edge of clock
        .Q2   (gmii_rx_data[i+4] ), // 1-bit output for negative edge of clock
        .C    (rgmii_rx_clk  ), // 1-bit clock input
        .CE   (1'b1          ), // 1-breset_nit clock enable input
        .D    (rgmii_rx_data[i]  ), // 1-bit DDR data input
        .R    (~rst_n       ), // 1-bit reset
        .S    (1'b0          )  // 1-bit set
      );
    end
  endgenerate

  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                          // or "SAME_EDGE_PIPELINED" 
    .INIT_Q1(1'b0   ),  // Initial value of Q1: 1'b0 or 1'b1
    .INIT_Q2(1'b0   ),  // Initial value of Q2: 1'b0 or 1'b1
    .SRTYPE ("SYNC" )   // Set/Reset type: "SYNC" or "ASYNC" 
  ) IDDR_rxdv (
    .Q1   (gmii_rx_dv), // 1-bit output for positive edge of clock
    .Q2   (gmii_rx_er_r), // 1-bit output for negative edge of clock
    .C    (rgmii_rx_clk ), // 1-bit clock input
    .CE   (1'b1         ), // 1-breset_nit clock enable input
    .D    (rgmii_rx_dv   ), // 1-bit DDR data input
    .R    (~rst_n     ), // 1-bit reset
    .S    (1'b0         )  // 1-bit set
  );

    assign gmii_rx_er = gmii_rx_er_r^gmii_rx_dv;
endmodule