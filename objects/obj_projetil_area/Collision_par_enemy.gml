/// @description Insert description here
// You can write your code in this editor

if(other.hit == false){
	other.vida -= damage;
	if(efeitos[0] == "Slow"){
		other.velc = other.velc - ((efeitos[1] / 100) * other.velc);
	}
}
	
other.hit = true;
other.alarm[0] = 15;

