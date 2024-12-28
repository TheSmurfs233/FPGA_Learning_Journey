module uart_rx(
    
    input bclk,
    input reset,
    input rxd,
    output rx_ready,
    output [7:0]rx_dout
 );
 parameter [3:0]Lframe=9;
 parameter [2:0]s_idle=3'b000;
 parameter [2:0]s_sample=3'b010;
 parameter [2:0]s_stop=3'b100;
 reg rx_ready;
 reg [7:0]rx_doutmp=0;
 reg [2:0]state=s_idle;
 reg [3:0]cnt=0;
 reg [3:0]dcnt=0;
 reg [3:0]num=0;
 assign rx_dout=rx_doutmp;
 always @(posedge bclk or posedge reset)
 begin
    if(reset==1'b1)
        begin
            state<=s_idle;
            cnt<=0;
            dcnt<=0;
            num<=0;
            rx_doutmp<=0;
            rx_ready<=0;
        end
    else
    begin
        case(state)
        s_idle:
            begin
            rx_dout<=0;
            rx_ready<=1;
            dcnt<=0;
            if(cnt==4'b1111)
            begin
            cnt<=0;
            if(num>7)
                begin
                state<=s_sample;
                num<=0;
                end
            else
                begin
                state<=s_idle;
                num<=0;
                end
            end
            else
            begin
                cnt<=cnt+1;
                if(rxd==1'b0)
                    begin
                        num<=num+1;
                    end
                else
                    begin
                        num<=num;
                    end
                end
            end
        s_sample:
            begin
                rx_ready<=1'b0;
                if(dcnt==Lframe)
                    begin
                        state<=s_stop;
                    end
                else
                begin
                    if(cnt==4'b1111)
                    begin
                    dcnt<=dcnt+1;
                    cnt<=0;
                    if(num>7)
                        begin
                            num<=0;
                            rx_doutmp[dcnt]<=1;
                        end
                    else
                        begin
                            num<=0;
                            rx_doutmp[dcnt]<=0;
                        end
                    end
                    else
                    begin
                        cnt<=cnt+1;
                        if(rxd==1'b1)
                        begin
                            num<=num+1;
                        end
                        else
                        begin
                            num<=num;
                        end
                    end
                end
            end
        s_stop:
        begin
            rx_ready<=1'b1;
            if(cnt==4'b1111)
            begin
            cnt<=0;
            state<=s_idle;
            end
        else
            begin
            cnt<=cnt+1;
            end
        end
        endcase
    end
 end
endmodule