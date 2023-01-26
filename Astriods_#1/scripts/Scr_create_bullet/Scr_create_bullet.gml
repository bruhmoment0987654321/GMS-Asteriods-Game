///@ description creating bullets
//@arg direction
//@arg speed
//@arg gun_type*

function Scr_create_bullet(_dir,_spd,_gun_type){
	if(_gun_type == undefined){
		_gun_type = -1;	
	}else{
		
	}
	if (argument_count > 2) _gun_type = argument[3];
	
	//CHOOSE GUN TYPE
	switch(_gun_type){
		case powerups.bomba:
			var inst = instance_create_layer(x,y,"Instances",Obj_bomba);
			audio_play_sound(Sg_destroy,1,false);
			Scr_initialize_bullet(_dir,_spd/2,inst);
		break;
		
		case powerups.dynomite:
		
		break;
		
		case powerups.laza:
		
		break;
		
		case powerups.microphoney:
		
		break;
		
		case powerups.little_men:
			audio_play_sound(Sg_destroy,1,false);
			var _sep = 7;
			var bullet_angle;
			var i = 0;
			repeat(8){
				bullet_angle = _dir + (i*45);
				var inst = instance_create_layer(
				x + lengthdir_x(_sep,bullet_angle),
				y+lengthdir_y(_sep,bullet_angle),
				"Instances",Obj_bullet1);
				Scr_initialize_bullet(bullet_angle,_spd,inst);
			}
		
		break;
		
		default:
			//bullet creation for normal bullet
			var inst = instance_create_layer(x,y,"Instances",Obj_bullet1);
			audio_play_sound(Sg_destroy,1,false);
			Scr_initialize_bullet(_dir,_spd,inst);
		break;
		
	}
}