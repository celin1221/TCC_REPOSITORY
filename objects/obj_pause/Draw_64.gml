if(pause){
	draw_set_alpha(.4);
	draw_set_color(c_black);
	draw_rectangle(0,0,resW, resH, false);
	draw_set_alpha(1);
	draw_set_color(-1);
	draw_set_font(f_arialB);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(resW/2, resH/2, "JOGO PAUSADO");
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
}