if (keyboard_check(ord("A"))){
	image_angle += 5;
}
if (keyboard_check(ord("D"))){
	image_angle -= 5;
}
if (keyboard_check(ord("W"))){
	motion_add(image_angle,0.1);
}
if (keyboard_check(ord("S"))){
	motion_set(image_angle,0);
}
if (keyboard_check_pressed(ord("E"))){
	var inst = instance_create_layer(x,y,"Instances",Obj_bullet2);
	inst.direction = image_angle;
	audio_play_sound(Sg_destroy,1,false);
}
move_wrap(true,true,sprite_width/2);

