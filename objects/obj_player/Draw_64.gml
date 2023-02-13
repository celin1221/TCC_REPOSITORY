/// @description Insert description here
// You can write your code in this editor
//var getW = display_get_gui_width();
//var getH = display_get_gui_height();
draw_sprite_ext(spr_clock, 1, 48, 48, 2, 2, 0, c_white, 1);
draw_text(80, 32, string(global.tempoM) + ":" + string(global.tempoS2) + string(global.tempoS1));