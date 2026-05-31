module Mycounter(CLK,RST,OUT);
	input CLK,RST;
	output reg [3:0]OUT;
	
	always @(posedge CLK)begin
		if(RST == 1'b1)
			OUT<= 4'b0000;
		else
			OUT <= OUT +1;
	end
endmodule
