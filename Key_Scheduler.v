`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2020 12:00:07 AM
// Design Name: 
// Module Name: Key_Scheduler
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


module Key_Scheduler(Key,RCON,k);
input [0:127] Key;
input [0:31] RCON;
output [0:127] k;
wire [0:31] w0,w1,w2,w3,wire1,wire2;
// Make it a matrix with four coulmns each with 32 bits, columns are w0 w1 w2 w3.
assign w0 = Key[0:31];
assign w1 = Key[32:63];
assign w2 = Key[64:95];
assign w3 = Key[96:127];
//G_Function without RCON
G_Function GF1(w3,wire1);
// RCON
assign k[0:31]= wire1 ^ RCON ^ w0;
assign k[32:63]= k[0:31] ^ w1;
assign k[64:95]= k[32:63] ^ w2;
assign k[96:127]= k[64:95] ^ w3;
endmodule
