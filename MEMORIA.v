module MEMORIA(Tx,entrada,etapa,contador,clock);
    input wire [1:0] Tx;
    input wire clock;
    output reg [4:0] entrada, etapa;
    output integer contador;
    parameter RESET = 2'b00;
    parameter LOAD = 2'b01;
    parameter HOLD = 2'b10;
    parameter SHIFTL = 2'b11;
 
    initial begin
		entrada<= 4'd2;
		etapa<= 4'd0;
        contador <= 1'd0;
    end
       
    always @(posedge clock) begin
        if(Tx == LOAD) begin
            if(contador==0)begin
				entrada <= 4'd3;
				contador<= 1'd1;
            end
            if(contador==1)begin
				entrada <= 4'd4;
				contador<= 1'd2;
			end
			if (contador==2)begin
				entrada <= 4'd2;
				contador <= 1'd0;
			end
        end
    end
endmodule