/// @description this is the score, lives, power-ups, and text
lives = 4;
draw_set_font(fnt_text);
ctrl_txt = @"PLAYER 1:
Left: Left Arrow Key
Right: Right Arrow Key
Shoot: Space
Go Back: Down Arrow Key
Go Forward: Up Arrow Key"

ctrl_txt2 = @"Don't worry. This is supposed to happen. I'm sorry this is empty.
There is supposed to be a boss battle but I don't have enough time to for it
I will probably add it in another game though. I can't tell you because I don't 
know either. Sorry! :("

ctrl_txt3 = @"Objective:
Get all those BEARS! Look out though. 
there's another thing you need to look out for.
Asteroids! >:)"

randomize();

enum powerups {
	bomba,
	laza, 
	little_men,
	microphoney
}