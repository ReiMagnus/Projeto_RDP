
timer_spawn--;
time--;

if(timer_spawn <= 0) {
	var _xcentro = 320; 
	var _ycentro = 192;
	
	var _move = [0, 0];
	var _lado = irandom(3);
	var xx, yy;
	
	switch(_lado) { // 320 192
		case 0 : // Esquerda
			xx = _xcentro - 152;
			yy = _ycentro - 24 + (16 * irandom(3));
			_move = [1, 0];
			break;
		case 1 : // Topo 
			xx = _xcentro - 24 + (16 * irandom(3));
			yy = _ycentro - 152;
			_move = [0, 1];
			break;
		case 2 : // Diretira
			xx = _xcentro + 152;
			yy = _ycentro - 24 + (16 * irandom(3));
			_move = [-1, 0];
			break;
		case 3 : // Baixo
			xx = _xcentro - 24 + (16 * irandom(3));
			yy = _ycentro + 152;
			_move = [0, -1];
			break;
	}
	var _inst = instance_create_layer(xx, yy, "Instances", obj_Inimigo);
	_inst.move = _move;
	
	
	timer_spawn = choose(30, 45, 60);
}


