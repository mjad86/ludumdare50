function player_state_free(){
	
	//movement
	hSpeed = lengthdir_x(inputMagnitude * speedRun, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedRun, inputDirection);

	//collition
	collition();

	//apply movement
	x += hSpeed;
	y += vSpeed;

	animate_sprite();
	
	firingDelay -= 1;
	//player input actions
	if(global.keyShoot) && (firingDelay <= 0) {
		firingDelay = 5;
		//screen shake
		screen_shake(2, 8);
		with(instance_create_layer(x, y - 8, "projectiles", o_blue_projectile)) {
			//creation of projectile
			speed = 20;
			direction = point_direction(other.x, other.y, mouse_x, mouse_y);
			image_angle = direction;
		}//end with
		if(inputMagnitude != 0) {
			audio_play_sound(sfx_player_shoot, 100, false);
			state = player_shoot_moving;
		}//end if
		else {
			audio_play_sound(sfx_player_shoot, 100, false);
			state = player_shoot_still;
		}//end else
	}//end if

}//end script