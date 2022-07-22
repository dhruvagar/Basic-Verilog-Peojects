`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:18 06/06/2021 
// Design Name: 
// Module Name:    mux8_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux8_1(
    input a0,
    input a1,
    input a2,
    input a3,
    input a4,
    input a5,
    input a6,
    input a7,
    input [2:0] s,
    output x
    );
wire u0,u1;
	 
mux4_1 X0(a0,a1,a2,a3,s[1:0],u0);
mux4_1 X1(a4,a5,a6,a7,s[1:0],u1);
mux2_1 X2(u0,u1,s[2],x);

endmodule
