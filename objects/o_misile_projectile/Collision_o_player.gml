with(other) {
	if(hp > 0) && (o_player.invulnerable <= 0) {
		hp -= 2;
		flash = 3;
		invulnerable = 60;
		if(!audio_is_playing(sfx_hurt)) {
			audio_play_sound(sfx_hurt, 100, false);
		}//end if
		if(hp == 8) || (hp == 6) || (hp == 4) || (hp == 2) {
			hpColldown = 600;
		}//end if
		//screen shake
		screen_shake(4, 12);
		if(hp <= 0) {
			state = player_state_dead;
		}//end if
	}//end if
}//end with

instance_destroy();
