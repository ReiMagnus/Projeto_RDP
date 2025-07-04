
draw_self();

draw_point(x, y);

/*6
// Vetor de visão ---
var _visa = [
-keyboard_check(vk_left) + keyboard_check(vk_right),// Horizontal
-keyboard_check(vk_up)   + keyboard_check(vk_down)  // Vertical
]

var _dir = point_direction(0, 0, _visa[0], _visa[1]);
var xx, yy;
xx = x + 8 * _visa[0];
yy = y + 8 * _visa[1];

draw_rectangle(xx-2, yy-2, xx+1, yy+1, 0);