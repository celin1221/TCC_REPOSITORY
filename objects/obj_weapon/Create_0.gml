weapon_id = noone;
weapon_dir = -1;
weapon_x = 0;
weapon_y = 0;
can_shoot = true;

weapon = 1; //ARMA USADA NO MOMENTO

armas[0] = ds_map_create();


//SEM ARMA
ds_map_add(armas[0], "sprite", -1);
ds_map_add(armas[0], "projetil", -1);
ds_map_add(armas[0], "vel_projetil", 0);
ds_map_add(armas[0], "projetil_dano", 0);
ds_map_add(armas[0], "projetil_delay", 0);
ds_map_add(armas[0], "automatic", false);


//ARCO PADRAO
armas[1] = ds_map_create();
ds_map_add(armas[1], "sprite", spr_teste);
ds_map_add(armas[1], "projetil", spr_teste_projetil);
ds_map_add(armas[1], "vel_projetil", 3);
ds_map_add(armas[1], "projetil_dano", 10);
ds_map_add(armas[1], "projetil_delay", 20);
ds_map_add(armas[1], "automatic", false);

var map = armas[weapon];
sprite = map[? "sprite"]; //ARMAZENAR OS VALORES EM VARIAVEIS
projetil = map[? "projetil"];
vel_projetil = map[? "vel_projetil"];
projetil_dano = map[? "projetil_dano"];
projetil_delay = map[? "projetil_delay"];
automatic = map[? "automatic"];