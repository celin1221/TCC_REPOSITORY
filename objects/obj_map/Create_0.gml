

cell_t = sprite_get_height(spr_wall);

room_width = cell_t *30;
room_height = room_width div 2;

cell_h = room_width div cell_t;
cell_v = room_height div cell_t;

grid = ds_grid_create(cell_h, cell_v);
ds_grid_clear(grid, 0);

mp_grid = mp_grid_create(0,0,cell_h,cell_v,cell_t,cell_t);
randomize();

var dir = irandom(3);
var xx = cell_h div 2;
var yy = cell_v div 2;

var chances = 1;
var passos = 1000;
var max_spawner = 10;

var tile_layer = layer_tilemap_get_id("Ground_Tile");

for(var i = 0; i<passos ; i+=1){
	
	dir = irandom(3);

	xx+= lengthdir_x(1, dir*90);
	yy+= lengthdir_y(1, dir*90);
	
	xx = clamp(xx, 2, cell_h - 2);
	yy = clamp(yy, 2, cell_v - 2);
	
	grid[# xx,yy] = 1;
}

for(var xx = 0; xx<cell_h; xx+=1){
	for(var yy = 0; yy<cell_v; yy+=1){
		if(grid[# xx, yy] == 0){
			instance_create_layer(xx*cell_t,yy*cell_t, "Instances_Tile", obj_wall);
		}
		if(grid[# xx, yy] == 1){
			var x1 = xx*cell_t + cell_t/2;
			var y1 = yy*cell_t + cell_t/2;
			if(!instance_exists(obj_player)){
				instance_create_layer(x1,y1, "Instances", obj_player);
			}
			
			if(max_spawner>0){
				var chances = 60;
				var distance = 100
				if(irandom(1000)<chances && point_distance(x1,y1,obj_player.x, obj_player.y) > distance){
				instance_create_layer(x1,y1, "Instances", obj_spawn);
				max_spawner-=1;
				}
			}
			var g_sort = irandom(1000);
			if(g_sort<=300){
				tilemap_set(tile_layer,1,xx,yy);
			}else if(g_sort>300 and g_sort<= 600){
				tilemap_set(tile_layer, 2, xx, yy);
			}else if(g_sort>600 and g_sort<= 700){
				tilemap_set(tile_layer, 3, xx, yy);
			}else if(g_sort>700 and g_sort<= 800){
				tilemap_set(tile_layer, 4, xx, yy);
			}else if(g_sort>800 and g_sort<= 950){
				tilemap_set(tile_layer, 5, xx, yy);
			}else if(g_sort>950 and g_sort<= 975){
				tilemap_set(tile_layer, 5, xx, yy);
				instance_create_layer(x1,y1,"Instances_Tile",obj_stone1);
			}else if(g_sort>975){
				tilemap_set(tile_layer, 7, xx, yy);
			}
		}
	}
}

mp_grid_add_instances(mp_grid, obj_wall,false);