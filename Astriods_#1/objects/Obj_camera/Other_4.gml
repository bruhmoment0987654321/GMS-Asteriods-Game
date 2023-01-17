/// @description Camera setup

cameraX = 0;
cameraY = 0;
target = Obj_ship;

cameraWidth = 1024;
cameraHeight = 576;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0],cameraWidth,cameraHeight);

//Display 
displayScale = 1.5;
displayWidth = (cameraWidth * displayScale);
displayHeight = (cameraHeight * displayScale);

window_set_size(displayWidth,displayHeight);

surface_resize(application_surface,displayWidth,displayHeight);

//for reason, check description of Alarm [0]
alarm [0] = 1;