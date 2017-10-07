`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2017 10:52:27 PM
// Design Name: 
// Module Name: sign_ext
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
module sign_ext(input[15:0]in,output[31:0]out);
assign out={{16{in[15]}},in};
endmodule
