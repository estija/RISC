`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2017 08:54:44 PM
// Design Name: 
// Module Name: processor
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
module processor(input clk, rst, output reg [31:0] alures, npc,in,da,md);
wire[31:0]new_pc,instruction,data1,data2,alu_res,mem_data,se;
wire[25:0]jb_add;
wire[4:0]rs,rt;
reg[4:0]rd;
wire[3:0]funct;
wire reg_dest,j,b,mem_wen,reg_wen,alu_src,w_src,alu_sel,zero;
wire[1:0]alu_cnt;
reg[31:0] pc0,program_counter,off_dat,w_data;
wire[5:0]opcode,funcode;
initial pc0=32'd0;

always@(posedge clk)
    begin
    if(rst) program_counter=pc0;
    else program_counter=new_pc;
    npc=new_pc;
    end
    
always@(*)
    begin
    rd=(reg_dest)?instruction[15:11]:rt;
    off_dat=(alu_src)?se:data2;
    w_data=(w_src)?mem_data:alu_res;
    alures=alu_res;
    in=instruction;
    da=data1;
    md=w_data;
    end

im i(program_counter,clk,instruction);
split s1(instruction,rs,rt,opcode,funcode,jb_add);
control_unit c(opcode,reg_dest,reg_wen,alu_src,w_src,mem_wen,alu_sel,alu_cnt,{{j},{b}});
reg_file rf(rs,rt,rd,w_data,reg_wen,clk,data1,data2);
alu_control ac(alu_cnt,funcode[3:0],alu_sel,funct);
sign_ext se3(jb_add[15:0],se);
alu a(data1,off_dat,funct,alu_res,zero);
dm d(alu_res,data2,clk,mem_wen,mem_data);
pc p(program_counter,jb_add,clk,{{j},{b&zero}},new_pc);
endmodule
