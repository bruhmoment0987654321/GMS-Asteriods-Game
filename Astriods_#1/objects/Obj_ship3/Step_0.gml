if (keyboard_check(vk_numpad4)){
	image_angle += 5;
}
if (keyboard_check(vk_numpad6)){
	image_angle -= 5;
}
if (keyboard_check(vk_numpad5)){
	motion_add(image_angle,0.1);
}
if (keyboard_check(vk_numpad2)){
	motion_set(image_angle,0);
}
if (keyboard_check_pressed(vk_numpad8)){
	var inst = instance_create_layer(x,y,"Instances",Obj_bullet);
	inst.direction = image_angle;
}
move_wrap(true,true,sprite_width/2);

