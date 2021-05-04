`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2020 12:00:48 AM
// Design Name: 
// Module Name: G_Function
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


module G_Function(LC,O);
input [0:31] LC; // Last Column of key 0
output [0:31] O;
wire [0:31] w1;
//Circular Rotation
assign w1[0:7]=LC[8:15];
assign w1[8:15]=LC[16:23];
assign w1[16:23]=LC[24:31];
assign w1[24:31]=LC[0:7];
//Circular Rotation complete
// start SBOX
bSbox S1(w1 [0:7],O[0:7]);
bSbox S2(w1[8:15],O[8:15]);
bSbox S3(w1[16:23],O[16:23]);
bSbox S4(w1[24:31],O[24:31]);
// substitution complete
//RCON is done in Key_Scheduler

endmodule
