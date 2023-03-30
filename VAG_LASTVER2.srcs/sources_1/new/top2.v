`timescale 1ns / 1ps
module top2(
    input clk_old,
    input PS2_CLK,
    input PS2_DATA,
    output hsync, vsync,
    output [2:0] rgb
    );
    wire [3:0] switch;
    wire [1:0] state;
    wire clk;
    wire set_button;
    wire reset_button;
    wire reset_signal_enable;
    wire set_signal_enable;  
    wire [3:0]i;
    wire [3:0]j;
    wire [7:0]path;
    clk_div div(.clk(clk_old), .new_clk(clk));
    keyboard keyboard(.PS2_CLK(PS2_CLK),.PS2_DATA(PS2_DATA), .CLK(clk),.out_data(switch[3:0]),.reset(reset_button),.nextState(set_button));
    bounce set(.clk(clk),.in_s(set_button),.clock_en(0'b1),.out_signal_en(set_signal_enable));
    bounce reset(.clk(clk),.in_s(reset_button),.clock_en(0'b1),.out_signal_en(reset_signal_enable));
    mainfsm mainfsm(.clk(clk),.nextState(set_signal_enable),.reset(reset_signal_enable),.number(switch[3:0]),.state(state),.i_out(i),.j_out(j),.path_out(path));
    vga vgaaa(.clk(clk_old),.hsync(hsync),.switch(switch),.i(i),.j(j),.state(state),.path(path),.vsync(vsync),.rgb(rgb));
endmodule
