global.score += scoreValue;
global.kills += 1;
if(!audio_is_playing(sfx_misile_exp)) {
	audio_play_sound(sfx_misile_exp, 100, false);
}//end if
