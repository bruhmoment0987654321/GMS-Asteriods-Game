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