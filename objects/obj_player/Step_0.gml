script_execute(state);

if(alarm[1]<=0){
	estamina+=1;
}

estamina = clamp(estamina, 0, max_estamina);

if (vida <= 0){
	window_set_cursor(cr_default);
	room_goto(TelaFinal);
}


if (keyboard_check(ord("Q"))){
		instance_destroy(my_weapon);
		if (arma < 6){
			arma = arma + 1;
			show_message(arma);
		} else {
			arma = 0
		}
		global.arma = arma;
		my_weapon = instance_create_layer(x, y, "Weapons", obj_weapon);
		my_weapon.weapon_id = self;
	} 


if(!usandoMelee){
	if (comecou){
		with(my_weapon){
			var mb;
			if (automatic){
				mb = mouse_check_button(mb_left);
			} else {
				mb = mouse_check_button_pressed(mb_left);
			}
			weapon_dir = point_direction(x, y, mouse_x, mouse_y)
			if(mb){
				atirar();
				atirando = true;
			} else {
				atirando = false;
			}
		}
	}
}

if(segundo == false){
	alarm[5] = 60;
	global.tempoS1+=1;
	if(global.tempoS1>=10){
		global.tempoS2+=1;
		global.tempoS1=0;
	}
	if(global.tempoS2>=6){
		global.tempoM+=1;
		global.tempoS2=0;
	}
	segundo = true;
}