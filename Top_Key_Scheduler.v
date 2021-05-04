`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2020 05:36:38 PM
// Design Name: 
// Module Name: Top_Key_Scheduler
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


module Top_Key_Scheduler(Key,RK1,RK2,RK3,RK4,RK5,RK6,RK7,RK8,RK9,RK10);
input [0:127] Key;
output [0:127] RK1;
output [0:127]RK2;
output [0:127]RK3;
output [0:127]RK4;
output [0:127]RK5;
output [0:127]RK6;
output [0:127]RK7;
output [0:127]RK8;
output [0:127]RK9;
output [0:127]RK10;
Key_Scheduler KS1(Key,32'h01000000,RK1);
Key_Scheduler KS2(RK1,32'h02000000,RK2);
Key_Scheduler KS3(RK2,32'h04000000,RK3);
Key_Scheduler KS4(RK3,32'h08000000,RK4);
Key_Scheduler KS5(RK4,32'h10000000,RK5);
Key_Scheduler KS6(RK5,32'h20000000,RK6);
Key_Scheduler KS7(RK6,32'h40000000,RK7);
Key_Scheduler KS8(RK7,32'h80000000,RK8);
Key_Scheduler KS9(RK8,32'h1b000000,RK9);
Key_Scheduler KS10(RK9,32'h36000000,RK10);
endmodule
