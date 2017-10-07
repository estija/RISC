`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 10:14:13 PM
// Design Name: 
// Module Name: add
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
module add(input[31:0]a,b,input funct,output reg[31:0]addres,output reg cout);
reg x;
always@(*)
    begin
    case(funct)
    2'b0:
        begin
        {cout,addres}=a+b;
        end
    2'b1:
        begin
        {x,addres}=a-b;
        cout=0;
        end
    endcase
    end
endmodule
