///@description this draws the power-ups on itself
draw_self();

//draw guns 
if(guns != -1){
	draw_sprite_ext(Spr_ship_shape_pow,guns,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
