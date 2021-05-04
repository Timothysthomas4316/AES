`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 04:29:48 PM
// Design Name: 
// Module Name: GF2p2_addition
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

//1
module GF2p2_addition(O,A,B);
input [1:0]A;
input [1:0]B;
output [1:0]O;
assign O[0]=A[0]^B[0];
assign O[1]=A[1]^B[1];
endmodule
