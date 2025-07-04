
move = [0, 0];
hsp  = 0;
vsp  = 0;
spd  = 0.7;

enum estados {
	inicial,
	procurando,
	atacando,
	morrendo
}
estado = estados.inicial;

// FUNÇÕES ------------------------------------------------
function colisao_inimigo(_inst) { // Erro cronico aqui, loop infinito
	
	//if(place_meeting(x-2, y-2, _inst)) {instance_destroy()}
	
	if(place_meeting(x+sign(hsp), y, _inst)) {hsp = 0;}

	if(place_meeting(x, y+sign(vsp), _inst)) {vsp = 0;}
}