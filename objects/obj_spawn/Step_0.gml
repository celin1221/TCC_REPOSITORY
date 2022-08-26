/// @description Insert description here
// You can write your code in this editor
max_enemy = 20;
var chances = 5;
if(instance_number(obj_enemy)<max_enemy){
if(irandom(1000)<chances){
	instance_create_layer(x,y, "Instances", obj_enemy);
	alarm[0]= irandom_range(60, 60*20);
	
}
}