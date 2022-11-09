switch(room){
	case Rm_game:
		draw_text(20,20,"SCORE:" +string(score));
		draw_text(20,40,"LIVES:" +string(lives));
	break;
	
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
	
	case Rm_start:
		draw_set_halign(fa_center);
		var c = c_blue;
		var d = c_green;
		var e = c_gray;
		var f = c_red;
		draw_text_transformed_color(
			room_width/2,100, "4TH PERSON SHOOTER",
			4,4,0,c,d,e,f,1
		);
		draw_text(room_width/2,300,
			@"Play and have fun with 4 playerrrrsss :)
Get 30,000 points to win :o
>>PRESS TAB FOR CONTROLS OF ALL PLAYERS AND HOW TO PLAY<<
>>>PRESS ENTER TO START<<<"
		);
		draw_set_halign(fa_left);
	break;
	
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
	
	case Rm_gamecontrols:
		draw_set_halign(fa_center);
		draw_text(room_width/2,50,
			@"Objective:Everyone works 'together'
			What I mean by that is everyone gets to share the same amount of points. 
			Do you think you and your friends can play this game?
			Oh yeah, also, you can shoot your friends
			Ok. here are the controls
			Also I added a new control called stop to stop the ship
			PLAYER 1:
			Left: Left Arrow Key
			Right: Right Arrow Key
			Shoot: Up Arrow Key
			Stop: Down Arrow Key
			Go Forward: Space
			
			PLAYER 2:
			Left: A
			Right: D
			Shoot: W
			Stop: S
			Go Forward: E
			
			PLAYER 3:
			Left: F
			Right: H
			Shoot: T
			Stop: G
			Go Forward: Y
			
			PLAYER 4:
			Left: J
			Right: L
			Shoot: I
			Stop: K
			Go Forward: O
			"
		);
	break;
}
