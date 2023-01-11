if(instance_exists(weapon_id)){
	
	x = weapon_id.x;
	y = weapon_id.y;
	
	weapon_x = x + lengthdir_x(1, weapon_dir);
	weapon_y = y + lengthdir_y(1, weapon_dir);
	
	
	function atirar(){
		
		if(!weapon > 0){
			return false;
		}
		
		if(!can_shoot){
			return false;
		}
		
		if(weapon < 5){
			if (projetil_quant == 1){
			
				var projetil_instance = instance_create_layer(weapon_x, weapon_y, "Projeteis", obj_projetil);
				projetil_instance.perfurante = perfurante;
				projetil_instance.damage = projetil_dano
				projetil_instance.efeitos = effect;
				projetil_instance.explosivo = explosivo;
				projetil_instance.sprite_index = projetil;
				projetil_instance.image_angle = weapon_dir;
				projetil_instance.direction = weapon_dir;
				projetil_instance.speed = vel_projetil;
			} else {
		
				for (var i = -1; i < (projetil_quant - 1); i++){
					var projetil_instance = instance_create_layer(weapon_x, weapon_y, "Projeteis", obj_projetil);
					var dist = 20;
					var dir = 0;
					dir = weapon_dir + (dist*i);
			
					projetil_instance.perfurante = perfurante;
					projetil_instance.damage = projetil_dano
					projetil_instance.efeitos = effect;
					projetil_instance.explosivo = explosivo;
					projetil_instance.sprite_index = projetil;
					projetil_instance.image_angle = weapon_dir;
					projetil_instance.direction = dir;
					projetil_instance.speed = vel_projetil;
				}
			}
			can_shoot = false;
			alarm[0] = projetil_delay
		} else if (weapon < 9){ //CAJADOS
			var inimigo = instance_nearest(obj_crosshair.x, obj_crosshair.y, par_enemy);
			var obstaculos_1 = instance_nearest(obj_crosshair.x, obj_crosshair.y, obj_stone1);
			var foco = inimigo;
			
			if(inimigo != noone){
				if((inimigo.x - x) <= 150 and (inimigo.y - y) <= 150){
					if(explosivo == true){
						if (inimigo.hit == false){
							var explosao = instance_create_layer(obj_crosshair.x, obj_crosshair.y, "Projeteis", obj_projetil_area);
							explosao.damage = projetil_dano;
							explosao.efeitos = effect;
						}
					} else {
						
						if (obstaculos_1 != noone){
							var dist_pedra = point_distance(obj_crosshair.x, obj_crosshair.y, obstaculos_1.x, obstaculos_1.y);
							var dist_inimigo = point_distance(obj_crosshair.x, obj_crosshair.y, inimigo.x, inimigo.y);
			
							if (dist_pedra < dist_inimigo){
								foco = "pedra";
							} else {
								foco = "inimigo";
							}
						}
					
						if((inimigo.hit == false) and (foco == "inimigo")){
							inimigo.vida -= projetil_dano;
							inimigo.hit = true;
							inimigo.alarm[0] = 15
						} else if (foco == "pedra"){
							obstaculos_1.vida -= projetil_dano;
						}
					}
					
					
				}
				can_shoot = false;
				alarm[0] = projetil_delay
			}
		}
	}
	
}else{
	instance_destroy();
}

