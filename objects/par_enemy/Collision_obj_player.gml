if (other.tomar_dano == true){
	var _dir = point_direction(x, y, other.x , other.y);

	with(other){
		empurrar_dir = _dir;
		state = scr_player_hit;
		alarm[2] = 10;
		alarm[3] = 60*3;
		tomar_dano = false;
		vida -= 2;
	}
}