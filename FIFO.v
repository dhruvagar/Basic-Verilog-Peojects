`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:56:48 06/18/2021 
// Design Name: 
// Module Name:    FIFO 
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
module FIFO(

input rw,clk,
input [3:0] data_in,
output full,empty,
output reg [3:0] data_out
    );

reg [3:0] stack [0:7];
reg [2:0] counter = 3'd0;
reg fulll=1'b0,emptyy=1'b1;

initial
begin
stack[0]= 4'b0;
stack[1]= 4'b0;
stack[2]= 4'b0;
stack[3]= 4'b0;
stack[4]= 4'b0;
stack[5]= 4'b0;
stack[6]= 4'b0;
stack[7]= 4'b0;
data_out= 4'b0;
end 

always@(posedge clk)
begin
if (counter == 3'd7)
fulll <= 1'b1;
else
fulll <= 1'b0;

if (counter == 3'd0)
emptyy <= 1'b1;
else
emptyy <= 1'b0;
/////////write
if (rw && (~fulll))
begin
stack [counter]<= data_in;

if (counter < 3'd7)
begin
counter <= counter + 3'd1;
end
end
/////////read
if (~rw && (~emptyy))
begin
data_out <= stack[7-counter];
if (counter > 3'd0)
begin
counter <= counter - 3'd1;
end
end

end

assign full= fulll;
assign empty= emptyy;

endmodule
