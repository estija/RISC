`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2017 07:19:44 PM
// Design Name: 
// Module Name: alu_control
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
module alu_control(input[1:0]opcode,input[3:0]funct,input sel,output reg[3:0]alu_cnt);
always@(*)
    begin
    case(sel)
    1'b0:
        case(opcode)
        2'b00:
        alu_cnt=4'b0110;//ls
        2'b01:
        alu_cnt=4'b1000;//beq
        2'b10:
        alu_cnt=4'b1001;//bneq
        2'b11:
        alu_cnt=funct;
        endcase
    1'b1://imminst
        case(opcode)
        2'b00:
        alu_cnt=4'b0110;//addi
        2'b01:
        alu_cnt=4'b1010;//slti
        2'b10:
        alu_cnt=4'b0000;//ori
        2'b11:
        alu_cnt=4'b0001;//andi
        endcase
    endcase
    end
endmodule
