`timescale 1 ps / 1ps

module encode (
  input            sys_clk,    // pixel clock input
  input            sys_rst_n,    // async. reset input (active high)
  input      [7:0] data_in,      // data inputs: expect registered
  input            c0,       // c0 input
  input            c1,       // c1 input
  input            de,       // de input
  output reg [9:0] data_out      // data outputs
);

  ////////////////////////////////////////////////////////////
  // Counting number of 1s and 0s for each incoming pixel
  // component. Pipe line the result.
  // Register Data Input so it matches the pipe lined adder
  // output
  ////////////////////////////////////////////////////////////
  reg [3:0] n1d; //number of 1s in data_in
  reg [7:0] data_in_q;

  always @ (posedge sys_clk) begin
    n1d <=#1 data_in[0] + data_in[1] + data_in[2] + data_in[3] + data_in[4] + data_in[5] + data_in[6] + data_in[7];

    data_in_q <=#1 data_in;
  end

  ///////////////////////////////////////////////////////
  // Stage 1: 8 bit -> 9 bit
  // Refer to DVI 1.0 Specification, page 29, Figure 3-5
  ///////////////////////////////////////////////////////
  wire decision1;

  assign decision1 = (n1d > 4'h4) | ((n1d == 4'h4) & (data_in_q[0] == 1'b0));
/*
  reg [8:0] q_m;
  always @ (posedge sys_clk) begin
    q_m[0] <=#1 data_in_q[0];
    q_m[1] <=#1 (decision1) ? (q_m[0] ^~ data_in_q[1]) : (q_m[0] ^ data_in_q[1]);
    q_m[2] <=#1 (decision1) ? (q_m[1] ^~ data_in_q[2]) : (q_m[1] ^ data_in_q[2]);
    q_m[3] <=#1 (decision1) ? (q_m[2] ^~ data_in_q[3]) : (q_m[2] ^ data_in_q[3]);
    q_m[4] <=#1 (decision1) ? (q_m[3] ^~ data_in_q[4]) : (q_m[3] ^ data_in_q[4]);
    q_m[5] <=#1 (decision1) ? (q_m[4] ^~ data_in_q[5]) : (q_m[4] ^ data_in_q[5]);
    q_m[6] <=#1 (decision1) ? (q_m[5] ^~ data_in_q[6]) : (q_m[5] ^ data_in_q[6]);
    q_m[7] <=#1 (decision1) ? (q_m[6] ^~ data_in_q[7]) : (q_m[6] ^ data_in_q[7]);
    q_m[8] <=#1 (decision1) ? 1'b0 : 1'b1;
  end
*/
  wire [8:0] q_m;
  assign q_m[0] = data_in_q[0];
  assign q_m[1] = (decision1) ? (q_m[0] ^~ data_in_q[1]) : (q_m[0] ^ data_in_q[1]);
  assign q_m[2] = (decision1) ? (q_m[1] ^~ data_in_q[2]) : (q_m[1] ^ data_in_q[2]);
  assign q_m[3] = (decision1) ? (q_m[2] ^~ data_in_q[3]) : (q_m[2] ^ data_in_q[3]);
  assign q_m[4] = (decision1) ? (q_m[3] ^~ data_in_q[4]) : (q_m[3] ^ data_in_q[4]);
  assign q_m[5] = (decision1) ? (q_m[4] ^~ data_in_q[5]) : (q_m[4] ^ data_in_q[5]);
  assign q_m[6] = (decision1) ? (q_m[5] ^~ data_in_q[6]) : (q_m[5] ^ data_in_q[6]);
  assign q_m[7] = (decision1) ? (q_m[6] ^~ data_in_q[7]) : (q_m[6] ^ data_in_q[7]);
  assign q_m[8] = (decision1) ? 1'b0 : 1'b1;

  /////////////////////////////////////////////////////////
  // Stage 2: 9 bit -> 10 bit
  // Refer to DVI 1.0 Specification, page 29, Figure 3-5
  /////////////////////////////////////////////////////////
  reg [3:0] n1q_m, n0q_m; // number of 1s and 0s for q_m
  always @ (posedge sys_clk) begin
    n1q_m  <=#1 q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7];
    n0q_m  <=#1 4'h8 - (q_m[0] + q_m[1] + q_m[2] + q_m[3] + q_m[4] + q_m[5] + q_m[6] + q_m[7]);
  end

  parameter CTRLTOKEN0 = 10'b1101010100;
  parameter CTRLTOKEN1 = 10'b0010101011;
  parameter CTRLTOKEN2 = 10'b0101010100;
  parameter CTRLTOKEN3 = 10'b1010101011;

  reg [4:0] cnt; //disparity counter, MSB is the sign bit
  wire decision2, decision3;

  assign decision2 = (cnt == 5'h0) | (n1q_m == n0q_m);
  /////////////////////////////////////////////////////////////////////////
  // [(cnt > 0) and (N1q_m > N0q_m)] or [(cnt < 0) and (N0q_m > N1q_m)]
  /////////////////////////////////////////////////////////////////////////
  assign decision3 = (~cnt[4] & (n1q_m > n0q_m)) | (cnt[4] & (n0q_m > n1q_m));

  ////////////////////////////////////
  // pipe line alignment
  ////////////////////////////////////
  reg       de_q, de_reg;
  reg       c0_q, c1_q;
  reg       c0_reg, c1_reg;
  reg [8:0] q_m_reg;

  always @ (posedge sys_clk) begin
    de_q    <=#1 de;
    de_reg  <=#1 de_q;
    
    c0_q    <=#1 c0;
    c0_reg  <=#1 c0_q;
    c1_q    <=#1 c1;
    c1_reg  <=#1 c1_q;

    q_m_reg <=#1 q_m;
  end

  ///////////////////////////////
  // 10-bit out
  // disparity counter
  ///////////////////////////////
  always @ (posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
      data_out <= 10'h0;
      cnt <= 5'h0;
    end else begin
      if (de_reg) begin
        if(decision2) begin
          data_out[9]   <=#1 ~q_m_reg[8]; 
          data_out[8]   <=#1 q_m_reg[8]; 
          data_out[7:0] <=#1 (q_m_reg[8]) ? q_m_reg[7:0] : ~q_m_reg[7:0];

          cnt <=#1 (~q_m_reg[8]) ? (cnt + n0q_m - n1q_m) : (cnt + n1q_m - n0q_m);
        end else begin
          if(decision3) begin
            data_out[9]   <=#1 1'b1;
            data_out[8]   <=#1 q_m_reg[8];
            data_out[7:0] <=#1 ~q_m_reg[7:0];

            cnt <=#1 cnt + {q_m_reg[8], 1'b0} + (n0q_m - n1q_m);
          end else begin
            data_out[9]   <=#1 1'b0;
            data_out[8]   <=#1 q_m_reg[8];
            data_out[7:0] <=#1 q_m_reg[7:0];

            cnt <=#1 cnt - {~q_m_reg[8], 1'b0} + (n1q_m - n0q_m);
          end
        end
      end else begin
        case ({c1_reg, c0_reg})
          2'b00:   data_out <=#1 CTRLTOKEN0;
          2'b01:   data_out <=#1 CTRLTOKEN1;
          2'b10:   data_out <=#1 CTRLTOKEN2;
          default: data_out <=#1 CTRLTOKEN3;
        endcase

        cnt <=#1 5'h0;
      end
    end
  end
  
endmodule
