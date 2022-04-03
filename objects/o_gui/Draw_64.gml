if(global.gamePause) {
	draw_set_font(f_text);
	var _c = c_white;
	var _c2 = c_black;
	draw_set_color(_c2);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(0.5)
	draw_rectangle(0, 0, viewWidth * 2, viewHeight * 2, false);
	draw_set_alpha(1);
	draw_set_color(_c);

	draw_text(viewWidth, viewHeight, "Game Pause.");	
}//end if
	
	//set text, color and alignments
	draw_set_font(f_text);
	var _c = c_white;
	var _c2 = c_black;
	draw_set_color(_c);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
if (instance_exists(o_player)) {
	
	if(o_player.state != player_state_dead) {
		//draw_score
		draw_text(TILE_SIZE * 2, TILE_SIZE, "Score: " + string(global.score));
	}//end if
	else {
		//draw_game over
		draw_set_color(_c2);
		draw_set_alpha(0.5)
		draw_rectangle(0, 0, viewWidth * 2, viewHeight * 2, false);
		draw_set_alpha(1);
		draw_set_color(_c);

		draw_text(viewWidth, viewHeight, "Game Over.");
	}//end else

}//end if


