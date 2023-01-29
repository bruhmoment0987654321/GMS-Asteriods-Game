//create 2 more scraps. and more tiny bullet 2
instance_create_layer(Obj_bombaR.x,Obj_bombaR.y,"Instances",Obj_bombaRpiece1,
{
    speed : 9,
    direction : -135
});

instance_create_layer(Obj_bombaR.x,Obj_bombaR.y,"Instances",Obj_bombaRpiece2,
{
    speed : 9,
    direction : 45
});
	audio_play_sound(Sg_pew, 1, false);
var _sep = 7;
var _dir = image_angle;
var _bullet_angle;
var _spd = Obj_ship.bulletSpeed;
var i = 0;

repeat(4){
	_bullet_angle = _dir + (i * 90);
	initialise_bullet(Obj_bullet,
		x + lengthdir_x(_sep,_bullet_angle),
		y + lengthdir_y(_sep,_bullet_angle),
		_bullet_angle, _spd,
	);
	i++;
}

