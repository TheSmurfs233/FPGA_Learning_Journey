module uart_top(
    input            sys_clk  ,   //外部50MHz时钟
    input            sys_rst_n,   //系外部复位信号，低有效
    
    //UART端口    
    input            uart_rx_d ,   //UART接收端口
    output           uart_tx_d     //UART发送端口
    );
//参数定义
parameter CLK_FREQ = 50000000;    //定义系统时钟频率
parameter UART_BAUD = 115200  ;    //定义串口波特率

//线网定义
wire         uart_rx_done;    //UART接收完成信号
wire  [7:0]  uart_rx_data;    //UART接收数据

//串口接收模块
uart_rx #(
    .CLK_FREQ  (CLK_FREQ),
    .UART_BAUD (UART_BAUD)
    )    
    u_uart_rx(
    .clk           (sys_clk     ),
    .rst_n         (sys_rst_n   ),
    .uart_rx_d     (uart_rx_d    ),
    .uart_rx_done  (uart_rx_done),
    .uart_rx_data  (uart_rx_data)
    );

//串口发送模块
uart_tx #(
    .CLK_FREQ  (CLK_FREQ),
    .UART_BAUD (UART_BAUD)
    )    
    u_uart_tx(
    .clk          (sys_clk     ),
    .rst_n        (sys_rst_n   ),
    .uart_tx_en   (uart_rx_done),
    .uart_tx_data (uart_rx_data),
    .uart_tx_d    (uart_tx_d    ),
    .uart_tx_busy (            )
    );

endmodule