//Momimentação
velh = 0;
velv = 0;
velc = 3.0;
move_dir = 0;

my_weapon = instance_create_layer(x,y,"Weapons", obj_sword);
my_weapon.sword_id = self;


//Dash
dash_dir = -1;
dash_velc = 6;

//Estado
state = scr_player_andando;

//Estamina
max_estamina = 100;
estamina = max_estamina;