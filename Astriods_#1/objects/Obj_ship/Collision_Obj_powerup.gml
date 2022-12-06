with(other){
	var power_up_type = image_index;
	instance_destroy();
}
switch(power_up_type){
	case powerups.invincibl:
	//make player gain +1 health
	invincible = true;
	alarm[1] = 10*room_speed;
	break;
	
	default:
		//change players guns
		guns = power_up_type;
		alarm[0] = 10*room_speed;
	break;
}