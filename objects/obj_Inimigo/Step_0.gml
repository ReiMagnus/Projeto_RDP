
// Movimentação simples
//mp_linear_step(obj_Player.x, obj_Player.y, spd, false)

// Movimentação MaquinaDeEstados
switch(estado) {
	case estados.inicial :
		var _centro = point_distance(x, y, 320, 192);
		if(_centro <= 120) {estado = estados.atacando;}
		
		hsp = move[0] * spd;
		vsp = move[1] * spd;
		
		colisao_inimigo(obj_Inimigo)
		
		x += hsp;
		y += vsp;
		break;
		
	//case estados.procurando :
	//	move = [0, 0];
	//	break;
		
	case estados.atacando :
		var _player = instance_find(obj_Player, 0);
		
		var _toque = mp_potential_step(_player.x, _player.y, spd, false);
		
		if(distance_to_point(_player.x, _player.y) < 6) {
			estado = estados.morrendo;
		}
	
		//var _dir_player = point_direction(x, y, obj_Player.x-8, obj_Player.y-8);
		//hsp = lengthdir_x(spd, _dir_player);
		//vsp = lengthdir_y(spd, _dir_player);
		
		//// COLISÃO -------------
		//colisao_inimigo(obj_Inimigo);
		//colisao_inimigo(obj_Parede);
		
		//if(place_meeting(x, y, obj_Player)) {estado = estados.morrendo;}
		
		//x += hsp;
		//y += vsp;
		break;
		
	case estados.morrendo :
		instance_destroy();
		break;
}
