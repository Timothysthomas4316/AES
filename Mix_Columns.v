`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2020 06:42:28 PM
// Design Name: 
// Module Name: Mix_Columns
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


module Mix_Columns(A,O);
input [0:31] A;
output [0:31] O;
wire [0:7] a,b,c,d,w1,w2,w3,w4,w5,w6,w7,w8;
assign a=A[0:7];
assign b=A[8:15];
assign c=A[16:23];
assign d=A[24:31];
mul2x m1(a,w1);
mul2x m2(b,w2);
mul2x m3(c,w3);
mul2x m4(d,w4);
assign w5= b ^ c ^ d;
assign w6= c ^ d ^ a;
assign w7= d ^ a ^ b;
assign w8= a ^ b ^ c;
assign O[0:7]=w1 ^ w5 ^ w2;
assign O[8:15]=w3 ^ w6 ^ w2;
assign O[16:23]=w3 ^ w7 ^ w4;
assign O[24:31]=w4 ^ w8 ^ w1;
endmodule
