`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 04:01:46 PM
// Design Name: 
// Module Name: GF2p4_multiplication
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
module GF2p4_multiplication(O,A,B);
input [3:0] A;   
input [3:0] B;                         // input nibble
output [3:0] O;                        // output after multiplication
//----------------------------------------------------
wire [3:2] A1;
wire [1:0] A0;
wire [3:2] B1;
wire [1:0] B0;
wire [1:0] w1,w2,w3,w4,w5,w6;//checked 
//----------------------------------------------------
 assign A1=A[3:2];//here
 assign A0=A[1:0];
 assign B1=B[3:2];
 assign B0=B[1:0];
//----------------------------------------------------
GF2p2_multiplication M4M21(w1,A1,B1);
GF2p2_multiplication M4M22(w2,A0,B0);
GF2p2_addition M4A21(w3,A1,A0);
GF2p2_addition M4A22(w4,B1,B0);
GF2p2_multiplication M4M23(w5,w3,w4);
GF2p2_sc_sq M4SCSQ21(w6,w5);
GF2p2_addition M4A23(O[3:2],w1,w6);
GF2p2_addition M4A24(O[1:0],w2,w6);
endmodule
