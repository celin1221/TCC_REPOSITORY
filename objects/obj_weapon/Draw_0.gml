if(sprite != -1){
	draw_sprite_ext(sprite, image_index, weapon_x, weapon_y, 1, 1, weapon_dir, c_white, 1);
}


if (weapon > 4) and (weapon < 9){
	var inimigo = instance_nearest(obj_crosshair.x, obj_crosshair.y, par_enemy);
	var obstaculo = instance_nearest(obj_crosshair.x, obj_crosshair.y, obj_stone1);
	var raio_x = weapon_x;
	var raio_y = weapon_y;
	var foco = inimigo;
	
	if (inimigo != noone){
		if (atirando = true){
			
			
			if (obstaculo != noone){
				var dist_pedra = point_distance(obj_crosshair.x, obj_crosshair.y, obstaculo.x, obstaculo.y);
				var dist_inimigo = point_distance(obj_crosshair.x, obj_crosshair.y, inimigo.x, inimigo.y);
			
			
				if (dist_pedra < dist_inimigo){
					foco = obstaculo;
				} else {
					foco = inimigo;
				}
			}
			
			if (explosivo = true){
				var beam_distance = point_distance(raio_x, raio_y, obj_crosshair.x, obj_crosshair.y);
				var beam_direction = point_direction(raio_x, raio_y, obj_crosshair.x, obj_crosshair.y); 
			} else {
				var beam_distance = point_distance(raio_x, raio_y, foco.x, foco.y);
				var beam_direction = point_direction(raio_x, raio_y, foco.x, foco.y);
				draw_sprite_ext(spr_teste_raio, -1, raio_x, raio_y, beam_distance/sprite_get_width(spr_teste_raio), 1, beam_direction, c_white, 1); 
			}
		}
	}
}
					