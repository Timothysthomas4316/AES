`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 05:32:11 PM
// Design Name: 
// Module Name: Rev_Map
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

//checked again 1
module Rev_Map(g,b);
input [7:0] b;                    // input byte
output [7:0] g;
//------------------------------------------------------------MX
 assign g[7]=b[5]^b[3]^1'b0;
 assign g[6]=b[7]^b[3]^1'b1;
 assign g[5]=b[6]^b[0]^1'b1;
 assign g[4]=b[7]^b[5]^b[3]^1'b0;
 assign g[3]=b[7]^b[6]^b[5]^b[4]^b[3]^1'b0;
 assign g[2]=b[6]^b[5]^b[3]^b[2]^b[0]^1'b0;
 assign g[1]=b[5]^b[4]^b[1]^1'b1;
 assign g[0]=b[6]^b[4]^b[1]^1'b1;
 //------------------------------------------------------------
endmodule
//------------------------------------------------------------MX
 /*assign g[7]=b[5]^b[3]^1'b0;
 assign g[6]=b[7]^b[3]^1'b1;
 assign g[5]=b[6]^b[0]^1'b1;
 assign g[4]=b[7]^b[5]^b[3]^1'b0;
 assign g[3]=b[7]^b[6]^b[5]^b[4]^b[3]^1'b0;
 assign g[2]=b[6]^b[5]^b[3]^b[2]^b[0]^1'b0;
 assign g[1]=b[5]^b[4]^b[1]^1'b1;
 assign g[0]=b[6]^b[4]^b[1]^1'b1;*/
 //------------------------------------------------------------
//------------------------------------------------------------X
 /*assign g[7]=b[4]^b[1];
 assign g[6]=b[7]^b[6]^b[5]^b[3]^b[1]^b[0];
 assign g[5]=b[7]^b[6]^b[5]^b[3]^b[2]^b[0];
 assign g[4]=b[6]^b[1];
 assign g[3]=b[6]^b[5]^b[4]^b[3]^b[2]^b[1];
 assign g[2]=b[7]^b[5]^b[4]^b[1];
 assign g[1]=b[5]^b[1];
 assign g[0]=b[2];*/
 //------------------------------------------------------------