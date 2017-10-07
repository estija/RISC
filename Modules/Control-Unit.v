`timescale 1ns / 1ps

module control_unit(input [5:0]opcode,output reg_src,reg_wen,alu_src,w_src,mem_wen,check_immed,output [1:0]alu_cnt,pc_cnt);
reg [7:0]opcode_mem[15:0];                
initial
    begin
    opcode_mem[0]=8'b00000011;
    opcode_mem[1]=8'b00000011;
    opcode_mem[2]=8'b00000011;
    opcode_mem[3]=8'b00000011;
    opcode_mem[4]=8'b00000011;
    opcode_mem[5]=8'b00000011;
    opcode_mem[6]=8'b00000011;
    opcode_mem[7]=8'b00000011;
    opcode_mem[8]=8'b00000011;
    opcode_mem[9]=8'b00000011;
    opcode_mem[10]=8'b00001110;
    opcode_mem[11]=8'b00011100;
    opcode_mem[12]=8'b00100000;
    opcode_mem[13]=8'b00100000;        
    opcode_mem[14]=8'b10000110;        //additional bit
    opcode_mem[15]=8'b10000110;        //additional bit
    end
assign alu_cnt=opcode[5:4];
assign reg_src=opcode_mem[opcode[3:0]][0];
assign reg_wen=opcode_mem[opcode[3:0]][1];
assign alu_src=opcode_mem[opcode[3:0]][2];
assign w_src=opcode_mem[opcode[3:0]][3];
assign mem_wen=opcode_mem[opcode[3:0]][4];
assign pc_cnt[0]=opcode_mem[opcode[3:0]][5];
assign check_immed=opcode_mem[opcode[3:0]][7];
assign pc_cnt[1]=~(opcode[0]|opcode[1]|opcode[2]|opcode[3]|opcode[4]|opcode[5]);
endmodule
