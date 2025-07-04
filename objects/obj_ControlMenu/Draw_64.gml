
// Usado para o menu com Mouse
var _xm = device_mouse_x_to_gui(0);
var _ym = device_mouse_y_to_gui(0);

var _wgui = display_get_gui_width();
var _hgui = display_get_gui_height();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Nome do jogo, podendo mudar para imagem usando outro método
draw_text_transformed(_wgui*0.5, _hgui*0.25, "GAME NAME", 5, 5, 0);


var _menu = array_length(menu);

select += -keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down);
if(select >= _menu) {select = _menu-1;} else if(select < 0) {select = 0;}

for(var i = 0; i < _menu; i++) {
	
	var xx = _wgui*0.5;
	var yy = _hgui*0.6 + (40 * i);
	
	#region Menu com Mouse com Texto ---------------
	//var wstr = string_width(menu[i]);  // Tamanho horizontal do texto
	//var hstr = string_height(menu[i]); // Tamanho vertical do texto
	
	//// Pontos para desenhar a colisão do texto
	//var x1 = xx - wstr*0.6;
	//var y1 = yy - hstr*0.5;
	//var x2 = xx + wstr*0.6;
	//var y2 = yy + hstr*0.5;
	
	//if(point_in_rectangle(_xm, _ym, x1, y1, x2, y2)) {
	//	if(mouse_check_button_released(mb_left)) {
	//		switch(i) {
	//			case 0 : // INICIAR
	//				room_goto(rm_Game);
	//				break;
	//			case 1: // SAIR
	//				game_end();
	//				break;
	//		}
	//	}
	//}
	
	//draw_rectangle(x1, y1, x2, y2, 1); // Para enxergar a área de colisão
	#endregion
	
	#region Menu com Teclado com texto -----------------------
	var wstr = string_width(menu[i]);  // Tamanho horizontal do texto
	var hstr = string_height(menu[i]); // Tamanho vertical do texto
	
	// Pontos para desenhar o texto selecionado
	var x1 = xx - wstr*0.6;
	var y1 = yy - hstr*0.5;
	var x2 = xx + wstr*0.6;
	var y2 = yy + hstr*0.5;
	if(select == i) {draw_rectangle(x1, y1, x2, y2, 1);} // Para enxergar a área de colisão
	
	if(keyboard_check_released(vk_space)) {
		switch(select) {
			case 0 : // JOGAR
				room_goto(rm_Game);
				break;
			case 1 : // SAIR
				game_end();
				break;
		}
	}
	
	
	#endregion
	
	draw_text(xx, yy, menu[i]);
	
}