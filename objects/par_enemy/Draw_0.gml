/// @description Insert description here
// You can write your code in this editor
draw_self();

if(hit == true){
	gpu_set_fog(true, c_white, 0, 0);
	draw_self();
	gpu_set_fog(false, c_white , 0, 0);
}
draw_text(x, y-16, vida);