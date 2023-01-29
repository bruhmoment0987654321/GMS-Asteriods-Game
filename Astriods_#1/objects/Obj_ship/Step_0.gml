if (keyboard_check(vk_left)){
	image_angle += 5;
}
if (keyboard_check(vk_right)){
	image_angle -= 5;
}
if (keyboard_check(vk_up)){
	motion_add(image_angle,0.1);
}
if (keyboard_check(vk_down)){
	if (speed > 0){
		motion_add(image_angle,-0.1);
		if (speed < 0)motion_set(image_angle,0);	
	}

}
if (keyboard_check_pressed(vk_space)){
	create_bullet(Obj_ship.x,Obj_ship.y,image_angle,bulletSpeed,guns);
}

move_wrap(true,true,sprite_width/2);