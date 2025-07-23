module top(
    input                 i_clk_a       ,
    input                 i_clk_b       ,
    input                 i_rst_n          
);


wire            w_data_req    ;
wire            w_data_ack    ;
wire [ 3 :0]    w_data        ;


data_driver u_data_driver(
    .i_clk_a     ( i_clk_a     ),
    .i_rst_n     ( i_rst_n     ),
    .i_data_ack  ( w_data_ack  ),
    .o_data      ( w_data      ),
    .o_data_req  ( w_data_req  ) 
);

data_receiver u_data_receiver(
    .i_clk_b     ( i_clk_b     ),
    .i_rst_n     ( i_rst_n     ),
    .o_data_ack  ( w_data_ack  ),
    .i_data_req  ( w_data_req  ),
    .i_data      ( w_data      )
);


endmodule