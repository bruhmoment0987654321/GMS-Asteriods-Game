if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case Rm_start:
			room_goto(Rm_game);
		break;
		
		case Rm_win:
		case Rm_gameover:
		case Rm_gamecontrols:
			game_restart();
		break;
		
	}
}

if (keyboard_check_pressed(vk_tab)){
	switch(room){
		case Rm_start:
			room_goto(Rm_gamecontrols);
		break;
		
		case Rm_game:
		case Rm_win:
		case Rm_gameover:
		case Rm_gamecontrols:
			game_restart();
		break;
		
	}
}
if (room == Rm_game){
	if (lives <=0){
		room_goto(Rm_gameover);
		alarm[1] = 3*60;
	}
	if (score >= 30000){
		room_goto(Rm_win);
		audio_play_sound(Sg_Homerwahoo,1,false);
	}
}