instance_destroy();
score += 300;
audio_play_sound(Sg_fun,1,false);
with(other){
	instance_destroy();
	if(sprite_index == Spr_bigastripod){
		score += 100;
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_mediumasteriod;
		}
	}else if(sprite_index == Spr_mediumasteriod){
		score += 200;
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_smlasriod;
		}
	}
	instance_create_layer(x,y,"Instances",Obj_explosion);
}