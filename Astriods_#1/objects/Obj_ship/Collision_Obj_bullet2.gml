instance_destroy();
instance_create_layer(x,y,"Instances",Obj_explosion);
audio_play_sound(Sg_fun,1,false);
lives -= 1;