///scr_move_state

scr_get_input();

//get axis
var xaxis = (right-left);
var yaxis = (down-up);

//get direction
var dir = point_direction(0,0,xaxis,yaxis);

//get length
if (xaxis ==0 && yaxis ==0) {
    len = 0;
} else {
    len = spd;
}

//get the hspeed and vspeed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Control sprite
image_speed = animation_speed;
if (len == 0) image_index=0;

//Vertical animation
if (vspd > 0) {
    sprite_index = spr_player_down;
} else if (vspd < 0) {
    sprite_index = spr_player_up;
}

//Horizontal animation
if (hspd > 0) {
    sprite_index = spr_player_right;
} else if (hspd < 0) {
    sprite_index = spr_player_left;
}
