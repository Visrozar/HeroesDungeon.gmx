///scr_move_state

scr_get_input();

if(attack_right or attack_left or attack_up or attack_down) {
    bullet = instance_create(obj_player.x, obj_player.y, obj_player_attack);
}

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
if (vspd > 0 or attack_down) {
    sprite_index = spr_player_down;
} if (vspd < 0 or attack_up) {
    sprite_index = spr_player_up;
}

//Horizontal animation
if (hspd > 0 or attack_right) {
    sprite_index = spr_player_right;
} if (hspd < 0 or attack_left) {
    sprite_index = spr_player_left;
}
