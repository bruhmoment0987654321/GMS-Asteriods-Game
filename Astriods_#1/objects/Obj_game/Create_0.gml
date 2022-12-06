score = 0;
lives = 4;
draw_set_font(fnt_text);

enum powerups {
	invincibl,
	laza, 
	shrink,
	dynomite,
	microphoney
}

ctrl_txt = 
@"PLAYER 2:
Left: A
Right: D
Shoot: W
Stop: S
Go Forward: E

PLAYER 4:
Left: J
Right: L
Shoot: I
Stop: K
Go Forward: O"

ctrl_txt2 = @"PLAYER 1:
Left: Left Arrow Key
Right: Right Arrow Key
Shoot: Up Arrow Key
Stop: Down Arrow Key
Go Forward: Space

PLAYER 3:
Left: F
Right: H
Shoot: T
Stop: G
Go Forward: Y"

ctrl_txt3 = @"Objective:
Everyone works 'together'
Everyone gets to share the same amount of points. 
Do you think you and your friends can play this game?
There is also a secret mode called 'Arena Mode.' 
Arena Mode makes the whole game into a free for all.
The last person standing wins.
Good luck finding it though >:)"
