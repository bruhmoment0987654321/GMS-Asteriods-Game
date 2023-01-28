if (keyboard_check(ord("J"))){
	image_angle += 5;
}
if (keyboard_check(ord("L"))){
	image_angle -= 5;
}
if (keyboard_check(ord("I"))){
	motion_add(image_angle,0.1);
}
if (keyboard_check(ord("K"))){
	motion_set(image_angle,0);
}
if (keyboard_check_pressed(ord("O"))){
	var inst = instance_create_layer(x,y,"Instances",Obj_bullet3);
	inst.direction = image_angle;
	audio_play_sound(Sg_pew,1,false);
}
move_wrap(true,true,sprite_width/2);

