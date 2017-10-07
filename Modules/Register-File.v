`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 08:54:44 PM
// Design Name: 
// Module Name: reg_file
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
module reg_file(input[4:0]radd1, radd2, wadd, input[31:0]datain, input wr, clk, output [31:0]dataout1, dataout2);
reg[31:0]regs[31:0];
initial
    begin
    regs[0]=32'd1;
    regs[1]=32'd2;
    regs[2]=32'd3;
    regs[3]=32'd4;
    regs[4]=32'd5;
    regs[5]=32'd6;
    regs[6]=32'd7;
    regs[7]=32'd8;
    regs[8]=32'd9;
    regs[9]=32'd10;
    regs[10]=32'd11;
    regs[11]=32'd12;
    regs[12]=32'd13;
    regs[13]=32'd14;
    regs[14]=32'd15;
    regs[15]=32'd16;
    regs[16]=32'd17;
    regs[17]=32'd18;
    regs[18]=32'd19;
    regs[19]=32'd20;
    regs[20]=32'd21;
    regs[21]=32'd22;
    regs[22]=32'd23;
    regs[23]=32'd24;
    regs[24]=32'd25;
    regs[25]=32'd26;
    regs[26]=32'd27;
    regs[27]=32'd28;
    regs[28]=32'd29;
    regs[29]=32'd30;
    regs[30]=32'd31;
    regs[31]=32'd32;
    end
always@(posedge clk)
    if(wr) regs[wadd]=datain;
assign dataout1=regs[radd1];
assign dataout2=regs[radd2];
endmodule
