///@description this makes you spawn the asteroids 
if (room == Rm_game){
	//script used
	Scr_spawn_off_camera(Obj_asteroid,40);
	audio_play_sound(Sg_monkeysspinningmonkeys,2,true);
	alarm[0] = 60;
}
//plays audio in objective room
if (room == Rm_objective){
audio_play_sound(Sg_Funny,1,false);
}
//pausing the audio for the game when you go back to the start
if (room == Rm_start){
	audio_pause_all();
}
