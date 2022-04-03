function player_shoot_still() {
		
	if(sprite_index != spriteShoot) {
		image_index = 0;
		image_speed = 1;
		sprite_index = spriteShoot;
	}//end if
	
	//collition
	collition();

	//apply movement
	x += hSpeed;
	y += vSpeed;
	
	if(animation_end()) {
		image_speed = 0;
		state = player_state_free;
	}//end if

}//end script