/// @description this is the score, lives, power-ups, and text
score = 0;
lives = 3;
draw_set_font(fnt_text);


ctrl_txt = 
@"PLAYER 2:
Left: A
Right: D
Shoot: E
Stop: S
Go Forward: W








PLAYER 4:
Left: J
Right: L
Shoot: O
Stop: K
Go Forward: I"

ctrl_txt2 = @"PLAYER 1:
Left: Left Arrow Key
Right: Right Arrow Key
Shoot: Space
Stop: Down Arrow Key
Go Forward: Up Arrow Key








PLAYER 3:
Left: F
Right: H
Shoot: Y
Stop: G
Go Forward: T"

ctrl_txt3 = @"Objective:
Everyone works 'together'
Everyone gets to share the same amount of points. 
Do you think you and your friends can play this game?
There are some cool secrets in this game that are cool.
Good luck with them though
>:)"

randomize();

enum powerups {
	bomba,
	laza, 
	little_men,
	dynomite,
	microphoney
}