/// @description follow the target

//using an if statement so the game won't crash and the game checks if the target exists
if (instance_exists(target)){
//camera coordinates follow the target (ship)
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
//stopping (or clamping) the camera at a certain point
	global.cameraX = clamp(global.cameraX,0,room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY,0,room_height - global.cameraHeight);

//setting up camera position
	camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);
}


