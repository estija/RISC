`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 10:14:13 PM
// Design Name: 
// Module Name: calc
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
module calc(input[31:0]a,b,input funct,output reg[31:0]calres,output reg ovf);
reg [31:0]cal;
always@(*)
    begin
    case(funct)
    1'b0:
        begin
        {cal,calres}=a*b;
        if(cal==32'd0) ovf=0;
        else ovf=1;
        end
    1'b1:
       begin
       calres=a/b;
       ovf=0;
       end
    endcase
    end
endmodule
