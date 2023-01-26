///@description this draws the power-ups on itself
	draw_self();

//draw guns 
if(guns != -1){
	draw_sprite_ext(Spr_ship_shape_pow,guns,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
//draw dynomite
if(dynomite){
	draw_sprite_ext(Spr_ship_shape_pow,powerups.dynomite,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
//draw "little_men" bigger
if(guns = 2){
	draw_sprite_ext(Spr_ship_shape_pow,powerups.little_men,x,y,image_xscale*1.2,image_yscale*1.2,image_angle,image_blend,image_alpha);
}	
