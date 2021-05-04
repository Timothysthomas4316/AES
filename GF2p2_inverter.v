`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 03:58:01 PM
// Design Name: 
// Module Name: GF2p2_inverter
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
module GF2p2_inverter(O,A);
input [1:0] A;
output [1:0] O;
assign O[0]=A[1];
assign O[1]=A[0];
endmodule
