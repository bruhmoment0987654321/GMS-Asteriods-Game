///@description making the astroids spawn faster

if (room != Rm_game){
	exit;	
}

Scr_spawn_off_camera(Obj_asteroid,1);

//speed of the asteroids
alarm[0] = 4*60;
