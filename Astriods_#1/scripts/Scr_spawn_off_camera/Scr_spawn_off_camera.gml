///@description spawn asteroids off camera
///@arg obj
///@arg number

function Scr_spawn_off_camera(obj,num){
var xx,yy;

//padding so the asteroids won't spawn right at the front (number interchangable)
var pad = 64;

//the asteroids spawn around the camera and the code happens a number of times so nothing crazy happens
repeat(num){
	xx = random_range(0,room_width);
	yy = random_range(0,room_height);
	

	while(point_in_rectangle(xx,yy,global.cameraX - pad,global.cameraY - pad,
	global.cameraX+global.cameraWidth + pad,global.cameraY+global.cameraHeight + pad)){
		xx = random_range(0,room_width);
		yy = random_range(0,room_height);
	}

	instance_create_layer(xx,yy,"instances",obj);
}
}