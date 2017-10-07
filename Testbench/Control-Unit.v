`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 02:02:47 PM
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
reg[5:0]opcode;
wire reg_src,reg_wen,alu_src,i_type,w_src,mem_wen;
wire [1:0]alu_cnt,pc_cnt;
control uut(opcode,reg_src,reg_wen,alu_src,i_type,w_src,mem_wen,alu_cnt,pc_cnt);
initial begin
opcode=6'b000000;
end
always begin
#10 opcode=opcode+1;
end
endmodule
