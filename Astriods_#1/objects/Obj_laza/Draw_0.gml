/// @description drawin how far the lazer goes
var len = 5000;

draw_line_width_color(x,y,
	x + lengthdir_x(len,direction),
	y + lengthdir_y(len,direction),
	7,image_blend,image_blend);

//draw collision
collision_line(x,y,
	x + lengthdir_x(len,direction),
	y + lengthdir_y(len,direction),
	Obj_asteroid,false,false
);

