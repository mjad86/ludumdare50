//pausing game

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape)) && (room == r_lvl1) {
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

if(keyboard_check_pressed(vk_anykey)) {
	if (room == ROOM_START) {
		room_goto(r_tutorial);
	}//end if
	if (room == r_tutorial) {
		room_goto(r_lvl1);
	}//end else
}//end if
