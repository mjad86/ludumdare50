with(other) {
	if(hp > 0) && (o_player.invulnerable <= 0) {
		hp -= o_parent_enemy.dmg;
		flash = 3;
		invulnerable = 60;
		//screen shake
		screen_shake(4, 12);
		if(hp <= 0) {
			state = player_state_dead;
		}//end if
	}//end if
}//end with

instance_destroy();
