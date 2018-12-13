module CPU(etapa,tx,ty,tz,tula,entrada,barramento,acumulador,saida,clock,ulaout,estado,contador);
	input wire clock;
	output[4:0] entrada;
	output[4:0] saida,acumulador,contador;
	output[4:0] etapa,tx,ty,tz,tula,barramento,ulaout,estado;
	
	CONTROLE controle(etapa,tx,ty,tz,tula,clock,estado,contador);
	ULA ula(barramento, acumulador, ulaout, tula);
	REGISTRADORx Rx(entrada,barramento,tx,clock);
	REGISTRADORy Ry(acumulador,ulaout,ty,clock);
	REGISTRADORz Rz(saida,acumulador,tz,clock);
	MEMORIA mem (tx,entrada,etapa,contador,clock);
	
endmodule
