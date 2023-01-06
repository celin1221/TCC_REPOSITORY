/// @description Insert description here
// You can write your code in this editor
if(global.kill_count>=global.kill_need){
	global.kill_count = 0;
	global.kill_need+=10;
	global.level+=1;
	room_restart();
}

