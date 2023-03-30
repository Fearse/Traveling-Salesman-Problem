`timescale 1ns / 1ps
module testbench();

reg clk;
wire [3:0] switch;
wire hsync,vsync;
wire [2:0] rgb;
reg PS2_CLK;
reg PS2_DATA;
always #10 clk = ~clk;
always #15 PS2_CLK = ~PS2_CLK;
top2 test(.clk_old(clk), .PS2_CLK(PS2_CLK), .PS2_DATA(PS2_DATA),.hsync(hsync),.vsync(vsync),.rgb(rgb)/*,.code(code),.switch1(switch)*/);
initial begin
clk = 0;
PS2_CLK=0;
PS2_DATA=1;
//-------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=0;
#30//2
PS2_DATA=1;
#30//3
PS2_DATA=1;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
//--------------------
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
/*
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=1;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=1;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
#45//0
PS2_DATA=0;
#30//1
PS2_DATA=1;
#30//2
PS2_DATA=0;
#30//3
PS2_DATA=0;
#30//4
PS2_DATA=1;
#30//5
PS2_DATA=0;
#30//6
PS2_DATA=1;
#30//7
PS2_DATA=0;
#30//8
PS2_DATA=0;
#30//9
PS2_DATA=1;
#30//10
PS2_DATA=1;
#30//11
PS2_DATA=1;
*/
end

endmodule