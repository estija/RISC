`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 10:14:13 PM
// Design Name: 
// Module Name: compare
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
module compare(input[31:0]a,b,output reg c1,c0);
wire [31:0]addres;
add ad(a,b,1'b1,addres,cout);
reg cmp_res;
integer i=0;
always@(addres)
    begin
    cmp_res=a[31]&(~b[31]);
    for(i=31;i>0;i=i-1)
        begin
        cmp_res=cmp_res|(a[i-1]&(~b[i-1])&(~(a[i]&(~b[i]))));
        end
    if(addres==32'd0)
        begin
        c0=1;
        c1=1;
        end
    else if(cmp_res==1)
        begin
        c0=0;
        c1=1;
        end
    else
        begin
        c0=1;
        c1=0;
        end
    end
endmodule
