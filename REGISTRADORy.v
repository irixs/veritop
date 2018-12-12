module REGISTRADORy(acumulador,ulaout,ty,clock); //entrada de dados
	input wire clock;
	input wire[4:0] ulaout,ty;
	output reg [4:0] acumulador;
	
	parameter CLEAR = 4'd0;
    parameter LOAD = 4'd1;
    parameter SHIFTL = 4'd3;
    
	always @ (posedge clock) begin
		case (ty)
			CLEAR : acumulador <= 4'd0;
			LOAD : acumulador <= ulaout;
			SHIFTL: acumulador <= acumulador <<1;	
		endcase
	end
endmodule
