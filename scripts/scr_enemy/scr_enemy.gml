// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_collision(){
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
}
function scr_enemy_walk(){
	cell_t = obj_map.cell_t
	var x1 = x;
	var y1 = y;
	var x2 = obj_player.x
	var y2 = obj_player.y
	
	if(x1 > x2){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
	
	if(mp_grid_path(obj_map.mp_grid, caminho, x1,y1,x2,y2,true)){
		path_start(caminho, velc,path_action_stop,false);
	}
	
}
function scr_enemy_hit(){
	empurrar_velc = lerp(empurrar_velc, 0 , 0.05);
	velh = lengthdir_x(empurrar_velc, empurrar_dir);
	velv = lengthdir_y(empurrar_velc, empurrar_dir);
	scr_enemy_collision();
}
