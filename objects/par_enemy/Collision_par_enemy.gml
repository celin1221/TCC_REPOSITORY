/// @description Insert description here
// You can write your code in this editor
var _push = 0.4;

var _dir = point_direction(other.x, other.y, x, y);
var _velh = lengthdir_x(_push, _dir);
var _velv = lengthdir_y(_push, _dir);

x+= _velh;
y+= _velv;
