//@ description give a chance to drop power-up
if (irandom_range(0,5) == 0){
	instance_create_layer(x,y,"Instances",Obj_powerup);	
}
