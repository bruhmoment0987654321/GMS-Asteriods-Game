/// @description follow the target

//using an if statement so the game won't crash and the game checks if the target exists
if (instance_exists(target)){
//camera coordinates follow the target (ship)
	cameraX = target.x - (cameraWidth/2);
	cameraY = target.y - (cameraHeight/2);
	
//stopping (or clamping) the camera at a certain point
	cameraX = clamp(cameraX,0,room_width - cameraWidth);
	cameraY = clamp(cameraY,0,room_height - cameraHeight);

//setting up camera position
	camera_set_view_pos(view_camera[0],cameraX,cameraY);
}


