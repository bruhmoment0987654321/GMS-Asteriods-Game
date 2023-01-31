if (keyboard_check(vk_left)){
	image_angle += 5;
}
if (keyboard_check(vk_right)){
	image_angle -= 5;
}
if (keyboard_check(vk_up)){
	motion_add(image_angle,0.1);
	
	//particle FX
		var len = sprite_height *.4;
		var _xx = x - lengthdir_x(len,image_angle)
		var _yy = y - lengthdir_y(len,image_angle)
		with(Obj_particles){
			part_particles_create(partSys,_xx,_yy,partTypeExhaust,1);
		}
}
if (keyboard_check(vk_down)){
		motion_add(image_angle,-0.2);
		
		//particle FX
		var len = sprite_height*0.4;
		var _xx = x - lengthdir_x(len,image_angle)
		var _yy = y - lengthdir_y(len,image_angle)
		with(Obj_particles){
			part_particles_create(partSys,_xx,_yy*1.1,partTypeExhaust2,1);
		}
		var len = sprite_height * 0.4;
		var _xx = x - lengthdir_x(len,image_angle)
		var _yy = y - lengthdir_y(len,image_angle)
		with(Obj_particles){
			part_particles_create(partSys,_xx,_yy/1.1,partTypeExhaust2,1);
		}
}
if (keyboard_check_pressed(vk_space)){
	create_bullet(Obj_ship.x,Obj_ship.y,image_angle,bulletSpeed,guns);
}

move_wrap(true,true,sprite_width/2);