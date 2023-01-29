/// @description make scraps 
global.cameraShake = 16;

  audio_play_sound(Sg_pew, 1, false);
            var _sep = 7;
			var _dir = image_angle;
            var _bullet_angle;
            var i = 0;
            
            repeat(8){
                _bullet_angle = _dir + (i * 45);
                initialise_bullet(Obj_bullet,
                    x + lengthdir_x(_sep,_bullet_angle),
                    y+ lengthdir_y(_sep,_bullet_angle),
                    _bullet_angle, 7,
                );
                i++;
            }
instance_create_layer(Obj_bomba.x,Obj_bomba.y,"Instances",Obj_bombaL,
{
    speed : 7,
    direction : 135
});

instance_create_layer(Obj_bomba.x,Obj_bomba.y,"Instances",Obj_bombaR,
{
    speed : 9,
    direction : -45
});

