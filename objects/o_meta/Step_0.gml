if(!global.gamePause) {
	global.keyleft = keyboard_check(ord("F")) || keyboard_check(ord("A"));
	global.keyRight = keyboard_check(ord("H")) || keyboard_check(ord("D"));
	global.keyUp = keyboard_check(ord("T")) || keyboard_check(ord("W"));
	global.keyDown = keyboard_check(ord("G")) || keyboard_check(ord("S"));
	global.keyShoot = mouse_check_button(mb_left) || mouse_check_button(mb_right);
}//end if

