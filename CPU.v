module CPU(etapa,tx,ty,tz,tula,entrada,barramento,acumulador,saida,clock,ulaout,estado);
	input wire clock;
	input [4:0] entrada;
	output[4:0] saida,acumulador;
	output[4:0] etapa,tx,ty,tz,tula,barramento,ulaout,estado;
	
	CONTROLE controle(etapa,tx,ty,tz,tula,clock,estado);
	ULA ula(barramento, acumulador, ulaout, tula);
	REGISTRADORx Rx(entrada,barramento,tx,clock);
	REGISTRADORy Ry(acumulador,ulaout,ty,clock);
	REGISTRADORz Rz(saida,acumulador,tz,clock);
	
endmodule
