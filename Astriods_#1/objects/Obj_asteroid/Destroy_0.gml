//@ description give a chance to drop power-up
if (irandom_range(0,5) == 0){
	instance_create_layer(x,y,"Instances",Obj_powerup);	
}
	var _xx = x
	var _yy = y
	var _ib = image_blend;
	with(Obj_particles){
		part_particles_create_colour(partSys,_xx,_yy/1.1,partTypeAsteroidDebris,_ib,8);
	}