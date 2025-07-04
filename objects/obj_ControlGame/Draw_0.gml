

var _linha = 16*8;

draw_line(320, 192, 320+_linha, 192);
draw_rectangle(320-_linha+1, 192-_linha+1, 320+_linha-2, 192+_linha-2, 1);
draw_circle(320, 192, _linha, 1);