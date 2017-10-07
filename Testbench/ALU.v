`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2017 01:30:16 AM
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
reg[31:0]a,b;
reg[3:0]funct;
wire [31:0]s;
wire zero;
alu uut(a,b,funct,s,zero);
initial begin
a=32'h000A4321;
b=32'h000A4322;
funct=4'b0000;
end
always begin
#5 funct=funct+1;
#5 a=a+1;
end
endmodule
