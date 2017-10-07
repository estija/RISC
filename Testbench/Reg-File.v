`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2017 01:51:55 PM
// Design Name: 
// Module Name: reg_test
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
module reg_test;
reg[4:0]radd1, radd2, wadd;
reg[31:0]datain;
reg wr, clk;
wire[31:0]dataout1, dataout2;
reg_file uut(radd1, radd2, wadd, datain, wr, clk, dataout1, dataout2);
initial
    begin
    clk=0;
    wr=0;
    radd1=5'b00001;
    radd2=5'b00100;
    wadd=5'b00000;
    datain=32'h00887000;
    end
always
    begin
    #10 clk=~clk;
    #10 wr=~wr;
    #10 radd1=radd1+1;
        radd2=radd2+1;
        wadd=wadd+1;
    end
endmodule
