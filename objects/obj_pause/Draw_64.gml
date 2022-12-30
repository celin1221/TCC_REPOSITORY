if(pause){
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	draw_set_alpha(.4);
	draw_set_color(c_black);
	draw_rectangle(0,0,resW, resH, false);
	draw_set_alpha(1);
	draw_set_color(-1);
	draw_set_font(f_arialB);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(resW/2, resH/2 - string_height("J"), "JOGO PAUSADO");
	draw_text(resW/2, resH/2 + string_height("J"), "VOLTAR AO MENU");
	
	if(point_in_rectangle(_mx, _my, resW/2 - string_width("VOLTAR AO MENU"), resH/2 - string_height("J"), resW/2 + string_width("VOLTAR AO MENU"), resH/2 +  2 *(string_height("J")))){
		
		if(mouse_check_button_pressed(mb_left)){
			//TEM QUE ARRUMAR ISSO AQUI (14:10)
			
			pause = false;
			if(surface_exists(pauseSurf)){
				surface_free(pauseSurf);
			}
			if(buffer_exists(pauseSurfBuffer)){
				buffer_delete(pauseSurfBuffer);
			}
			
			room_goto(MainMenu);
		}
		
	}
	
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}