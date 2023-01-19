//this makes you spawn the asteroids in the room
if (room == Rm_game){
	audio_play_sound(Sg_monkeysspinningmonkeys,2,true);
	repeat(6){
		var xx =choose(
		irandom_range(0,room_width*0.3),irandom_range(room_width*0.7,room_width)
		);
		var yy =choose(
		irandom_range(0,room_height*0.3),irandom_range(room_height*0.7,room_height)
		);
		instance_create_layer(xx,yy,"Instances", Obj_asteroid);
	}
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
