var _escala = 3;
var _guia = display_get_gui_height();
var _spra = sprite_get_height(spr_barra_vida) * _escala;
var _huda = _guia - _spra;

var vida = obj_player.vida;
var vida_max = 100

var posicao_fill = (28 * (1 - (vida/vida_max))) * 3
show_debug_message(posicao_fill);


//HUD
draw_sprite_ext(spr_barra_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

//FILL VIDA
draw_sprite_ext(spr_fill_barra_vida, 0, posicao_fill, _huda, _escala * (vida / vida_max), _escala, 0, c_white, 1);
