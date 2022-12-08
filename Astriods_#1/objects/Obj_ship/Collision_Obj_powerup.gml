with(other){
	var power_up_type = image_index;
	instance_destroy();
}
switch(power_up_type){
	default:
		//change players guns
		guns = power_up_type;
		alarm[0] = 10*room_speed;
	break;
}