if(instance_exists(weapon_id)){
	
	x = weapon_id.x;
	y = weapon_id.y;
	
	weapon_x = x + lengthdir_x(10, weapon_dir);
	weapon_y = y + lengthdir_y(10, weapon_dir);
	
	function atirar(){
		
		if(!weapon > 0){
			return false;
		}
		
		if(!can_shoot){
			return false;
		}
		
		var projetil_instance = instance_create_layer(weapon_x, weapon_y, "Projeteis", obj_projetil);
		projetil_instance.sprite_index = projetil;
		projetil_instance.image_angle = weapon_dir;
		projetil_instance.direction = weapon_dir;
		projetil_instance.speed = vel_projetil;
		projetil.damage = projetil_dano
		can_shoot = false;
		alarm[0] = projetil_delay
	}
	
}else{
	instance_destroy();
}

