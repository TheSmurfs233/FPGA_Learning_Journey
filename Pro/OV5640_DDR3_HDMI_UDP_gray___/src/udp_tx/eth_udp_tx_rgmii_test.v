
module eth_udp_tx_rgmii_test(
    input         clk       ,      
    input         rst_n         ,      
    //output        led           ,  
    output        phy_rst_n	    ,// PHY 复位信号    
    output        rgmii_tx_clk  ,          
    output  [3:0] rgmii_tx_data ,      
    output        rgmii_tx_en              
);

    
    wire gmii_tx_clk;
    wire [7:0] gmii_tx_data;
    wire gmii_tx_en;

    wire       clk_125m;
    wire       udp_gmii_rst_n;
    wire       pll_locked;
    reg [27:0] cnt_dly_time;
    wire       tx_en_pulse;
    wire       tx_done;  
    wire       payload_req;
    reg [7:0]  payload_dat;
    reg [15:0] tx_byte_cnt;

    //assign led            = pll_locked;
    //assign eth_reset_n    = pll_locked;
    assign phy_rst_n = 1;// PHY 复位信号
    assign udp_gmii_rst_n = pll_locked;

  pll pll
   (
    // Clock out ports
    .clk_out1(clk_125m),     // output clk_out1
    // Status and control signals
    .resetn(rst_n), // input resetn
    .locked(pll_locked),       // output locked
   // Clock in ports
    .clk_in1(clk));      // input clk_in1

    eth_udp_tx_gmii eth_udp_tx_gmii
    (
        .clk_125m      (clk_125m               ),
        .rst_n         (udp_gmii_rst_n        ),
                       
        .tx_en_pulse   (tx_en_pulse           ),
        .tx_done       (tx_done               ),
                       
        .dst_mac       (48'h00_E0_21_88_F2_38 ), // 00-E0-21-88-F2-38
        .src_mac       (48'h00_0a_35_01_fe_c0 ),  
        .dst_ip        (32'hc0_a8_00_03       ),
        .src_ip        (32'hc0_a8_00_02       ),	
        .dst_port      (16'd6102              ),
        .src_port      (16'd5000              ),
                       
        .data_length   (23                    ),

        .payload_req_o (payload_req           ),
        .payload_dat_i (payload_dat           ),

        .gmii_tx_clk   (gmii_tx_clk           ),	
        .gmii_tx_en    (gmii_tx_en            ),
        .gmii_tx_data  (gmii_tx_data          )
    );

     gmii_to_rgmii gmii_to_rgmii(
      .rst_n(udp_gmii_rst_n),

      .gmii_tx_clk(gmii_tx_clk),
      .gmii_tx_data(gmii_tx_data),
      .gmii_tx_en(gmii_tx_en),
      .gmii_tx_er(1'b0),

      .rgmii_tx_clk(rgmii_tx_clk),
      .rgmii_tx_data(rgmii_tx_data),
      .rgmii_tx_en(rgmii_tx_en)
    );



    always@(posedge clk_125m or negedge udp_gmii_rst_n)
    if(!udp_gmii_rst_n)
        cnt_dly_time <= 16'd0;
    else
        cnt_dly_time <= cnt_dly_time + 1'b1;

    assign tx_en_pulse = &cnt_dly_time;

    always@(posedge clk_125m or negedge rst_n)
    if(!rst_n)
        tx_byte_cnt <= 16'd0;
    else if(payload_req)
        tx_byte_cnt <= tx_byte_cnt + 1'b1;
    else
        tx_byte_cnt <= 16'd0;

    always@(*)
    begin
    case(tx_byte_cnt)
      16'd0  : payload_dat = "H";
      16'd1  : payload_dat = "e";
      16'd2  : payload_dat = "l";
      16'd3  : payload_dat = "l";
      16'd4  : payload_dat = "o";
      16'd5  : payload_dat = ",";
      16'd6  : payload_dat = " ";
      16'd7  : payload_dat = "w";
      16'd8  : payload_dat = "e";
      16'd9  : payload_dat = "l";
      16'd10 : payload_dat = "c";
      16'd11 : payload_dat = "o";
      16'd12 : payload_dat = "m";
      16'd13 : payload_dat = "e";
      16'd14 : payload_dat = " ";
      16'd15 : payload_dat = "t";
      16'd16 : payload_dat = "o";
      16'd17 : payload_dat = " ";
      16'd18 : payload_dat = "F";
      16'd19 : payload_dat = "P";
      16'd20 : payload_dat = "G";
      16'd21 : payload_dat = "A";
      16'd22 : payload_dat = "!";
      default: payload_dat = 8'd0;

    endcase
    end

endmodule
