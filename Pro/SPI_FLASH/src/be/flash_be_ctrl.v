module flash_be_ctrl (
    input   wire        sys_clk     ,
    input   wire        sys_rst_n   ,
    input   wire        key         ,

    output  reg         sck         ,
    output  wire        cs_n        ,
    output  reg         mosi        
);
//parameter define
parameter IDLE  = 4'b0001 ; //初始状态
parameter WREN = 4'b0010 ; //写状态
parameter DELAY = 4'b0100 ; //等待状态
parameter BE    = 4'b1000 ; //全擦除状态

parameter WR_EN_INST = 8'b0000_0110; //写使能指令
parameter BE_INST    = 8'b1100_0111; //全擦除指令

//reg define

reg     [7:0]       clk_cnt    ; //系统时钟计数器   
reg     [3:0]       state      ; //状态机状态
reg     [1:0]       sck_cnt    ; //串行时钟计数器
reg     [2:0]       bit_cnt    ; //比特计数器
//wire define


/****************main logic****************/
//cnt_clk:系统时钟计数器
always @(posedge sys_clk ) begin
    if (!sys_rst_n) begin
        clk_cnt <= 8'b0;
    end
    else begin
        case(state)
            IDLE: begin
                clk_cnt <= 8'b0;
            end
            WREN: begin
                if (clk_cnt == 8'd34) begin
                    clk_cnt <= 8'b0;
                end
                else begin
                    clk_cnt <= clk_cnt + 1;
                end
            end
            DELAY: begin
                if (clk_cnt == 8'd5) begin
                    clk_cnt <= 8'b0;
                end
                else begin
                    clk_cnt <= clk_cnt + 1;
                end
            end
            BE: begin
                if (clk_cnt == 8'd33) begin
                    clk_cnt <= 8'b0;
                end
                else begin
                    clk_cnt <= clk_cnt + 1;
                end
            end
            default: begin
                clk_cnt <= 8'b0;
            end
        endcase
    end
end

//sck_cnt:串行时钟计数器
always @(posedge sys_clk ) begin
    if (!sys_rst_n) begin
        sck_cnt <= 8'b0;
    end
    else begin
        case(state)
            IDLE: begin
                sck_cnt <= 8'b0;
            end
            WREN: begin
                if (clk_cnt >= 8'd2) begin
                    if (sck_cnt == 2'd3) begin
                        sck_cnt <= 2'd0;
                    end
                    else begin
                        sck_cnt <= sck_cnt + 1;
                    end
                end
                else begin
                    sck_cnt <= 2'd0;
                end
            end
            DELAY: begin
                sck_cnt <= 2'd0;
            end
            BE: begin
                if (clk_cnt >= 8'd1) begin
                    if (sck_cnt == 2'd3) begin
                        sck_cnt <= 2'd0;
                    end
                    else begin
                        sck_cnt <= sck_cnt + 1;
                    end
                end
                else begin
                    sck_cnt <= 2'd0;
                end
            end
            default: begin
                sck_cnt <= 8'b0;
            end
        endcase
    end
        
end

//bit_cnt:比特计数器
always @(posedge sys_clk ) begin
    if (!sys_rst_n) begin
        bit_cnt <= 3'd0;
    end
    else begin
        if (state == WREN || state == BE ) begin
            if (sck_cnt == 2'd1 ) begin
                bit_cnt <= bit_cnt + 1;
            end
            else begin
                bit_cnt <= bit_cnt;
            end
        end
        else begin
            bit_cnt <= 3'd0;
        end
    end
end
//cs_n:片选信号
assign  cs_n = (state == IDLE || state == DELAY) ? 1'b1 : 1'b0;

//sck:串行时钟
always @(posedge sys_clk ) begin
    if(!sys_rst_n) begin
        sck <= 1'b0;
    end
    else if (state == WREN || state == BE) begin
        if (sck_cnt == 2'd1 || sck_cnt == 2'd3 ) begin
            sck = ~sck;
        end
        else begin
            sck = sck;
        end
    end
    else begin
        sck <= 1'b0;
    end
end

//state machine
//state:两段式状态机第一段，状态跳转
always@(posedge sys_clk) begin
    if(!sys_rst_n)
        state <= IDLE;
    else begin
        case(state)
            IDLE: if(key == 1'b1)
            state <= WREN;
            WREN: if(clk_cnt == 8'd34)
            state <= DELAY;
            DELAY: if(clk_cnt == 8'd5) begin
                state <= BE;
            end
            BE: if(clk_cnt == 8'd33) begin
                state <= IDLE; 
            end

            default: state <= IDLE;
        endcase
    end
end

//mosi:两段式状态机第二段，逻辑输出
always@(posedge sys_clk or negedge sys_rst_n) begin
    if(sys_rst_n == 1'b0)
        mosi <= 1'b0;
    else if((state == WREN) && (clk_cnt == 8'd1))
        mosi <= 1'b0;
    else if((state == BE) && (clk_cnt == 8'd0))
        mosi <= 1'b0;
    else if((state == WREN)&&(clk_cnt >= 8'd1)&&(sck_cnt == 2'd0))
        mosi <= WR_EN_INST[7 - bit_cnt]; //写使能指令
    else if((state == BE) && (clk_cnt >= 8'd0) && (sck_cnt == 2'd0))
        mosi <= BE_INST[7 - bit_cnt]; //全擦除指令
end
endmodule