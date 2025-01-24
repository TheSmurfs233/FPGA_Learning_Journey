module spi_drive (
        //系统接口
        input sys_clk,
        input rst_n,
        //用户接口
        input spi_start,
        input [7:0] data_send,
        output reg [7:0] data_rec,
        output reg send_done,
        output reg rec_done,
        //物理接口
        input spi_miso,
        output reg spi_sck,
        output reg spi_cs,
        output reg spi_mosi
    );
    parameter SYS_CLK_FREQ = 50_000_000;
    parameter SPI_SCK_FREQ = 10_000_000;//SPI时钟频率
    parameter SCK_CNT_MAX = SYS_CLK_FREQ/SPI_SCK_FREQ - 1; //50
    parameter SCK_CNT_MAX_1_2 = SYS_CLK_FREQ/SPI_SCK_FREQ/2 -1 ;//24

    reg [15:0] sck_cnt;   //spi时钟计数器
    reg [7:0]  send_cnt;  //发送数据计数器
    reg [7:0] data_send_r; //发送数据寄存器
    reg [7:0] data_rec_r; //接收数据寄存器
    reg spi_busy;//spi工作标志位

    //片选信号
    always @(posedge sys_clk ) begin
        if(!rst_n) begin
            spi_cs <=1'b1;
        end
        else if(spi_start | spi_busy) begin
            spi_cs <=1'b0;
        end
        else begin
            spi_cs<=1'b1;
        end  
    end

    //发送数据寄存
    always @(posedge sys_clk) begin
        if (!rst_n) begin
            data_send_r <= 8'h00;
        end
        else if(spi_start) begin
            data_send_r <= data_send;
        end
        else
            data_send_r <= data_send_r;
    end

    //spi时钟信号
    always @(posedge sys_clk ) begin
        if(!rst_n) begin
            spi_sck <= 1'b0;
        end
        else if(spi_start | spi_busy) begin
            if(sck_cnt == SCK_CNT_MAX_1_2 | sck_cnt== SCK_CNT_MAX) begin
                spi_sck <= ~spi_sck;
            end
            else
                spi_sck <= spi_sck;
        end
        else 
            spi_sck <= 1'b0;
    end

    //捕获spi开始信号，更改状态标志位
    always @(posedge sys_clk ) begin
        if(!rst_n) begin
            spi_busy<=1'b0;
        end
        else if(spi_start) begin
            spi_busy<=1'b1;
        end
        else if(send_done & !spi_start) begin
            spi_busy<=1'b0;
        end
        else
            spi_busy<=spi_busy;
    end

    //根据spi状态更新分频计数器和传输比特计数器
    always @(posedge sys_clk ) begin
        if(!rst_n) begin
            sck_cnt<=16'd0;
            send_cnt<=8'd0;
        end
        else if(spi_start | spi_busy ) begin
            if(sck_cnt==SCK_CNT_MAX) begin
                sck_cnt<=16'd0;
                if (send_cnt == 8'd7) begin
                    send_cnt <= 8'd0;
                end
                else begin
                    send_cnt <= send_cnt + 1'd1;
                end
            end
            else begin
                sck_cnt<=sck_cnt+1'd1;
                send_cnt<=send_cnt;
            end

        end
        else begin
            sck_cnt<=16'd0;
            send_cnt<=8'd0;
        end
    end

    //mosi数据发送，产生发送完成标志位
    always @(posedge sys_clk ) begin
        if(!rst_n) begin
            spi_mosi<=1'd0;
            send_done<=1'd0;
        end
        else if(spi_busy) begin
            if(sck_cnt==16'd1) begin
                spi_mosi<=data_send_r[8'd7-send_cnt];
            end
            else begin
                spi_mosi<=spi_mosi;
            end
            if(send_cnt==8'd7 && sck_cnt==SCK_CNT_MAX) begin
                send_done<=1'd1;
            end
            else begin
                send_done<=1'd0;
            end
        end
        else begin
            spi_mosi<=1'd0;
            send_done<=1'd0;
        end

    end
    //miso数据接收，产生接收完成标志位
    always @(posedge sys_clk ) begin
        if(!rst_n) begin
            data_rec_r<=1'd0;
            rec_done<=1'd0;
        end
        else if(spi_busy) begin
            if(sck_cnt==SCK_CNT_MAX_1_2) begin
                data_rec_r[8'd7-send_cnt]<=spi_miso;
            end
            else begin
                data_rec_r[8'd7-send_cnt]<=data_rec_r[8'd7-send_cnt];
            end
            if(send_cnt==8'd7 && sck_cnt==SCK_CNT_MAX) begin
                rec_done<=1'd1;
                data_rec<=data_rec_r;
            end
            else begin
                rec_done<=1'd0;
            end
        end
        else begin
            rec_done<=1'd0;
            data_rec<=data_rec;
        end
    end
endmodule
