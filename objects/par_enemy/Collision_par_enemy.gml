/// @description Insert description here
// You can write your code in this editor
var _push = 0.4;

var _dir = point_direction(other.x, other.y, x, y);
var _velh = lengthdir_x(_push, _dir);
var _velv = lengthdir_y(_push, _dir);
if(place_meeting(x+_velh, y , obj_wall)){
		while(!place_meeting(x+sign(_velh), y, obj_wall)){
			x+=sign(_velh);
		}
	_velh=0;
	}
	if(place_meeting(x, y+_velv , obj_wall)){
		while(!place_meeting(x, y+sign(_velv), obj_wall)){
			y+=sign(_velv);
		}
		_velv=0;
	}

	x+=_velh;
	y+=_velv;

