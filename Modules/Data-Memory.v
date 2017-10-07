`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 08:54:44 PM
// Design Name: 
// Module Name: dm
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
module dm(input[31:0]add,data_in,input clk,wen,output[31:0]data_out);
reg [7:0]dm[255:0];
initial
    begin
    dm[0]=8'b00000000;
    dm[1]=8'b00000010;
    dm[2]=8'b00000011;
    dm[3]=8'b00000010;
    dm[4]=8'b00000010;
    dm[5]=8'b00000010;
    dm[6]=8'b00000010;
    dm[7]=8'b00000010;
    dm[8]=8'b00000010;
    dm[9]=8'b00000010;
    dm[10]=8'b00000010;
    dm[11]=8'b00000010;
    dm[12]=8'b00000010;
    dm[13]=8'b00000010;
    dm[14]=8'b00000010;
    dm[15]=8'b00000010;
    dm[16]=8'b00000010;
    dm[17]=8'b00000010;
    dm[18]=8'b00000010;
    dm[19]=8'b00000010;
    dm[20]=8'b00000010;
    dm[21]=8'b00000010;
    dm[22]=8'b00000010;
    dm[23]=8'b00000010;
    dm[24]=8'b00000010;
    dm[25]=8'b00000010;
    dm[26]=8'b00000010;
    dm[27]=8'b00000010;
    dm[28]=8'b00000010;
    dm[29]=8'b00000010;
    dm[30]=8'b00000010;
    dm[31]=8'b00000010;
    end
always@(posedge clk)
    begin
    if(wen)
        begin
        dm[add]=data_in[31:24];
        dm[add+1]=data_in[23:16];
        dm[add+2]=data_in[15:8];
        dm[add+3]=data_in[7:0];
        end
    end
assign data_out={dm[add],dm[add+1],dm[add+2],dm[add+3]};
endmodule
