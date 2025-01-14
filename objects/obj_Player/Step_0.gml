
var moveH = -keyboard_check(vk_left) + keyboard_check(vk_right);
var moveV = -keyboard_check(vk_up)   + keyboard_check(vk_down);

if(moveH != 0 || moveV != 0) {
    var _dir = point_direction(0, 0, moveH, moveV);
    hsp = lengthdir_x(spd, _dir);
    vsp = lengthdir_y(spd, _dir);
} else {
    hsp = 0;
    vsp = 0;
}

show_debug_message(string("{0} {1}", hsp, vsp))

// -------
x += hsp;
y += vsp;
