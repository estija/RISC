`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 10:14:13 PM
// Design Name: 
// Module Name: alu
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
module alu(input[31:0]a,b, input[3:0]funct, output reg [31:0]s, output reg zero);
wire[31:0] logres,shtres,addres,calres;
wire cout,ovf,c1,c0;
reg x;
    logical l(a,b,funct[1:0],logres);
    shift sh(a,b[4:0],funct[0],shtres);
    compare c(a,b,c1,c0);
    add ad(a,b,funct[0],addres,cout);
    calc cal(a,b,funct[0],calres,ovf);
always@(*)
    begin
    casex(funct)
    4'b00xx:
        begin
        s=logres;
        zero=0;
        end
    4'b010x:
        begin
        s=shtres;
        zero=0;
        end
    4'b011x:
        begin
        s=addres;
        zero=0;
        end
    4'b10xx:
        case(funct[1:0])
        2'b00:
        if(c1&c0==0) zero=1;
        else zero=0;
        2'b01:
        if(c1&c0==0) zero=0;
        else zero=1;
        2'b10:
        if(c0==0&&c1==1) s=32'd0;
        else s=32'd1;
        endcase
    4'b111x:
        begin
        s=calres;
        zero=0;
        end
    default:
        begin
        zero=0;
        s=32'd0;
        end
    endcase
    end
endmodule
