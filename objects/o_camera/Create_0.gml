//view_enabled = true;
cam = view_camera[0];
follow = o_player;
viewWidth = camera_get_view_width(cam);
viewHeight = camera_get_view_height(cam);
viewWidthHalf = viewWidth * 0.5;
viewHeightHalf = viewHeight * 0.5;
xTo = xstart;
yTo = ystart;

//screen shake
shakeLenght = 0;
shakeMagnitude = 0;
shakeRemain = 0;
