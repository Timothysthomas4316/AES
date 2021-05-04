`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2020 04:15:34 PM
// Design Name: 
// Module Name: testbench
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


module AES_TB();
reg [0:127] KEY,PT;
wire [0:127] CT;
AES_encryption AESE(PT,KEY,CT);
initial begin
 KEY=128'h2b7e151628aed2a6abf7158809cf4f3c;
 PT =128'h3243f6a8885a308d313198a2e0370734;
 #100;
end

endmodule
