var dir_right = keyboard_check(vk_right);
var dir_left = keyboard_check(vk_left);
var dir_up = keyboard_check(vk_up);
var dir_down = keyboard_check(vk_down);

var walk = dir_right - dir_left != 0 || dir_down - dir_up != 0;

move_dir = point_direction(0,0,dir_right - dir_left, dir_down - dir_up);

velh = lengthdir_x(velc*walk, move_dir);
velv = lengthdir_y(velc*walk, move_dir);

if(place_meeting(x+velh, y , obj_wall)){
	while(!place_meeting(x+sign(velh), y, obj_wall)){
		x+=sign(velh);
	}
	velh=0;
}
if(place_meeting(x, y+velv , obj_wall)){
	while(!place_meeting(x, y+sign(velv), obj_wall)){
		y+=sign(velv);
	}
	velv=0;
}

x+=velh;
y+=velv;

//Animation
if(velh > 0){
	image_xscale = -1;
}else if(velh<0){
	image_xscale = 1;
}
if(velh != 0){
	sprite_index = spr_player_walk
}else{
	sprite_index = spr_player_idle
}
