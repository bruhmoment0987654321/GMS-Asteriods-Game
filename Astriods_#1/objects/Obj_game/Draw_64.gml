//drawing all the words in the game
switch(room){
//drawing the score and lives
	case Rm_game:
		draw_text(20,20,"SCORE:" +string(score));
		draw_text(20,40,"lIVES:" +string(lives));
	break;
	
//drawing the "game over" screen 
	case Rm_gameover:
	draw_set_halign(fa_center);
		var c = c_blue;
		var d = c_green;
		var e = c_gray;
		var f = c_red;
		draw_text_transformed_color(
			room_width/2,200, "wow. you lost man",
			4,4,0,f,f,f,f,1
			);
		draw_text(room_width/2,300,
			"FINAL SCORE: "+string(score));
			draw_text(room_width/2,350,
			@"bro. how did you loose
>>PRESS ENTER TO TRY AGAIN<<");
		draw_set_halign(fa_left);
	break;
	
//drawing the start screen
	case Rm_start:
		draw_set_halign(fa_center);
		var c = c_blue;
		var d = c_green;
		var e = c_gray;
		var f = c_red;
		draw_text_transformed_color(
			room_width/2,100, "THE Astrobros B)",
			4,4,0,c,d,e,f,1
		);
		draw_text(room_width/2,300,
			@"Play and have fun with 4 playerrrrsss :)
Get 100,000 points to win! :o
>>PRESS TAB FOR CONTROLS OF ALL PLAYERS AND HOW TO PLAY<<
>>>PRESS ENTER TO START<<<
>>PRESS 'R' TO RESTART<<"
		);
		draw_set_halign(fa_left);
	break;
	
//win screen
	case Rm_win:
		draw_set_halign(fa_center);
		var c = c_blue;
		var d = c_green;
		var e = c_gray;
		var f = c_red;
		draw_text_transformed_color(
			room_width/2,200, @"WAHOOOOO! YEAHH
YOU WON!!",
			4,4,0,d,d,d,d,1
		);
		draw_text(room_width/2,400,
			"FINAL SCORE: "+string(score));
		draw_text(room_width/2,500,
			@"Since you're soooo good, you should play again. How does that sound?
>>>PRESS ENTER TO RESTART<<<"
		);
		draw_set_halign(fa_left);
	break;
	
// game controls 
	case Rm_gamecontrols:
		draw_text_transformed(room_width/9,room_height/5,ctrl_txt2,1,1,0);
		draw_text_transformed(room_width/1.5,room_height/5,ctrl_txt,1,1,0);
		draw_text(600,775,"Press 2 for Objective");
		draw_text(590,750,"Press Enter to go back to Title Screen");
	break;
	
//objective (nothing here so the words won't appear on the top)
	case Rm_objective:
	break;
}