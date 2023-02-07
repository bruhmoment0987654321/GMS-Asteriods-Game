/// @description this is here just for the objective
switch(room){
	case Rm_game:
	case Rm_gameover:
	case Rm_start:
	case Rm_win:
	case Rm_gamecontrols:
	break;
	case Rm_objective:
		draw_set_halign(fa_center);
		var g = c_yellow
		draw_text_transformed_color(room_width/2,5,ctrl_txt3,1.50,1.5,0,g,g,g,g,1);
		draw_set_halign(fa_left);
	break;
	case Rm_talking_room:
		draw_set_halign(fa_center);
		draw_text_transformed(room_width/2,5,ctrl_txt2,1.50,1.5,0);
		draw_set_halign(fa_left);
	break;
}


