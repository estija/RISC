`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2017 07:20:15 PM
// Design Name: 
// Module Name: test
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
module test;
reg[1:0]opcode;
reg[5:0]funct;
reg sel;
wire[3:0]alu_cnt;
alu_control uut(opcode,funct,sel,alu_cnt);
initial
    begin
    opcode=2'b00;
    funct=5'b00000;
    sel=1'b0;
    end
always
    begin
    #5 opcode=opcode+1;
    #5 funct=funct+1;
    #5 sel=~sel;
    end
endmodule
