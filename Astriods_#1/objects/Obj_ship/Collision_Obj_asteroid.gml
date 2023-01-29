///@description respawning 
global.cameraShake = 20;
lives -= 1;
instance_destroy();
instance_create_layer(x,y,"Instances",Obj_explosion);
audio_play_sound(Sg_fun,1,false);

if(!instance_exists(Obj_ship)){
	audio_play_sound(Sg_fun,1,false);
	room_restart();
}
