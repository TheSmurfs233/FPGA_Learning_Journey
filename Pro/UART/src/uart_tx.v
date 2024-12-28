module uart_tx(
    input bclk,
    input reset,
    input [7:0] tx_din,
    input tx_cmd,
    output reg tx_ready,
    output txd
    );

 parameter Lframe=8;
 parameter [2:0]s_idle=3'b000;
 parameter [2:0]s_start=3'b001;
 parameter [2:0]s_wait=3'b010;
 parameter [2:0]s_shift=3'b011;
 parameter [2:0]s_stop=3'b100;
 reg [2:0]state=s_idle;
 reg [3:0]cnt=0;
 reg [3:0]dcnt=0;
 reg txdt;
 assign txd=txdt;
 always @(posedge bclk or posedge reset)
 begin
    if(reset)
        begin
            state<=s_idle;
            cnt<=0;
            tx_ready<=0;
            txdt<=1'b1;
        end
    else
    begin
    case(state)
    s_idle:
    begin
        tx_ready<=1;
        cnt<=0;
        txdt<=1'b1;
        if(tx_cmd==1'b1)
            state<=s_start;
        else
            state<=s_idle;
        end
    s_start:
    begin
        tx_ready<=1'b0;
        txdt<=1'b0;//the start bit
        state<=s_wait;
    end
    s_wait:
    begin
        tx_ready<=1'b0;
        if(cnt>=4'b1110)
        begin
        cnt<=0;
        if(dcnt==Lframe)
            begin
                state<=s_stop;
                txdt<=1'b1;
                dcnt<=0;
            end
        else
            begin
                state<=s_shift;
                txdt<=txdt;
            end
        end
        else
            begin
                state<=s_shift;
                cnt<=cnt+1;
            end
        end
    s_shift:
        begin
            tx_ready<=1'b0;
            txdt<=tx_din[dcnt];
            dcnt<=dcnt+1;
            state<=s_wait;
        end
    s_stop:
        begin
            txdt<=1'b1;
            if(cnt>4'b1110)
                begin
                    tx_ready<=1'b1;
                    cnt<=0;
                    state<=s_idle;
                end
            else
                begin
                    state<=s_stop;
                    cnt<=cnt+1;
                end
        end
    endcase
    end
end
endmodule