`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2017 01:36:13 PM
// Design Name: 
// Module Name: prog_cnt
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
module pc(input[31:0]pcin,input[25:0]inst,input clk,input[1:0]cnt,output reg[31:0]pcout);
wire[31:0] p,j,b,jse,bse;
assign p=pcin+32'd4;
//assign b={{14{inst[15]}},inst[15:0],{2{1'b0}}};
//assign j={p[31:28],inst[25:0],{2{1'b0}}};
sign_ext se1(inst[15:0],bse);
sign_extend se2(inst,jse);
shift_unit s1(bse,2,b);
shift_unit s2(jse,2,j);
always@(posedge clk)
    begin
    case(cnt)
       2'b00:pcout=p;
       2'b01:pcout=p+b;
       2'b10:pcout=j;
    endcase
    end
endmodule
