`timescale 1ns / 1ps
`define CLK_PERIOD 8

module gmii_to_rgmii_tb();
    reg  rst_n;
    reg gmii_tx_clk;
    reg [3:0] tx_byte_cnt;
    reg [7:0] gmii_tx_data;
    reg gmii_tx_en;
    reg gmii_tx_er;
    wire rgmii_tx_clk;
    wire [3:0] rgmii_tx_data;
    wire rgmii_tx_en;
    
    gmii_to_rgmii gmii_to_rgmii(
      .rst_n(rst_n),
      .gmii_tx_clk(gmii_tx_clk),
      .gmii_tx_data(gmii_tx_data),
      .gmii_tx_en(gmii_tx_en),
      .gmii_tx_er(gmii_tx_er),
    
      .rgmii_tx_clk(rgmii_tx_clk),
      .rgmii_tx_data(rgmii_tx_data),
      .rgmii_tx_en(rgmii_tx_en)
    );

        //clock generate
    initial gmii_tx_clk = 1'b1;
    always #(`CLK_PERIOD/2)gmii_tx_clk = ~gmii_tx_clk;
    
    always@(posedge gmii_tx_clk or negedge rst_n)
    if(!rst_n)
        tx_byte_cnt <= 4'd0;
    else if(gmii_tx_en)
        tx_byte_cnt <= tx_byte_cnt + 1'b1;
    else
        tx_byte_cnt <= 4'd0;

    always@(*)
    begin
        case(tx_byte_cnt)
        16'd0  : gmii_tx_data = 25;
        16'd1  : gmii_tx_data = 34;
        16'd2  : gmii_tx_data = 18;
        16'd3  : gmii_tx_data = 96;
        16'd4  : gmii_tx_data = 78;
        16'd5  : gmii_tx_data = 29;
        16'd6  : gmii_tx_data = 63;
        16'd7  : gmii_tx_data = 42;
        16'd8  : gmii_tx_data = 51;
        16'd9  : gmii_tx_data = 74;
        16'd10 : gmii_tx_data = 39;
        16'd11 : gmii_tx_data = 60;
        16'd12 : gmii_tx_data = 27;
        16'd13 : gmii_tx_data = 36;
        16'd14 : gmii_tx_data = 145;
        16'd15 : gmii_tx_data = 231;
        endcase
    end

  initial
    begin
    rst_n = 0;
    gmii_tx_en = 0;
    gmii_tx_er = 0;
    #201;
    rst_n = 1;
    gmii_tx_en = 1;
    #2000; 
    $stop;
  end

endmodule
