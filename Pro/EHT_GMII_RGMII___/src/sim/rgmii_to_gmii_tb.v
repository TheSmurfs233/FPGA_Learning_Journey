`timescale 1ns / 1ps
`define CLK_PERIOD 8

module rgmii_to_gmii_tb();
    reg  rst_n;
    wire gmii_rx_clk;
    reg [3:0] rx_byte_cnt;
    wire [7:0] gmii_rx_data;
    wire gmii_rx_dv;
    wire gmii_rx_er;
    wire rgmii_rx_clk;
    reg [3:0] rgmii_rx_data;
    reg rgmii_rx_dv;
    reg rx_clk;
    wire locked;
    
    rgmii_to_gmii rgmii_to_gmii(
        .rst_n(rst_n),
        .gmii_rx_clk(gmii_rx_clk),  
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_data(gmii_rx_data),
        .gmii_rx_er(gmii_rx_er),
    
        .rgmii_rx_clk(rgmii_rx_clk),
        .rgmii_rx_data(rgmii_rx_data),
        .rgmii_rx_dv(rgmii_rx_dv)
    );
    
      rx_pll rx_pll
   (
    // Clock out ports
    .clk_out1(rgmii_rx_clk),     // output clk_out1
    // Status and control signals
    .resetn(rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(rx_clk)      // input clk_in1
    );

    //clock generate
    initial rx_clk = 1'b1;
    always #(`CLK_PERIOD/2)rx_clk = ~rx_clk;
    
    always@(rx_clk or negedge rst_n)
    if(!rst_n)
        rx_byte_cnt <= 4'd0;
    else if(rgmii_rx_dv && locked)
        rx_byte_cnt <= rx_byte_cnt + 1'b1;
    else
        rx_byte_cnt <= 4'd0;

    always@(*)
    begin
        case(rx_byte_cnt)
        16'd0  : rgmii_rx_data = 12;
        16'd1  : rgmii_rx_data = 7;
        16'd2  : rgmii_rx_data = 9;
        16'd3  : rgmii_rx_data = 6;
        16'd4  : rgmii_rx_data = 11;
        16'd5  : rgmii_rx_data = 15;
        16'd6  : rgmii_rx_data = 0;
        16'd7  : rgmii_rx_data = 8;
        16'd8  : rgmii_rx_data = 4;
        16'd9  : rgmii_rx_data = 2;
        16'd10 : rgmii_rx_data = 5;
        16'd11 : rgmii_rx_data = 1;
        16'd12 : rgmii_rx_data = 3;
        16'd13 : rgmii_rx_data = 10;
        16'd14 : rgmii_rx_data = 14;
        16'd15 : rgmii_rx_data = 13;
        endcase
    end

  initial
    begin
    rst_n = 0;
    rgmii_rx_dv = 0;
    #201;
    rst_n = 1;
    rgmii_rx_dv = 1;
    #2000; 
    $stop;
  end

endmodule
