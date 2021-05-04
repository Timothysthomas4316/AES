`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2020 12:42:47 AM
// Design Name: 
// Module Name: Shift_Rows
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


module Shift_Rows(A,O);
input [0:127] A;
output [0:127] O;
//First row
assign O[0:7]=A[0:7];
assign O[32:39]=A[32:39];
assign O[64:71]=A[64:71];
assign O[96:103]=A[96:103];
//second rown
assign O[8:15]=A[40:47];
assign O[40:47]=A[72:79];
assign O[72:79]=A[104:111];
assign O[104:111]=A[8:15];
//third row
assign O[16:23]=A[80:87];
assign O[48:55]=A[112:119];
assign O[80:87]=A[16:23];
assign O[112:119]=A[48:55];
//Fourth row
assign O[24:31]=A[120:127];
assign O[56:63]=A[24:31];
assign O[88:95]=A[56:63];
assign O[120:127]=A[88:95];
/*assign O[0:31]=A[0:31]; // First row remains first row
//Second row
assign O[32:39]=A[40:47];
assign O[40:47]=A[48:55];
assign O[48:55]=A[56:63];
assign O[56:63]=A[32:39];
//thrid row
assign O[64:71]=A[80:87];
assign O[72:79]=A[88:95];
assign O[80:87]=A[64:71];
assign O[88:95]=A[72:79];
//Fourth row
assign O[96:103]=A[120:127];
assign O[104:111]=A[96:103];
assign O[112:119]=A[104:111];
assign O[120:127]=A[112:119];*/
endmodule
