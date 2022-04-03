//pausing game

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape)) {
	global.gamePause = !global.gamePause;
	
	if(global.gamePause) {
		with(all) {
			gamePausedImageSpd = image_speed;
			gamePauseSpd = speed;
			image_speed = 0;
			speed = 0;
		}//end with
	}//end if
	else {
		with(all) {
			speed = gamePauseSpd;
			image_speed = gamePausedImageSpd;
		}//end with
	}//end else
}//end if
