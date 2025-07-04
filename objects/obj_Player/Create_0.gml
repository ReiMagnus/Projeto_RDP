
// Movimentação -----
hsp = 0;
vsp = 0;
spd = 1;

// Combate  -----
temp_recarga = 30; // frame em jogo, 1 seg = 60 franes
recarga = temp_recarga;

// FUNÇÕES ------------------------------------------------

function colisao_player(_inst) {
	if(place_meeting(x+hsp, y, _inst)) {
	while(!place_meeting(x+sign(hsp), y, _inst)) {
		x += sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x, y+vsp, _inst)) {
	while(!place_meeting(x, y+sign(vsp), _inst)) {
		y += sign(vsp);
	}
	vsp = 0;
}
}