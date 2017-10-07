`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 08:54:44 PM
// Design Name: 
// Module Name: im
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
module im(input[31:0]pc,input clk,output reg[31:0]inst);
reg[7:0]im[63:0];
initial
    begin
    im[0]=8'b00001010;
    im[1]=8'b00001010;
    im[2]=8'b00101010;
    im[3]=8'b00001010;
    im[4]=8'b00001010;
    im[5]=8'b00001011;
    im[6]=8'b01001010;
    im[7]=8'b00101010;
    im[8]=8'b00001010;
    im[9]=8'b01001010;
    im[10]=8'b00001010;
    im[11]=8'b00001010;
    im[12]=8'b00101010;
    im[13]=8'b00001010;
    im[14]=8'b00001010;
    im[15]=8'b00001010;
    im[16]=8'b01001010;
    im[17]=8'b00101010;
    im[18]=8'b00001010;
    im[19]=8'b01001010;
    im[20]=8'b00001010;
    im[21]=8'b00001010;
    im[22]=8'b00001010;
    im[23]=8'b00001010;
    im[24]=8'b01101010;
    im[25]=8'b00001010;
    im[26]=8'b01001010;
    im[27]=8'b00101010;
    end
always@(posedge clk)
inst={im[pc],im[pc+1],im[pc+2],im[pc+3]};
endmodule
