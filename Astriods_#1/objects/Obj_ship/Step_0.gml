if (keyboard_check(vk_left)){
	image_angle += 5;
}
if (keyboard_check(vk_right)){
	image_angle -= 5;
}
if (keyboard_check(vk_space)){
	motion_add(image_angle,0.1);
}
if (keyboard_check(vk_down)){
	motion_set(image_angle,0);
}
if (keyboard_check_pressed(vk_up)){
	var inst = instance_create_layer(x,y,"Instances",Obj_bullet);
	inst.direction = image_angle;
}
move_wrap(true,true,sprite_width/2);