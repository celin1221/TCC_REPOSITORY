script_execute(state);

if(alarm[1]<=0){
	estamina+=1;
}

estamina = clamp(estamina, 0, max_estamina);


if (keyboard_check(ord("Q"))){
		instance_destroy(my_weapon);
		if (arma < 6){
			arma = arma + 1;
			show_message(arma);
		} else {
			arma = 0
		}
		my_weapon = instance_create_layer(x, y, "Weapons", obj_weapon);
		my_weapon.weapon = arma
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