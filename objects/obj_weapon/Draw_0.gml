if(sprite != -1){
	draw_sprite_ext(sprite, image_index, weapon_x, weapon_y, 1, 1, weapon_dir, c_white, 1);
}


if (weapon > 5) and (weapon < 9){
	var inimigo = instance_nearest(obj_crosshair.x, obj_crosshair.y, par_enemy);
	var raio_x = weapon_x;
	var raio_y = weapon_y;
	
	if (inimigo != noone){
		if (atirando = true){
			if (explosivo = true){
				var beam_distance = point_distance(raio_x, raio_y, obj_crosshair.x, obj_crosshair.y);
				var beam_direction = point_direction(raio_x, raio_y, obj_crosshair.x, obj_crosshair.y);
				draw_sprite_ext(spr_teste_raio, 0, raio_x, raio_y, beam_distance/sprite_get_width(spr_teste_raio), 1, weapon_dir, c_white, 1); 
			} else {
				var beam_distance = point_distance(raio_x, raio_y, inimigo.x, inimigo.y);
				var beam_direction = point_direction(raio_x, raio_y, inimigo.x, inimigo.y);
				draw_sprite_ext(spr_teste_raio, 0, raio_x, raio_y, beam_distance/sprite_get_width(spr_teste_raio), 1, weapon_dir, c_white, 1); 
			}
		}
	}
}
					