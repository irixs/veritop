module REGISTRADORx(entrada,barramento,tx,clock); //entrada de dados
	input wire clock;
	input wire[4:0] entrada,tx;
	output reg [4:0] barramento;
	
	parameter CLEAR = 4'd0;
    parameter LOAD = 4'd1;
    
    always @ (posedge clock) begin
		case (tx)
			CLEAR : barramento <= 4'd0;
			LOAD : barramento <= entrada;
		endcase
	end
endmodule
