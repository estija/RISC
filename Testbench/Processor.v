`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2017 11:18:55 PM
// Design Name: 
// Module Name: test_mips
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module test_mips;
reg clk, rst;
wire [31:0] alures, npc, in, da, md;
processor uut(clk,rst,alures,npc,in,da,md);
initial
    begin
    clk=0;
    rst=1;
    #5 clk=1;
    #5 rst=0;
    end
always
    begin
    #10 clk=~clk;
    end
endmodule
