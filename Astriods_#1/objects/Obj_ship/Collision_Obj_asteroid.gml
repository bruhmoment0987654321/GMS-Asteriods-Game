///@description respawning 
global.cameraShake = 20;
instance_destroy();
instance_create_layer(x,y,"Instances",Obj_explosion);
audio_play_sound(Sg_fun,1,false);

if(!instance_exists(Obj_ship)){
	audio_play_sound(Sg_fun,1,false);
	audio_stop_sound(Sg_monkeysspinningmonkeys);
	audio_stop_sound(Sg_bombtimer);
	room_restart();
}
