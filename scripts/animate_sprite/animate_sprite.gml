
function animate_sprite() {

	//update sprite
	if(inputMagnitude != 0) {
		if(sprite_index != spriteMove) {
			image_speed = 1;
			image_index = 0;
			sprite_index = spriteMove;
		}//end if
	}//end if
	else {
		if(sprite_index != spriteIdle) {
			image_speed = 0;
			image_index = 0;
			sprite_index = spriteIdle;
		}//end if
	}//end else
	
	if(mouse_x >= x) {
		image_xscale = 1;
	}//end if
	else {
		image_xscale = -1;
	}//end else
	
}//end script