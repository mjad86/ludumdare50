randomize();
window_set_cursor(cr_none);
cursor_sprite = s_retical;

//grid variables
global.grid = noone;

//score and gui
global.score = 0;
global.kills = 0;

//controls
global.keyleft = noone;
global.keyRight = noone;
global.keyUp = noone;
global.keyDown = noone;
global.keyShoot = noone;
global.gamePause = false;

//managers
global.iCam = instance_create_layer(0, 0, "Instances", o_camera);//creates camera
global.iGui = instance_create_layer(0, 0, "Instances", o_gui);//creates camera

window_set_fullscreen(true);//set fullscreen

room_goto(ROOM_START);//transition
