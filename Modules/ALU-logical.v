`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 10:14:13 PM
// Design Name: 
// Module Name: logical
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
module logical(input[31:0]a,b,input[1:0]funct,output reg[31:0]logres);
always@(*)
begin
case(funct[1:0])
2'b00:logres=(a|b);
2'b01:logres=(a&b);
2'b10:logres=(a^b);
2'b11:logres=(~a);
endcase
end
endmodule
