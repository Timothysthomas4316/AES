`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 05:20:11 PM
// Design Name: 
// Module Name: Norm_S_box
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
module bSbox(A,O);
input [7:0]A;
output [7:0]O;
wire [7:0]w1,w2;
//-------------------
FMap FM1(w1,A);//x^-1 
GF2p8_inverter I81(w2,w1);
Rev_Map RM1(O,w2);              // <-- affine mapping also takes in this module //have changes MX->X
//affine_map AFM(O,w3);          //<-- already done in previous step
endmodule
