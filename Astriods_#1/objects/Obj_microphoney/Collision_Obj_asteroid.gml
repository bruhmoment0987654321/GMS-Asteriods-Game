instance_destroy();
score += 300;
audio_play_sound(Sg_fun,1,false);
with(other){
	instance_destroy();
	if(sprite_index == Spr_bigastripod){
		global.cameraShake = 13;
		score += 100;
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_mediumasteriod;
		}
	}else if(sprite_index == Spr_mediumasteriod){
		score += 200;
		global.cameraShake = 11;
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_smlasriod;
		}
	}else{
		global.cameraShake = 8;
	}
	instance_create_layer(x,y,"Instances",Obj_explosion);
}