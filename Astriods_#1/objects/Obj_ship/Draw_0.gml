draw_self();
//draw dynomite
if(guns == 4){
	draw_sprite_ext(Spr_ship_shape_pow,powerups.dynomite,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}else if(guns == 3){
//shrink self
Obj_ship.image_xscale = 0.5;
Obj_ship.image_xscale = 0.5;
}
//draw guns 
