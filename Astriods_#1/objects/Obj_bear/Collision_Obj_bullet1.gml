instance_destroy();
	var _xx = x
	var _yy = y
	var _ib = image_blend;
	audio_play_sound(Sg_hurt,1,false);
	instance_create_layer(x,y,"Instances",Obj_explosion);
	with(Obj_particles){
		part_particles_create_colour(partSys,_xx,_yy/1.1,partTypeAsteroidDebris,_ib,2);
	}