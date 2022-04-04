with(other) {
	hp -= o_player.dmg;
	flash = 3;
}//end with

audio_play_sound(sfx_hurt, 100, false);

instance_destroy();
