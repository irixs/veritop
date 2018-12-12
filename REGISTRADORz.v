module REGISTRADORz(saida,acumulador,tz,clock); //sysout
	input wire clock;
	input wire [4:0] acumulador,tz;
	output reg [4:0] saida;
	
	parameter CLEAR = 4'd0;
	parameter LOAD = 4'd1;
	
	always @ (posedge clock) begin
		case (tz)
		CLEAR : saida <= 4'd0;
		LOAD : saida <= acumulador;
		
		endcase
	end
endmodule
