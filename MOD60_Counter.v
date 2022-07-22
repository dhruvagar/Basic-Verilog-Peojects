`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:18 06/16/2021 
// Design Name: 
// Module Name:    MOD60_Counter 
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
module MOD60_Counter(
    input clk,
    input rst,
    output reg [3:0] count0,
    output reg [3:0] count1
    );
always@(posedge clk)
begin 
     if (rst==1)
	  begin
	       count0<= 4'd0;
			 count1<= 4'd0;
	  end
	  
	  else
	  begin
	  
	       if (count0 == 4'd9)
	       begin
	           count0<= 4'd0;
			     count1<= count1+ 4'd1;
	       end
	       else if (count1==4'd6)
	       begin
	           count1<=4'd0;
				  count0<=4'd0;
	       end
	       else 
	           count0<= count0+ 4'd1;
	       end
	  
      end
		
endmodule
