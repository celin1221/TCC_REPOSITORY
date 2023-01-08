/// @description Insert description here
// You can write your code in this editor


if(explosivo == false){
	if(other.hit == false){
		other.vida -= damage;
	}
	other.hit = true;
	other.alarm[0] = 15

	if(efeitos[0] == "Slow"){
		other.velc = other.velc - ((efeitos[1] / 100) * other.velc);
	}

	if (perfurante == false){
		instance_destroy();
	}
} else {
	var explosao = instance_create_layer(x, y, "Projeteis", obj_projetil_area);
	explosao.damage = damage;
	explosao.efeitos = efeitos
	instance_destroy();
}

