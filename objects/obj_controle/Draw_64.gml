var _escala = 3;
var _guiaH = display_get_gui_height();
var _guiaW = display_get_gui_width();
var _spra = sprite_get_height(spr_barra_vida_vazia) * _escala;
var _huda = _guiaH - _spra;

var vida = obj_player.vida;
var vida_max = 100

var posicao_fill = (28 * (1 - (vida/vida_max))) * 3



//HUD
draw_sprite_ext(spr_barra_vida_vazia, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

//FILL VIDA
draw_sprite_ext(spr_fill_vida, 0, posicao_fill, _huda, _escala * (vida / vida_max), _escala, 0, c_white, 1);

draw_set_font(f_arialB);

draw_text(_guiaW/2, _guiaH/2,global.kill_count);