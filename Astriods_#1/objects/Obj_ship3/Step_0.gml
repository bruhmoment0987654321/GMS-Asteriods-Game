if (keyboard_check(ord("F"))){
	image_angle += 5;
}
if (keyboard_check(ord("H"))){
	image_angle -= 5;
}
if (keyboard_check(ord("Y"))){
	motion_add(image_angle,0.1);
}
if (keyboard_check(ord("G"))){
	motion_set(image_angle,0);
}
if (keyboard_check_pressed(ord("T"))){
	var inst = instance_create_layer(x,y,"Instances",Obj_bullet4);
	inst.direction = image_angle;
	audio_play_sound(Sg_destroy,1,false);
}
move_wrap(true,true,sprite_width/2);

