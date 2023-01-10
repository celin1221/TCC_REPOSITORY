gpu_set_blendenable(false);

if(pause){
	surface_set_target(application_surface);
	if(surface_exists(pauseSurf)){
		draw_surface(pauseSurf,0,0);
	}else{
		pauseSurf = surface_create(resW, resH);
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	surface_reset_target();
}


if (global.main_menu == false){
	if(keyboard_check_pressed(vk_escape)){
		if(!pause){
			pause = true;
			window_set_cursor(cr_default);
		
			//desativando instancias 
			//(lembrar de desativar manualmente animaçõese e timers)
			instance_deactivate_all(true);
		
			pauseSurf = surface_create(resW, resH);
			surface_set_target(pauseSurf);
			draw_surface(application_surface, 0 ,0);
			surface_reset_target();
		
			if(buffer_exists(pauseSurfBuffer)){
				buffer_delete(pauseSurfBuffer);
			}
			pauseSurfBuffer = buffer_create(resW*resH*4, buffer_fixed,1);
			buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
		}else{
			pause = false;
			window_set_cursor(cr_none);
			instance_activate_all();
			if(surface_exists(pauseSurf)){
				surface_free(pauseSurf);
			}
			if(buffer_exists(pauseSurfBuffer)){
				buffer_delete(pauseSurfBuffer);
			}
		}
	}
}
gpu_set_blendenable(true);