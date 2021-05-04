`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2020 11:19:08 PM
// Design Name: 
// Module Name: mul2x
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


module mul2x(A,O);
input [7:0] A;
output [7:0] O;
wire [7:0] w1;
assign w1=A<<1;
assign  O= A[7]?  (w1 ^ 8'h1b) : w1 ;
endmodule
