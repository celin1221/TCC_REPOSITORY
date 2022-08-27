// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_collision(){
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
function scr_player_andando(){
	var dir_right = keyboard_check(ord("D"));
	var dir_left = keyboard_check(ord("A"));
	var dir_up = keyboard_check(ord("W"));
	var dir_down = keyboard_check(ord("S"));

	var walk = dir_right - dir_left != 0 || dir_down - dir_up != 0;

	move_dir = point_direction(0,0,dir_right - dir_left, dir_down - dir_up);

	velh = lengthdir_x(velc*walk, move_dir);
	velv = lengthdir_y(velc*walk, move_dir);
	
	scr_player_collision();

	//Animation
	dir = floor((point_direction(x,y, mouse_x, mouse_y)+45)/90);
	
	if(velh == 0 && velv == 0){
		switch dir{
			default:
				//direita
				sprite_index = spr_player_idle_left
				image_xscale = -1
			break;
			case 1:
				//cima
				sprite_index = spr_player_idle_up
			break;
			case 2:
				//esquerda
				sprite_index = spr_player_idle_left
				image_xscale = 1;
			break;
			case 3:
				//baixo
			break;
		}
	}else{
		switch dir{
			default:
				//direita
				sprite_index = spr_player_walk_left
				image_xscale = -1
			break;
			case 1:
				//cima
				sprite_index = spr_player_walk_up
			break;
			case 2:
				//esquerda
				sprite_index = spr_player_walk_left
				image_xscale = 1;
			break;
			case 3:
				//baixo
			break;
		}
	}
	#region Dash
	if(estamina >=10){
		if(keyboard_check_pressed(vk_space)){
			estamina-=10;
			alarm[0] = 8;
			alarm[1] = 60*3;
			dash_dir = point_direction(x,y, mouse_x, mouse_y);
			state = scr_player_dash;
		}
	}
	#endregion
	if(mouse_check_button_pressed(mb_left)){
		image_index = 0;
		switch dir{
			default:
				//direita
				sprite_index = spr_player_walkAtack_left_sword;
				image_xscale = -1;
			break;
			case 1:
				//cima
				sprite_index = spr_player_walk_up;
			break;
			case 2:
				//esquerda
				sprite_index = spr_player_walkAtack_left_sword;
				image_xscale = 1;
			break;
			case 3:
				//baixo
			break;
		}
		state = scr_player_swordAtack;
	}
}

function scr_player_dash(){
	scr_player_collision();
	velh = lengthdir_x(dash_velc, dash_dir);
	velv = lengthdir_y(dash_velc, dash_dir);
	

}
function scr_player_swordAtack(){
	
	if(animation_end()){
		state = scr_player_andando;
	}
}
