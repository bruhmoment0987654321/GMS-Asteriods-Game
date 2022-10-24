instance_destroy();

with(other){
	instance_destroy();
	if(sprite_index == Spr_bigastripod){
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_mediumasteriod;
		}
	}else if(sprite_index == Spr_mediumasteriod){
		repeat(2){
			var coolastroid = instance_create_layer(x,y,"Instances",Obj_asteroid);
			coolastroid.sprite_index = Spr_smlasriod;
		}
	}
	
}