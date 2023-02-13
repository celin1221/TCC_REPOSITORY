/// @description Insert description here
// You can write your code in this editor

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_sprite_stretched_ext(spr_back, -1, 0, 0, display_get_gui_width(), display_get_gui_height(), c_white, 1);


draw_set_font(f_arialB);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var tam_menu = array_length(menu_inicial);
for (var i = 0; i < tam_menu ; i++){
	
	var _wgui = display_get_gui_width();
	var _hgui = display_get_gui_height();
	
	var _hstr = string_height("I");
	var _wstr = string_width(menu_inicial[i]);
	
	var x1 = _wgui / 2 - _wstr / 2;
	var y1 = _hgui / 2 - _hstr / 2 + _hstr * i; //top left
	
	var x2 = _wgui / 2 + _wstr / 2;
	var y2 = _hgui / 2 + _hstr / 2 + _hstr * i; // bot right
	
	if(point_in_rectangle(_mx, _my, x1, y1, x2, y2)){
		esc[i] = lerp(esc[i], 1.5, 0.15);	
		
		if(mouse_check_button_pressed(mb_left)){
			
			switch menu_inicial[i]{
			
				case menu_inicial[0]: //Espada
					global.arma = 0;
					global.UsandoMelee = true;
					room_goto(Ambiente1);
					global.main_menu = false;
					break;
				case menu_inicial[1]: //Arco Padrão
					global.arma = 1;
					global.UsandoMelee = false;
					room_goto(Ambiente1);
					global.main_menu = false;
					break;
				case menu_inicial[2]: //Arco com 3 Flechas
					global.arma = 2;
					global.UsandoMelee = false;
					room_goto(Ambiente1);
					global.main_menu = false;
					break;
				case menu_inicial[3]: //Arco Perfurante
					global.arma = 3;
					global.UsandoMelee = false;
					room_goto(Ambiente1);
					global.main_menu = false;
					break;
				case menu_inicial[4]: //Cajado Padrão
					global.arma = 5;
					global.UsandoMelee = false;
					room_goto(Ambiente1);
					global.main_menu = false;
					break;
				case menu_inicial[5]: //Cajado de Gelo
					global.arma = 6;
					global.UsandoMelee = false;
					room_goto(Ambiente1);
					global.main_menu = false;
					break;
			}
		}
		
	} else{
		esc[i] = lerp(esc[i], 1, 0.15);
	}
	
	draw_text_transformed(_wgui / 2, _hgui / 2 + _hstr * i, menu_inicial[i], esc[i], esc[i], 0);
}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);