//Momimentação
velh = 0;
velv = 0;
velc = 3.0;
move_dir = 0;
dano = 10;

//Armas
my_weapon = instance_create_layer(x, y, "Weapons", obj_weapon);
my_weapon.weapon_id = self;
arma = my_weapon.weapon;
usandoMelee = false;
comecou = false;
alarm[4] = 12;


//Dash
dash_dir = -1;
dash_velc = 6;

//Estado
state = scr_player_andando;

//Estamina
max_estamina = 100;
estamina = max_estamina;

vida = 100;
tomar_dano = true;
empurrar_dir = 0;
dano_alfa = -1;


inimigos_atingidos = ds_list_create();