`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 04:41:43 PM
// Design Name: 
// Module Name: GF2p2_sc_sq_sq
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
module GF2p2_sc_sq_sq(O,A);
input [1:0]A;  //input 2 bits
output [1:0]O; //op 2 bits
//old code starts here
//assign O[0]=A[0];
//assign O[1]=A[1] ^ A[0];
//new code begins here
assign O[1]=A[1];
assign O[0]=A[0]^A[1];
//new code ends here
endmodule
