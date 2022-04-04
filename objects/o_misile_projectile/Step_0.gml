//homing

lifeTime = max(0, lifeTime - 1);

if(lifeTime == 0) {
	instance_destroy();
}//end if

if(instance_exists(o_player)) && (state == "follow") {
	var _near = instance_nearest(x, y, o_player);
	
	var _targetDir = point_direction(x, y, _near.x, _near.y);
	direction += sin(degtorad(_targetDir - direction)) * 3;
	image_angle = direction;
	
}//end if
