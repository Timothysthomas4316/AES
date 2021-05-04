`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 03:38:05 PM
// Design Name: 
// Module Name: GF2p4_inverter
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
module GF2p4_inverter(O,A);
input [3:0] A;                            // input nibble
output [3:0] O;                           // output after inversion
//----------------------------------------------------
wire [3:2] A1; //upper 2-bits
wire [1:0] A0; //lower 2-bits
wire [1:0] w1,w2,w3,w4,w5;//checked
//----------------------------------------------------
 assign A1=A[3:2];
 assign A0=A[1:0];
 //---------------------------------------------------
 GF2p2_addition I4A21(w1,A1,A0);
 GF2p2_multiplication I4M21(w2,A1,A0);
 GF2p2_sc_sq_sq I4SCSQSQ21(w3,w1);
 GF2p2_addition I4A22(w4,w2,w3);
 GF2p2_inverter I4I21(w5,w4);
 GF2p2_multiplication I4M22(O[3:2],w5,A0);
 GF2p2_multiplication I4M23(O[1:0],w5,A1);
endmodule
