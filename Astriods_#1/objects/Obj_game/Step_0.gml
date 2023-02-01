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
		case Rm_objective:
		case Rm_boss:
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
		case Rm_objective:
		case Rm_boss:
		break;
		
	}
}
if (keyboard_check_pressed(ord(2))){
	switch(room){
		case Rm_gamecontrols:
			room_goto(Rm_objective);
		break;
		
		case Rm_game:
		case Rm_win:
		case Rm_gameover:
		case Rm_start:
		case Rm_objective:
		case Rm_boss:
		break;
		
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
	switch(room){
		case Rm_game:
		room_goto(Rm_boss);
		case Rm_start:
		case Rm_win:
		case Rm_gameover:
		case Rm_gamecontrols:
		case Rm_objective:
		break;
		
	}
}