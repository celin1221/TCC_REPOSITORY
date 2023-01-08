/// @description Insert description here
// You can write your code in this editor

function trocar(){
	with(inimigo){
		obj_raio.proximo = instance_nearest(x, y, par_enemy);
	}
	if (atual < range){
		self.x = proximo.x;
		self.y = proximo.y;
		atual ++;
	} else {
		instance_destroy();
	}
}

