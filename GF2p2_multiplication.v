`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 04:21:02 PM
// Design Name: 
// Module Name: GF2p2_multiplication
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

//checked 1
module GF2p2_multiplication(O,A,B);
input [1:0]A;   
input [1:0]B;                         // input byte
output [1:0]O;                           // output after inversion
//----------------------------------------------------
wire A1;
wire A0;
wire B1;
wire B0;
wire w1,w2,w3,w4,w5;
//----------------------------------------------------
 assign A1=A[1];
 assign A0=A[0];
 assign B1=B[1];
 assign B0=B[0];
 //----------------------------------------------------
 assign w1=A1 & B1;
 assign w2=A0 & B0;
 assign w3=A1 ^ A0;
 assign w4=B1 ^ B0;
 assign w5=w3 & w4;
 assign O[1]=w1 ^ w5;
 assign O[0]=w2 ^ w5;
endmodule
