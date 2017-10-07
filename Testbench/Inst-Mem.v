`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2017 05:57:41 PM
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
reg [31:0]pc;
reg clk;
wire [31:0]inst;
im uut(pc,clk,inst);
initial begin
clk=0;
pc=32'd0;
end
always begin
#5 clk=~clk;
#5 pc=pc+1;
end
endmodule
