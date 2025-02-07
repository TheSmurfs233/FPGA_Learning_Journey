`timescale 1ns / 1ps
module fifo_sum_tb;

  // Parameters

  //Ports
  reg  sys_clk;
  reg  sys_rst_n;
  reg  rx;
  wire  tx;

  reg [7:0] data_men[2499:0] ;

  fifo_sum  fifo_sum_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .rx(rx),
    .tx(tx)
  );
//读取数据
initial
$readmemh("D:/FPGA_Learning_Journey/Pro/FIFO/fifo_data.txt",data_men);

//生成时钟和复位信号
always #10  sys_clk = ! sys_clk ;
initial begin
  sys_clk = 0;
  sys_rst_n = 0;
  rx = 0;
  #30;
  sys_rst_n = 1;
end

//rx赋初值,调用rx_byte
initial begin
  rx <= 1'b1;
  #200
  rx_byte();
end

//rx_byte
task rx_byte();
integer j;
  for(j=0;j<2500;j=j+1) begin
    rx_bit(data_men[j]);
  end

endtask


//rx_bit
task rx_bit(input[7:0] data);//data是data_men[j]的值。
  integer i;
  for(i=0;i<10;i=i+1) begin
    case(i)
      0: rx <= 1'b0; //起始位
      1: rx <= data[0];
      2: rx <= data[1];
      3: rx <= data[2];
      4: rx <= data[3];
      5: rx <= data[4];
      6: rx <= data[5];
      7: rx <= data[6];
      8: rx <= data[7]; //上面8个发送的是数据位
      9: rx <= 1'b1; //停止位
    endcase
    #(434*20); //每发送1位数据延时434个时钟周期
  end
endtask

endmodule