`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 04:48:04 PM
// Design Name: 
// Module Name: GF2p4_sc_sq_sq
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
module GF2p4_sc_sq_sq(O,A);
input [3:0] A;   
output [3:0] O;                           // output after inversion
//----------------------------------------------------
wire [3:2] A1;
wire [1:0] A0;
wire [1:0] w1,w2;
assign A1=A[3:2];
assign A0=A[1:0];
//----------------------------------------------------changed code from here
GF2p2_addition SCSQSQ4A21(w1,A1,A0);
GF2p2_inverter SCSQSQ4I21(O[3:2],w1);
GF2p2_sc_sq SCSQSQ4SCSQ21(w2,A0);
GF2p2_inverter SCSQSQ4I22(O[1:0],w2);
//---------------------------------------
endmodule
/*assign A1=A[3:2];
assign A0=A[1:0];
GF2p2_sc_sc_sq_sq SCSQSQ4SCSCSQSQ21(w1,A1);
GF2p2_sc_sq_sq SCSQSQ4SCSQSQ21(w2,A0);
GF2p2_addition SCSQSQ4A21(O[1:0],w1,w2);
assign O[3:2]=w2;*/
//---------------------------------------
/*GF2p2_addition SCSQSQ4A21(w1,A1,A0);
GF2p2_inverter SCSQSQ4I21(O[3:2],w1);
GF2p2_sc_sq SCSQSQ4SCSQ21(w2,A0);
GF2p2_inverter SCSQSQ4I22(O[1:0],w2);*/