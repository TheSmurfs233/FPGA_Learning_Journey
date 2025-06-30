module eth_udp_send_test (
    input  wire         clk,
    input  wire         rst_n,


    //rgmii接口
    output              phy_rst_n	  ,// PHY 复位信号    
    output              rgmii_tx_clk  ,          
    output  [3:0]       rgmii_tx_data ,      
    output              rgmii_tx_en 
);



    wire    pll_locked;
    reg [15:0]  cnt;
    reg [15:0]  wr_data;
    reg         wr_en;

    //cnt:计数器0~50_000,周期为1ms
    always @(posedge clk_50m ,negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 16'd0;
        end
        else if(cnt >= 16'd50_000) begin
            cnt <= 16'd0;
        end
        else begin
            cnt <= cnt + 16'd1;
        end
    end

    //wr_data:写入fifo的数据
    always @(posedge clk_50m ,negedge rst_n) begin
        if (!rst_n) begin
            wr_data <= 16'd0;
        end
        else if(cnt == 16'd50_000) begin
            wr_data <= wr_data + 16'd1;
        end
    end
    //wr_en:
    always @(posedge clk_50m ,negedge rst_n) begin
        if (!rst_n) begin
            wr_en <= 1'd0;
        end
        else if(cnt == 16'd50_000) begin
            wr_en <= 1'b1;
        end
        else begin
            wr_en <= 1'd0;
        end
    end



    pll pll
   (
    // Clock out ports
    .clk_out1(clk_50m),     // output clk_out1
    .clk_out2(clk_125m),     // output clk_out2
    // Status and control signals
    .resetn(rst_n), // input resetn
    .locked(pll_locked),       // output locked
   // Clock in ports
    .clk_in1(clk));      // input clk_in1

    eth_udp_send  eth_udp_send_inst (
    .clk_125m(clk_125m),
    .rst_n(rst_n),
    .fifo_wr_clk(clk_50m),
    .fifo_wr_data(wr_data),
    .fifo_wr_en(wr_en),
    .phy_rst_n(phy_rst_n),
    .rgmii_tx_clk(rgmii_tx_clk),
    .rgmii_tx_data(rgmii_tx_data),
    .rgmii_tx_en(rgmii_tx_en)
  );
    
endmodule

