`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 10:14:13 PM
// Design Name: 
// Module Name: shift
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
module shift(input[31:0]a,input[4:0]b, input funct, output reg[31:0]shtres);
always@(*)
begin
case(funct)
2'b0:shtres=a>>b;
2'b1:shtres=a<<b;
endcase
end
endmodule
