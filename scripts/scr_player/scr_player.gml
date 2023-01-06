// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.level = 0;
global.kill_count = 0;
global.kill_need= 20;
function scr_player_anda(){
	var dir_right = keyboard_check(ord("D"));
	var dir_left = keyboard_check(ord("A"));
	var dir_up = keyboard_check(ord("W"));
	var dir_down = keyboard_check(ord("S"));

	var walk = dir_right - dir_left != 0 || dir_down - dir_up != 0;

	move_dir = point_direction(0,0,dir_right - dir_left, dir_down - dir_up);
	
		velh = lengthdir_x(velc*walk, move_dir);
		velv = lengthdir_y(velc*walk, move_dir);
}
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
	scr_player_anda();	

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
				sprite_index = spr_player_walk_down
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
				sprite_index = spr_player_walk_down
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
	#region Atack
	if(mouse_check_button_pressed(mb_left)){
		ds_list_clear(inimigos_atingidos);
		image_index = 0;
		switch dir{
			default:
				//direita
				sprite_index = spr_player_walkAtack_left_sword;
				mask_index = spr_player_walkAtack_left_sword_hb;
				image_xscale = -1;
			break;
			case 1:
				//cima
				sprite_index = spr_player_walkAtack_up_sword;
				mask_index = spr_player_walkAtack_up_sword_hb;
			break;
			case 2:
				//esquerda
				sprite_index = spr_player_walkAtack_left_sword;
				mask_index = spr_player_walkAtack_left_sword_hb;
				image_xscale = 1;
			break;
			case 3:
				//baixo
				sprite_index = spr_player_walkAtack_down_sword;
				mask_index = spr_player_walkAtack_down_sword_hb;
			break;
		}
		state = scr_player_swordAtack;
	}
	#endregion
}


function scr_player_dash(){
	tomar_dano = false;
	scr_player_collision();
	velh = lengthdir_x(dash_velc, dash_dir);
	velv = lengthdir_y(dash_velc, dash_dir);

}
function scr_player_swordAtack(){
	scr_player_anda();
	
	var inimigos_na_hitbox = ds_list_create();
	
	var inimigos = instance_place_list(x,y, par_enemy, inimigos_na_hitbox, false);
	
	if(inimigos > 0){
		for(var i = 0; i < inimigos; i++){
			var InimigosID = inimigos_na_hitbox[| i];
			
			if(ds_list_find_index(inimigos_atingidos, InimigosID) == -1){
				ds_list_add(inimigos_atingidos, InimigosID);
				
				with(InimigosID){
					hit = true;
					var direcao = point_direction(obj_player.x, obj_player.y, obj_enemy.x, obj_enemy.y);
					empurrar_dir = direcao;
					empurrar_velc = 15;
					state = scr_enemy_hit;
					vida -= obj_player.dano;
					alarm[0] = 180;
					
				}
			}
		}
	}
	ds_list_destroy(inimigos_na_hitbox);
	
	
	if(animation_end()){
		mask_index = spr_player_idle_left;
		state = scr_player_andando;
	}
}

function scr_player_hit(){
	if(alarm[2]>0){
	scr_player_collision();
	velh = lengthdir_x(2, empurrar_dir);
	velv = lengthdir_y(2, empurrar_dir);
	
	
	}else{
		state = scr_player_andando;
	}
}
