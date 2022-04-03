//update destination
if(instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}//end if

//update position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//keep camera in room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//screen shake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLenght) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);
