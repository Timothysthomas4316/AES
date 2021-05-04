`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 03:21:34 PM
// Design Name: 
// Module Name: GF2p8_inverter
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
module GF2p8_inverter(O,A);
input [7:0] A;                            // input byte
output [7:0] O;                           // output after inversion
//----------------------------------------------------
wire [7:4] A1; //upper nibble
wire [3:0] A0; //lower nibble
wire [3:0] w1,w2,w3,w4,w5;//checked
//----------------------------------------------------
 assign A1=A[7:4];
 assign A0=A[3:0];
 //---------------------------------------------------
 GF2p4_addition I8A41(w1,A1,A0); //CAN ADD PIPELINE REGs heRE
 GF2p4_multiplication I8M41(w2,A1,A0);
 GF2p4_sc_sq_sq I8SCSQSQ41(w3,w1);
 GF2p4_addition I8A42(w4,w2,w3);
 
 GF2p4_inverter I8I41(w5,w4);
 
 GF2p4_multiplication I8M42(O[7:4],w5,A0);
 GF2p4_multiplication I8M43(O[3:0],w5,A1);
endmodule
