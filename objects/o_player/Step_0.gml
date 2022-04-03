//calculate direction and magnitude
inputDirection = point_direction(0, 0, global.keyRight - global.keyleft, global.keyDown - global.keyUp);
inputMagnitude = (global.keyRight - global.keyleft != 0) || (global.keyDown - global.keyUp != 0);

if(!global.gamePause) {
	//state machine execution
	script_execute(state);
	invulnerable = max(0, invulnerable - 1);
	flash = max(0, flash - 1);
}//end if

