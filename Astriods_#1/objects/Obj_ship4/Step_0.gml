if (keyboard_check(ord("H"))){
	image_angle += 5;
}
if (keyboard_check(ord("K"))){
	image_angle -= 5;
}
if (keyboard_check(ord("I"))){
	motion_add(image_angle,0.1);
}
if (keyboard_check(ord("J"))){
	motion_set(image_angle,0);
}
if (keyboard_check_pressed(ord("U"))){
	var inst = instance_create_layer(x,y,"Instances",Obj_bullet);
	inst.direction = image_angle;
}
move_wrap(true,true,sprite_width/2);

