`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2020 03:45:13 PM
// Design Name: 
// Module Name: Top_Mixed_Columns
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


module Top_Mixed_Columns(A,O);
input [0:127] A;
output [0:127] O;
Mix_Columns TMCmc1(A[0:31],O[0:31]);
Mix_Columns TMCmc2(A[32:63],O[32:63]);
Mix_Columns TMCmc3(A[64:95],O[64:95]);
Mix_Columns TMCmc4(A[96:127],O[96:127]);
endmodule
