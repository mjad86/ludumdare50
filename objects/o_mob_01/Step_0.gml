if(!global.gamePause) {
	firingDelay = max(0, firingDelay - 1);//resets fire delay
	flash = max(0, flash - 1); //resets flash
	alarmCounter = max(0, alarmCounter -1);//resets alarm trigger counter
	
	if(hp <= 0) {
		state = ENEMYSTATE.DIE;	
	}//end if
	
	if(instance_exists(o_player)) {
		if(x >= o_player.x) {
			image_xscale = -1;
		}//end if
		else {
			image_xscale = 1;
		}//end else
	}//end if

	switch(state) {
		case ENEMYSTATE.FREE:
			if(sprite_index != spriteIdle) {
				image_index = 0;
				sprite_index = spriteIdle;
			}//end if	
			if(instance_exists(o_player)) {
				if (!collision_line(x, y, o_player.x, o_player.y, o_parent_col, false, false))	{
				    // Line of sight is not obstructed by a wall, chase the player
					if(distance_to_object(o_player) <= aggroRange) && (firingDelay <= 0) && (o_player.state != player_state_dead) {
						if(path_exists(path)) {
							path_delete(path); //check if path exists b4 deleting it
						}//end if
						path_end();
						state = ENEMYSTATE.ATTACK;
					}//end if
				}//end if
				if(o_player.state != player_state_dead) && (alarmCounter <= 0) {
					alarm[1] = 60;//starts alarm
					alarmCounter = 60;//sets for 1 sec
				}//end if
			}//end if
		break;
		case ENEMYSTATE.ATTACK:
			if(sprite_index != spriteAttack) {
				image_index = 0;
				sprite_index = spriteAttack;
			}//end if
			if (firingDelay <= 0) {
				firingDelay = random_range(90, 180);
				with(instance_create_layer(x, y, "projectiles", o_green_projectile)) {
					//creation of projectile
					speed = 5;
					direction = point_direction(other.x, other.y, o_player.x, o_player.y);
					image_angle = direction;
				}//end with
			}//end if
			if(animation_end()) {
				state = ENEMYSTATE.FREE;
			}//end if
		break;
		case ENEMYSTATE.DIE:
			if(sprite_index != spriteDie) {
				image_index = 0;
				sprite_index = spriteDie;
				if(path_exists(path)) {
					path_delete(path); //check if path exists b4 deleting it
				}//end if
				path_end();
			}//end if

			if(animation_end()) {
				instance_destroy();
			}//end if
		break;
	}//end switch
}//end if
else {
	//if game pause. stops path
	if(path_exists(path)) {
		path_delete(path); //check if path exists b4 deleting it
	}//end if
	path_end();
}//end else
