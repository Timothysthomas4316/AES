`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2020 02:16:25 PM
// Design Name: 
// Module Name: AES_encryption
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:jjk
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module AES_encryption(PT,KEY,CT);
input [0:127] PT;
input [0:127] KEY;
output [0:127] CT;
wire [0:127] RK1,RK2,RK3,RK4,RK5,RK6,RK7,RK8,RK9,RK10,akey1,asub1,asr1,amc1,ark1,asub2,asr2,amc2,ark2;
wire [0:127] asub3,asr3,amc3,ark3,asub4,asr4,amc4,ark4,asub5,asr5,amc5,ark5,asub6,asr6,amc6,ark6;
wire [0:127] asub7,asr7,amc7,ark7,asub8,asr8,amc8,ark8,asub9,asr9,amc9,ark9,asub10,asr10,amc10,ark10;
Top_Key_Scheduler KS(KEY,RK1,RK2,RK3,RK4,RK5,RK6,RK7,RK8,RK9,RK10);

assign akey1= PT ^ KEY;

//Round 1
Top_Sbox TSB1(akey1,asub1);
Shift_Rows TSR1(asub1,asr1);
Top_Mixed_Columns TMC1(asr1,amc1);
assign ark1= amc1 ^ RK1;
//Round 2
Top_Sbox TSB2(ark1,asub2);
Shift_Rows TSR2(asub2,asr2);
Top_Mixed_Columns TMC2(asr2,amc2);
assign ark2= amc2 ^ RK2;
//Round 3
Top_Sbox TSB3(ark2,asub3);
Shift_Rows TSR3(asub3,asr3);
Top_Mixed_Columns TMC3(asr3,amc3);
assign ark3= amc3 ^ RK3;
//Round 4
Top_Sbox TSB4(ark3,asub4);
Shift_Rows TSR4(asub4,asr4);
Top_Mixed_Columns TMC4(asr4,amc4);
assign ark4= amc4 ^ RK4;
//Round 5
Top_Sbox TSB5(ark4,asub5);
Shift_Rows TSR5(asub5,asr5);
Top_Mixed_Columns TMC5(asr5,amc5);
assign ark5= amc5 ^ RK5;
//Round 6<---
Top_Sbox TSB6(ark5,asub6);
Shift_Rows TSR6(asub6,asr6);
Top_Mixed_Columns TMC6(asr6,amc6);
assign ark6= amc6 ^ RK6;
//Round 7
Top_Sbox TSB7(ark6,asub7);
Shift_Rows TSR7(asub7,asr7);
Top_Mixed_Columns TMC7(asr7,amc7);
assign ark7= amc7 ^ RK7;
//Round 8
Top_Sbox TSB8(ark7,asub8);
Shift_Rows TSR8(asub8,asr8);
Top_Mixed_Columns TMC8(asr8,amc8);
assign ark8= amc8 ^ RK8;
//Round 9
Top_Sbox TSB9(ark8,asub9);
Shift_Rows TSR9(asub9,asr9);
Top_Mixed_Columns TMC9(asr9,amc9);
assign ark9= amc9 ^ RK9;
// Last Round
Top_Sbox TSB10(ark9,asub10);
Shift_Rows TSR10(asub10,asr10);
//Top_Mixed_Columns TMC10(asr10,amc10);
assign ark10= asr10 ^ RK10;
//end 
assign CT=ark10;
endmodule
