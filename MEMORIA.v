module MEMORIA(tx,entrada,etapa,contador,clock);
    input wire [4:0] tx;
    input wire clock;
    output reg [4:0] entrada,etapa,contador;
    parameter LOAD = 4'd1;
 
    initial begin
		entrada<= 4'd5;
		etapa<= 4'd0;
        contador <= 4'd0;
    end
       
    always @(posedge clock) begin
        if(tx == LOAD) begin
            if(contador==0)begin
				entrada <= 4'd2;
				contador <= 4'd1;
            end
            if(contador==1)begin
				entrada <= 4'd3;
				contador <= 4'd2;
			end
			if(contador==2)begin
				entrada <= 4'd5;
				contador <= 4'd0;
			end
        end
    end
endmodule
