module eth_udp_send (
    input  wire         clk_125m,
    input  wire         rst_n,

    //fifo写接口
    input  wire         fifo_wr_clk,
    input  wire [15:0]  fifo_wr_data,
    input  wire         fifo_wr_en,

    //rgmii接口
    output              phy_rst_n	  ,// PHY 复位信号    
    output              rgmii_tx_clk  ,          
    output  [3:0]       rgmii_tx_data ,      
    output              rgmii_tx_en 
);

    //parameter define
    parameter data_length = 15'd1282;//640 * 2 + 2 发送640*480分辨率的一行数据，数据格式为rgb565

    //wire define
    wire        gmii_tx_clk     ;//gmii发送时钟
    wire        gmii_tx_en      ;//gmii发送使能
    wire [7:0]  gmii_tx_data    ;//gmii发送数据

    (*mark_debug="true"*)wire        payload_req_o   ; //mac层发送请求输出
    (*mark_debug="true"*)wire [7:0]  payload_dat_i   ; //mac层发送数据输入
    (*mark_debug="true"*)wire [13:0] rd_data_count   ; //fifo中可读数据个数
    (*mark_debug="true"*)wire        tx_done         ; //单次发送完成信号

    //reg define
    (*mark_debug="true"*)reg         sending_flag    ;//发送中标志位
    (*mark_debug="true"*)reg         tx_en_pulse     ; //发送使能信号

    assign phy_rst_n = 1'b1;

    //sending_flag:发送标志位
    always @(posedge clk_125m ,negedge rst_n) begin
        if (!rst_n) begin
            sending_flag <= 1'b0;
        end
        else begin
            if (tx_en_pulse == 1'b1) begin
                sending_flag <= 1'b1;
            end
            else if(tx_done == 1'b1) begin
                sending_flag <= 1'b0;
            end
            else begin
                sending_flag <= sending_flag;
            end
        end
    end

    //tx_en_pulse:发送使能信号,如果fifo中可读数据个数大于data_length = 15'd1280,那么使能发送
    always @(posedge clk_125m ,negedge rst_n) begin
        if (!rst_n) begin
            tx_en_pulse <= 1'b0;
        end
        else if((rd_data_count >= data_length) && (sending_flag == 1'b0) && (tx_en_pulse == 1'b0)) begin//判断是否处于正在发送的状态，若为空闲状态且fifo中数据大于data_length,才会使能发送
            tx_en_pulse <= 1'b1;
        end
        else begin
            tx_en_pulse <= 1'b0;
        end
    end


eth_udp_tx_gmii  eth_udp_tx_gmii_inst (
    .clk_125m(clk_125m),
    .rst_n(rst_n),
    .tx_en_pulse(tx_en_pulse),
    .tx_done(tx_done),
    .dst_mac(48'h00_E0_21_88_F2_38),
    .src_mac(48'h00_0a_35_01_fe_c0),
    .dst_ip(32'hc0_a8_00_03),//192.168.0.3 
    .src_ip(32'hc0_a8_00_02),//192.168.0.2
    .dst_port(16'd6102),
    .src_port(16'd5000),
    .data_length(data_length),

    .payload_req_o(payload_req_o),
    .payload_dat_i(payload_dat_i),

    .gmii_tx_clk(gmii_tx_clk),
    .gmii_tx_data(gmii_tx_data),
    .gmii_tx_en(gmii_tx_en)
);


eth_dcfifo eth_dcfifor_inst (
    .rst(!rst_n),                   // input wire rst
    .wr_clk(fifo_wr_clk),           // input wire wr_clk
    .rd_clk(clk_125m),              // input wire rd_clk
    .din(fifo_wr_data),             // input wire [7 : 0] din
    .wr_en(fifo_wr_en),             // input wire wr_en
    .rd_en(payload_req_o),          // input wire rd_en

    .dout(payload_dat_i),           // output wire [7 : 0] dout
    .full( ),                    // output wire full
    .empty( ),                  // output wire empty
    .rd_data_count(rd_data_count),  // output wire [12 : 0] rd_data_count
    .wr_data_count( )  // output wire [12 : 0] wr_data_count
);

gmii_to_rgmii gmii_to_rgmii_inst(
    .rst_n(rst_n),

    .gmii_tx_clk(gmii_tx_clk),
    .gmii_tx_data(gmii_tx_data),
    .gmii_tx_en(gmii_tx_en),
    .gmii_tx_er(1'b0),

    .rgmii_tx_clk(rgmii_tx_clk),
    .rgmii_tx_data(rgmii_tx_data),
    .rgmii_tx_en(rgmii_tx_en)
);

endmodule

