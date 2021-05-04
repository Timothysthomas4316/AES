`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2020 05:45:29 PM
// Design Name: 
// Module Name: S_Box_testbench
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


module S_Box_testbench();
reg [7:0] B;
wire [7:0] sub;
bSbox DUT(B,sub);
integer i;

initial begin
B=8'd0;
for(i=0;i<256;i=i+1)
begin
#10 assign B=B+8'd1;
end
end
endmodule
