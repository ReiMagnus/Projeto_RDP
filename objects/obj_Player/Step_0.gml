
// Vetor de movimento ---
var _move = [
-keyboard_check(ord("A")) + keyboard_check(ord("D")),// HSP
-keyboard_check(ord("W")) + keyboard_check(ord("S")) // VSP
];

// Vetor de visão ---
var _mira = [
-keyboard_check(vk_left) + keyboard_check(vk_right),// Horizontal
-keyboard_check(vk_up)   + keyboard_check(vk_down)  // Vertical
]

// MOVIMENTAÇÂO ------------------------------------
// Erro diagonal não consertado
//hsp = moveH * spd;
//vsp = moveV * spd;

// Erro diagonal consertado
if(_move[0] != 0 || _move[1] != 0) {
    var _dir = point_direction(0, 0, _move[0], _move[1]);
    hsp = lengthdir_x(spd, _dir);
    vsp = lengthdir_y(spd, _dir);
} else {
    hsp = 0;
    vsp = 0;
}

// Colisão ------
colisao_player(obj_Parede);

// COMBATE -----------------------------------------
if( !(_mira[0] == 0 and _mira[1] == 0) and recarga >= temp_recarga ) {
	var _dir = point_direction(0, 0, _mira[0], _mira[1]);
	var _xmira = x + 6 * _mira[0];
	var _ymira = y + 6 * _mira[1];
	var _inst = instance_create_layer(_xmira, _ymira, "instances", obj_Bala);
	_inst.direction = _dir;
	recarga = 0;
}

if(recarga < temp_recarga) {recarga++;}

// -------
x += hsp;
y += vsp;