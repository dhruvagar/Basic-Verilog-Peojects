`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:18:42 07/09/2021 
// Design Name: 
// Module Name:    multiplier8bit 
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
module multiplier8bit(
    input [7:0] A,
    input [7:0] B,
    output [15:0] M
    );

assign M = A*B; 
endmodule
