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
//parallax for the different background objects

layer_x("Parallax_0",global.cameraX * 0.98);
layer_y("Parallax_0",global.cameraY * 0.98);

layer_x("Parallax_1",global.cameraX * 0.95);
layer_y("Parallax_1",global.cameraY * 0.95);

layer_x("Parallax_2",global.cameraX * 0.9);
layer_y("Parallax_2",global.cameraY * 0.9);

layer_x("Gradient",global.cameraX * 0.88);
layer_y("Gradient",global.cameraY * 0.88);


