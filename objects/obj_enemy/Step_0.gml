cell_t = obj_map.cell_t
var x1 = x;
var y1 = y;
var x2 = (obj_player.x div cell_t)*cell_t+16;
var y2 = (obj_player.y div cell_t)*cell_t+16;

if(mp_grid_path(obj_map.mp_grid, caminho, x1,y1,x2,y2,true)){
	path_start(caminho, velc,path_action_stop,false);
}