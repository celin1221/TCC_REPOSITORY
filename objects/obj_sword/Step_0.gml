sword_dir = obj_player.image_xscale*-1;
if(instance_exists(sword_id)){
	x = sword_id.x + 2*sword_dir;
	y = sword_id.y - 10;
	
	image_xscale = sword_dir;
	
}else{
	instance_destroy();
}