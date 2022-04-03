function player_state_dead() {
	
	if(sprite_index != spriteDie) {
		image_speed = 1;
		image_index = 0;
		sprite_index = spriteDie;
	}//end if
	
	if(animation_end()) {
		image_speed = 0;
	}//end if
	
}//end script