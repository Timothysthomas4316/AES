`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 04:38:29 PM
// Design Name: 
// Module Name: GF2p4_addition
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
module GF2p4_addition(O,A,B);
input [3:0] A;   //input nibble
input [3:0] B;   //input nibble                     
output [3:0] O;  //output nibble       
//---------------------------                  
assign O[0]=A[0]^B[0];
assign O[1]=A[1]^B[1];
assign O[2]=A[2]^B[2];
assign O[3]=A[3]^B[3];
endmodule
