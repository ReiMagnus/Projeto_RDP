
var _wgui = display_get_gui_width();
var _hgui = display_get_gui_height();

var _grid = 16*2;

for(var i = 0; i <= _hgui; i+=_grid) {
    draw_line(0, i, _wgui, i);
}
for(var j = 0; j <= _wgui; j+=_grid) {
    draw_line(j, 0, j, _hgui);
}

var _x1 = (_wgui/2) - (_grid*9);
var _y1 = _grid-8; 
var _x2 = (_wgui/2) + (_grid*9);
var _y2 = _grid+8;

var _pc = (time/18000)*100;

draw_text(64, 64, time/60);
draw_healthbar(_x1, _y1, _x2, _y2, _pc, c_black, c_white, c_white, 1, true, false);





