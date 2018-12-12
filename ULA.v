module ULA(barramento, acumulador, ulaout, tula);
	input  wire [4:0] barramento;
	input  wire [4:0] acumulador;
	input  wire [4:0] tula;
	output reg [4:0] ulaout;

	parameter SOMA = 4'd0;
	parameter SUB = 4'd1;

	always @(tula or barramento or acumulador)
	begin
		case(tula)
		4'd0: begin
		ulaout = barramento + acumulador;
		end
		4'd1: begin
		ulaout = acumulador - barramento;
		end
		endcase
	end
endmodule
