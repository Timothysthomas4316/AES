`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2020 03:16:59 PM
// Design Name: 
// Module Name: Top_Sbox
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


module Top_Sbox(A,O);
input [0:127] A;
output [0:127] O;
bSbox B1(A[0:7],O[0:7]);
bSbox B2(A[8:15],O[8:15]);
bSbox B3(A[16:23],O[16:23]);
bSbox B4(A[24:31],O[24:31]);
bSbox B5(A[32:39],O[32:39]);
bSbox B6(A[40:47],O[40:47]);
bSbox B7(A[48:55],O[48:55]);
bSbox B8(A[56:63],O[56:63]);
bSbox B9(A[64:71],O[64:71]);
bSbox B10(A[72:79],O[72:79]);
bSbox B11(A[80:87],O[80:87]);
bSbox B12(A[88:95],O[88:95]);
bSbox B13(A[96:103],O[96:103]);
bSbox B14(A[104:111],O[104:111]);
bSbox B15(A[112:119],O[112:119]);
bSbox B16(A[120:127],O[120:127]);
endmodule
