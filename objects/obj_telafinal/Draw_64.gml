/// @description Insert description here
// You can write your code in this editor
var getW = display_get_gui_width();
var getH = display_get_gui_height();

draw_sprite_stretched_ext(spr_back, -1, 0, 0, display_get_gui_width(), display_get_gui_height(), c_white, 1);

draw_set_font(f_arialB);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_sprite_ext(spr_enemy, 0, getW/2-32,getH/2-128, 2,2,0, c_white, 1);
draw_text(getW/2+32,getH/2-128,string(global.score));

draw_sprite_ext(spr_clock, 1, getW/2-32,getH/2-64, 2, 2, 0, c_white, 1);
draw_text(getW/2+16, getH/2-64, string(global.tempoM) + ":" + string(global.tempoS2) + string(global.tempoS1));

draw_set_halign(fa_center);
draw_text(getW/2, getH - 256, "Aperte qualquer tecla para sair");