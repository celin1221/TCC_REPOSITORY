/// @description Insert description here
// You can write your code in this editor

global.main_menu = true;
global.UsandoMelee = false;

global.level = 0;
global.kill_count = 0;
global.kill_need= 20;

menu_inicial = ["Jogar", "Sair"];
esc[array_length(menu_inicial) - 1] = 0;

for(var i = 0; i < array_length(esc); i++){
	esc[i] = 1;
}

global.arma = 1;