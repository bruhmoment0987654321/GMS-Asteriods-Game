/// @description Camera setup

//variables for camera and the target being followed (ship)
global.cameraX = 0;
global.cameraY = 0;
target = Obj_ship;

//the aspect ratio for the game (16:9)
global.cameraWidth = 1024;
global.cameraHeight = 576;

//the camera activation
view_enabled = true;
view_visible[0] = true;
//size of camera in game room
camera_set_view_size(view_camera[0],global.cameraWidth,global.cameraHeight);

//Display 
displayScale = 1.5;
displayWidth = (global.cameraWidth * displayScale);
displayHeight = (global.cameraHeight * displayScale);

window_set_size(displayWidth,displayHeight);

surface_resize(application_surface,displayWidth,displayHeight);

//GUI
display_set_gui_size(global.cameraWidth,global.cameraHeight);