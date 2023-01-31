if (keyboard_check(ord("J"))){
	image_angle += 5;
}
if (keyboard_check(ord("L"))){
	image_angle -= 5;
}
if (keyboard_check(ord("I"))){
	motion_add(image_angle,0.1);
	
	//particle FX
		var len = sprite_height *.4;
		var _xx = x - lengthdir_x(len,image_angle)
		var _yy = y - lengthdir_y(len,image_angle)
		with(Obj_particles){
			part_particles_create(partSys,_xx,_yy,partTypeExhaust,1);
		}
}
if (keyboard_check(ord("K"))){
		motion_add(image_angle,-0.15);
		
		//particle FX
		var len = sprite_height*0.4;
		var _xx = x - lengthdir_x(len,image_angle)
		var _yy = y - lengthdir_y(len,image_angle)
		with(Obj_particles){
			part_particles_create(partSys,_xx,_yy*1.05,partTypeExhaust2,1);
		}
		var len = sprite_height * 0.4;
		var _xx = x - lengthdir_x(len,image_angle)
		var _yy = y - lengthdir_y(len,image_angle)
		with(Obj_particles){
			part_particles_create(partSys,_xx,_yy/1.05,partTypeExhaust2,1);
		}
}
if (keyboard_check_pressed(ord("O"))){
	create_bullet(Obj_ship.x,Obj_ship.y,image_angle,bulletSpeed,guns);
}

move_wrap(true,true,sprite_width/2);

