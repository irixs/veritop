module CONTROLE(etapa,tx,ty,tz,tula,clock,estado,contador);
	parameter CLEAR = 4'd0;
	parameter LOAD = 4'd1;
	parameter HOLD = 4'd2;
	parameter SHIFTL = 4'd3;

	input wire clock;
	input wire[4:0] etapa,contador;
	output reg[4:0] tx,ty,tz,tula,estado;
	
	initial begin
		estado<= etapa;
	end

	always @ (posedge clock) begin
		case(estado)
		4'd0 : begin
			estado <= 4'd1;//vai pro primeiro estado util
			tx <= LOAD;
			ty <= CLEAR;
			tz <= CLEAR;
			tula<=4'd0;
			//TX=1 TY=0 TZ=0 TULA=0
		end
		4'd1 : begin
			estado <= 4'd2;
			tx<=LOAD;
			ty<=LOAD;
			tz<=CLEAR;
			tula<=4'd0;
			//TX=1 TY=1 TZ=0 TULA=0
		end
		4'd2 :begin
			estado <=4'd3;
			tx<=LOAD;
			ty<=LOAD;
			tz<=CLEAR;
			tula<=4'd0;
			//TX=1 TY=1 TZ=0 TULA=0
		end
		4'd3 : begin
			estado<=4'd4;
			tx<=CLEAR;
			ty<=LOAD;
			tz<=CLEAR;
			tula<=4'd1;
			//TX=0 TY=1 TZ=0 TULA=1
		end
		4'd4 : begin
			estado<=4'd5;
			tx<=CLEAR;
			ty<=SHIFTL;
			tz<=CLEAR;
			tula<=4'd0;
			//TX=0 TY=3 TZ=0 TULA=0
		end
		4'd5 : begin
			estado<=4'd6;
			tx<=CLEAR;
			ty<=CLEAR;
			tz<=LOAD;
			tula<=4'd0;
			//TX=0 TY=0 TZ=1 TULA=0
		end	
		4'd6 : begin
			estado<= 4'd1;
			tx <= LOAD;
			ty <= CLEAR;
			tz <= CLEAR;
			tula<=4'd0;
			//TX=1 TY=0 TZ=0 TULA=0
		end
	endcase
end
endmodule
