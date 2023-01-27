///@ description creating bullets
//@arg x
//@arg y
//@arg direction
//@arg speed
//@arg gun_type*

function create_bullet(_x, _y, _dir, _spd, _gun_type){
    // make _gun_type an optional arguement
    if (_gun_type == undefined) _gun_type = -1;
    
    switch(_gun_type){
		
		//creates a slow moving bomb that destroys nearby enemies
		case powerups.bomba:
		  audio_play_sound(Sg_pew, 1, false);
            initialise_bullet(Obj_bomba, _x, _y, _dir, _spd/3.5);
            break;
		break; 
		case powerups.dynomite:
		break;
		case powerups.microphoney:
		
		break;
		//power-up that shoots all around
        case powerups.little_men:
            audio_play_sound(Sg_pew, 1, false);
            var _sep = 7;
            var _bullet_angle;
            var i = 0;
            
            repeat(8){
                _bullet_angle = _dir + (i * 45);
                initialise_bullet(Obj_bullet1,
                    _x + lengthdir_x(_sep,_bullet_angle),
                    _y+ lengthdir_y(_sep,_bullet_angle),
                    _bullet_angle, _spd,
                );
                i++;
            }
            break;
           //lazer power-up
        case powerups.laza:
            audio_play_sound(Sg_laza, 1, false);
            initialise_bullet(Obj_laza, _x, _y, _dir, _spd);
            break;
        // the default bullet
        default:
            audio_play_sound(Sg_pew, 1, false);
            initialise_bullet(Obj_bullet1, _x, _y, _dir, _spd);
            break;
    }       
}
