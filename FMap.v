`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 05:27:12 PM
// Design Name: 
// Module Name: FMap
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

//verrified X^-1 checked again 1
module FMap(b,g);
input [7:0] g;                  // input byte
output [7:0] b;                 // output after Mapping 
//-------------------------------------------------------
 assign b[7]=g[7]^g[6]^g[5]^g[2]^g[1]^g[0];
 assign b[6]=g[6]^g[5]^g[4]^g[0];
 assign b[5]=g[6]^g[5]^g[1]^g[0];
 assign b[4]=g[7]^g[6]^g[5]^g[0];
 assign b[3]=g[7]^g[4]^g[3]^g[1]^g[0];
 assign b[2]=g[0];
 assign b[1]=g[6]^g[5]^g[0];
 assign b[0]=g[6]^g[3]^g[2]^g[1]^g[0];
 //--------------------------------------------------------
endmodule
