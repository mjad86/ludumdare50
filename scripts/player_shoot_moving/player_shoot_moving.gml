function player_shoot_moving() {
	if(sprite_index != spriteShootMoving) {
		image_index = 0;
		image_speed = 1;
		sprite_index = spriteShootMoving;
	}//end if
	
	//collition
	collition();

	//apply movement
	x += hSpeed;
	y += vSpeed;

	if(animation_end()) {
		state = player_state_free;
	}//end if	

}//end script