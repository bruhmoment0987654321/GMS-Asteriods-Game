instance_destroy();
score += 300;
audio_play_sound(Sg_fun,1,false);
var _xx = x
var _yy = y
var _ib = image_blend;
with(other){
	instance_destroy();
	if(sprite_index == Spr_bigastripod){
		with(Obj_particles){
		part_particles_create_colour(partSys,_xx,_yy/1.1,partTypeAsteroidDebris,_ib,12);
	}
		global.cameraShake = 10;
		score += 100;
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_mediumasteriod;
		}
	}else if(sprite_index == Spr_mediumasteriod){
		with(Obj_particles){
			part_particles_create_colour(partSys,_xx,_yy/1.1,partTypeAsteroidDebris,_ib,8);
		}
		score += 200;
		global.cameraShake = 8
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_smlasriod;
		}
	}else{
		with(Obj_particles){
			part_particles_create_colour(partSys,_xx,_yy/1.1,partTypeAsteroidDebris,_ib,4);
	}
		global.cameraShake = 5;
	}
	instance_create_layer(x,y,"Instances",Obj_explosion);
}