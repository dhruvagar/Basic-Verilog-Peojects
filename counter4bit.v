`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:46 06/12/2021 
// Design Name: 
// Module Name:    counter4bit 
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
module counter4bit(
    input clk,
    output reg[3:0] counter= 4'b0000
    );

always@(posedge clk)
begin
counter<=counter+4'b0001;
end

endmodule
