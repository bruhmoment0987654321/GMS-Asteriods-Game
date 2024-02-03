if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case Rm_start:
			room_goto(Rm_game);
		break;
		case Rm_win:
		case Rm_gameover:
		case Rm_gamecontrols:
			room_goto(Rm_game);
		break;
	}
}

if(keyboard_check_pressed(vk_tab)){
	if(room == Rm_start){
		room_goto(Rm_game);	
	}
}
if (keyboard_check_pressed(ord(2))){
	if(room == Rm_gamecontrols){
		room_goto(Rm_objective);	
	}
}

if (room == Rm_game){
	if (lives <=0){
		room_goto(Rm_gameover);
		alarm[1] = 3*60;
	}
	if (score >= 100000){
		room_goto(Rm_win);
		audio_play_sound(Sg_Homerwahoo,1,false);
	}
}
if (!instance_exists(Obj_bear)){
	if(room == Rm_game){
		room_goto(Rm_talking_room);	
	}
}