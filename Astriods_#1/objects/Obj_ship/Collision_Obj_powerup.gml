///@ description finding what happens with the powerup reseting 
with(other){
	var power_up_type = image_index;
	instance_destroy();
}
switch(power_up_type){
	default:
		//change players guns
		guns = power_up_type;
		alarm[0] = 20*room_speed;
	break;
	case powerups.dynomite:
		dynomite = true;
		alarm[1] = 60*63.6
	break;
}