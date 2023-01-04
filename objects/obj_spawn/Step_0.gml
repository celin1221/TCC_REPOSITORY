/// @description Insert description here
// You can write your code in this editor
max_enemy = 10;
var chances = 5;
randomize();
var numero = irandom(1000);
if(instance_number(obj_enemy)<max_enemy){
	if(numero < chances){
		instance_create_layer(x,y, "Instances", obj_enemy);
		alarm[0]= irandom_range(60, 60*20);
	
	}else if(numero > chances) and (numero < chances *2){
		instance_create_layer(x,y, "Instances", obj_enemy_mage);
		alarm[0]= irandom_range(60, 60*20);
	}
}