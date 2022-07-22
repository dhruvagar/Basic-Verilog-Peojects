`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:52:06 07/09/2021 
// Design Name: 
// Module Name:    full_subtractor8bit 
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
module full_subtractor8bit(
    input [7:0] A,
    input [7:0] B,
    input Bin,
    output [7:0] D,
    output Bout
    );

wire [8:0] C;
assign C[0] = Bin;	 
genvar i;
 
generate
for(i=0; i<8; i=i+1)
begin
full_subtractor x0(A[i],B[i],C[i],D[i],C[i+1]);
end
endgenerate

assign Bout = C[8];

endmodule
