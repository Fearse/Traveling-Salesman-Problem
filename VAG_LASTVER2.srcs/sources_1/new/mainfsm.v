`timescale 1ns / 1ps
module mainfsm(
    input clk,
    input wire nextState,
    input wire reset,
    input wire [3:0] number,
    output reg [1:0] state,
    output reg[3:0] i_out,
    output reg [3:0] j_out,
    output reg [7:0] path_out
    );
    reg filled;
    reg [3:0] count;
    reg [3:0] i;
    reg [3:0] j;
    reg [3:0] memory [0:15][0:15];
    reg [3:0] zeroPaths[0:15];
    reg [3:0] min=4'd15;
    reg [3:0] minNumber=0;
    reg [7:0] path=0;
    reg [3:0] n=0;
    reg counted=0;
    initial
    begin
    i=0;
    j=1;
    zeroPaths[0]=0;
    path_out=path;
    i_out=i;
    filled=0;
    j_out=j;
    state=0;
    count=0;
    end
always @(posedge clk) 
    begin
    if(reset)
        state=0;  
        if (filled)
            begin
            if (j<count)
                begin
                    if(memory[i][j]<=min && memory[i][j]>0)
                        begin
                            min=memory[i][j];
                            minNumber=j;
                            counted=0;
                        end
                    memory[i][j]=0;
                    memory[j][i]=0;
                    j=j+1;
                end
            else
                begin
                    n=n+1;
                    if (n==count)
                    begin
                        path=path+zeroPaths[i];
                        path_out=path;
                        n=0;
                        min=4'd15;
                        filled=0;
                    end
                    else
                    begin
                        counted=1;
                        path=path+min;
                        path_out=path;
                        i=minNumber;
                        min=4'd15;
                        j=0;
                    end
                end
            end
        if (nextState)
            begin
        case (state)
            2'd0: begin
            if (number!=4'd0 && number !=4'd1) begin
            count = number;
            state = 2'd1;
            i=0;
            counted=0;
            filled=0;
            j=1;
            path=0;
            end
            end
            2'd1: begin
            if (number !=4'd0)begin
            memory[i][j]=number;
            memory[j][i]=number;
            if (i==0) begin
            zeroPaths[j]=number;
            end
            j=j+1;           
            if (j==count) begin
            i=i+1;
            j=i+1;
            end
 
            if (i==count-1)begin
            filled=1;
            j=1;
            i=0;
            state = 2'd2;
            end
            end
            end
            2'd2: begin
            if(filled!=1)
            state <= 2'd0;
            end
        endcase
        end
    i_out=i;
    j_out=j;
    path_out=path;
    end
endmodule
