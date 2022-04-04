if(!global.gamePause) {
	if(instance_exists(o_player)) {
		
		if(o_player.state == player_state_dead) {
			if(keyboard_check_pressed(ord("R"))) {
				game_restart();
			}//end if
		}//end if
		
		if(o_player.hp == 9) || (o_player.hp == 10) {
			global.keyleft = keyboard_check(ord("A"));
			global.keyRight = keyboard_check(ord("D"));
			global.keyUp = keyboard_check(ord("W"));
			global.keyDown = keyboard_check(ord("S"));
			global.keyShoot = mouse_check_button(mb_left);
		}//end if
		else if(o_player.hp == 7) || (o_player.hp == 8) {
			global.keyleft = 0;
			global.keyRight = keyboard_check(ord("D"));
			global.keyUp = keyboard_check(ord("W"));
			global.keyDown = keyboard_check(ord("S"));
			global.keyShoot = mouse_check_button(mb_left);
		}//end else if
		else if(o_player.hp == 5) || (o_player.hp == 6) {
			global.keyleft = 0;
			global.keyRight = 0;
			global.keyUp = keyboard_check(ord("W"));
			global.keyDown = keyboard_check(ord("S"));
			global.keyShoot = mouse_check_button(mb_left);
		}//end else if
		else if(o_player.hp == 3) || (o_player.hp == 4) {
			global.keyleft = 0;
			global.keyRight = 0;
			global.keyUp = 0;
			global.keyDown = keyboard_check(ord("S"));
			global.keyShoot = mouse_check_button(mb_left);
		}//end else if
		else if(o_player.hp == 1) || (o_player.hp == 2) {
			global.keyleft = 0;
			global.keyRight = 0;
			global.keyUp = 0;
			global.keyDown = 0;
			global.keyShoot = mouse_check_button(mb_left);
		}//end else if
	}//end if
}//end if

if(!audio_is_playing(ost_music)) {
	audio_play_sound(ost_music, 100, true);
}//end if
