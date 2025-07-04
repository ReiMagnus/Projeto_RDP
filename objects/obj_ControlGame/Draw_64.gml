
var _wgui = display_get_gui_width();
var _hgui = display_get_gui_height();

var _x1 = 176
var _y1 = (_hgui*0.06); // 176
var _x2 = 464;
var _y2 = (_hgui*0.06)+8; // 464

var _pc = (time/18000)*100;
show_debug_message(_pc);

draw_text(64, 64, time/60);
draw_healthbar(_x1, _y1, _x2, _y2, _pc, c_black, c_white, c_white, 1, true, false);