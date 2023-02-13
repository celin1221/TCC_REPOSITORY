weapon_id = noone;
weapon_dir = -1;
weapon_x = 0;
weapon_y = 0;
can_shoot = true;
atirando = false;

weapon = global.arma; //ARMA USADA NO MOMENTO

armas[0] = ds_map_create();


//SEM ARMA
ds_map_add(armas[0], "sprite", -1);
ds_map_add(armas[0], "projetil", -1);
ds_map_add(armas[0], "vel_projetil", 0);
ds_map_add(armas[0], "projetil_dano", 0);
ds_map_add(armas[0], "projetil_delay", 0);
ds_map_add(armas[0], "automatic", false);
ds_map_add(armas[0], "effect", [noone]);
ds_map_add(armas[0], "projetil_quant", 0);
ds_map_add(armas[0], "perfurante", false);
ds_map_add(armas[0], "explosivo", false);

//ARCO PADRAO
armas[1] = ds_map_create();
ds_map_add(armas[1], "sprite", spr_arco);
ds_map_add(armas[1], "projetil", spr_flecha);
ds_map_add(armas[1], "vel_projetil", 4);
ds_map_add(armas[1], "projetil_dano", 5);
ds_map_add(armas[1], "projetil_delay", 18);
ds_map_add(armas[1], "automatic", false);
ds_map_add(armas[1], "effect", [noone]);
ds_map_add(armas[1], "projetil_quant", 1);
ds_map_add(armas[1], "perfurante", false);
ds_map_add(armas[1], "explosivo", false);

//ARCO COM TRES FLECHAS
armas[2] = ds_map_create();
ds_map_add(armas[2], "sprite", spr_arco);
ds_map_add(armas[2], "projetil", spr_flecha);
ds_map_add(armas[2], "vel_projetil", 5);
ds_map_add(armas[2], "projetil_dano", 5);
ds_map_add(armas[2], "projetil_delay", 25);
ds_map_add(armas[2], "automatic", true);
ds_map_add(armas[2], "effect", [noone]);
ds_map_add(armas[2], "projetil_quant", 3);
ds_map_add(armas[2], "perfurante", false);
ds_map_add(armas[2], "explosivo", false);

//ARCO PERFURANTE
armas[3] = ds_map_create();
ds_map_add(armas[3], "sprite", spr_arco);
ds_map_add(armas[3], "projetil", spr_flecha);
ds_map_add(armas[3], "vel_projetil", 4);
ds_map_add(armas[3], "projetil_dano", 3);
ds_map_add(armas[3], "projetil_delay", 15);
ds_map_add(armas[3], "automatic", true);
ds_map_add(armas[3], "effect", [noone]);
ds_map_add(armas[3], "projetil_quant", 1);
ds_map_add(armas[3], "perfurante", true);
ds_map_add(armas[3], "explosivo", false);



//CAJADO PADRÃO
armas[5] = ds_map_create();
ds_map_add(armas[5], "sprite", spr_livro);
ds_map_add(armas[5], "projetil", spr_teste_raio);
ds_map_add(armas[5], "vel_projetil", 0);
ds_map_add(armas[5], "projetil_dano", 2);
ds_map_add(armas[5], "projetil_delay", 15);
ds_map_add(armas[5], "automatic", true);
ds_map_add(armas[5], "effect", [noone]);
ds_map_add(armas[5], "projetil_quant", 1);
ds_map_add(armas[5], "perfurante", false);
ds_map_add(armas[5], "explosivo", false);

//CAJADO DE GELO
armas[6] = ds_map_create();
ds_map_add(armas[6], "sprite", spr_orbgelo);
ds_map_add(armas[6], "projetil", noone);
ds_map_add(armas[6], "vel_projetil", 0);
ds_map_add(armas[6], "projetil_dano", 2);
ds_map_add(armas[6], "projetil_delay", 15);
ds_map_add(armas[6], "automatic", true);
//Tipo de efeito | Valor dele (%slow) | Quantos inimigos (SÓ PRO ELETRICO)
ds_map_add(armas[6], "effect", ["Slow", 15, 0]);
ds_map_add(armas[6], "projetil_quant", 1);
ds_map_add(armas[6], "perfurante", false);
ds_map_add(armas[6], "explosivo", true);

//CAJADO DIFERENTE
armas[7] = ds_map_create();
ds_map_add(armas[7], "sprite", spr_livro);
ds_map_add(armas[7], "projetil", spr_teste);
ds_map_add(armas[7], "vel_projetil", 0);
ds_map_add(armas[7], "projetil_dano", 1);
ds_map_add(armas[7], "projetil_delay", 15);
ds_map_add(armas[7], "automatic", true);
//Tipo de efeito | Valor dele (%slow) | Quantos inimigos (SÓ PRO ELETRICO)
ds_map_add(armas[7], "effect", [noone]);
ds_map_add(armas[7], "projetil_quant", 1);
ds_map_add(armas[7], "perfurante", false);
ds_map_add(armas[7], "explosivo", false);



var map = armas[weapon];
sprite = map[? "sprite"]; //ARMAZENAR OS VALORES EM VARIAVEIS
projetil = map[? "projetil"];
vel_projetil = map[? "vel_projetil"];
projetil_dano = map[? "projetil_dano"];
projetil_delay = map[? "projetil_delay"];
automatic = map[? "automatic"];
effect = map[? "effect"];
projetil_quant = map[? "projetil_quant"];
perfurante = map[? "perfurante"];
explosivo = map[? "explosivo"];