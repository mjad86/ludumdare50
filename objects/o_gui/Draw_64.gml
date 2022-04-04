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
		draw_set_color(c_yellow)
		draw_text(TILE_SIZE * 2, TILE_SIZE, "Score: " + string(global.score));
		if(o_player.hpColldown != 0) {
			draw_set_color(c_red)
			draw_text(viewWidth, viewHeight, "Missing Control's restoring in: " + string(round(o_player.hpColldown/60)));
		}//end if
		
		if(o_player.hp == 9) || (o_player.hp == 10) {
			draw_sprite(s_key_a, 0, TILE_SIZE, (viewHeight * 2) - (TILE_SIZE * 3));
			draw_sprite(s_key_s, 0, TILE_SIZE + 16, (viewHeight * 2) - (TILE_SIZE * 3));
			draw_sprite(s_key_d, 0, TILE_SIZE + 32, (viewHeight * 2) - (TILE_SIZE * 3));
			draw_sprite(s_key_w, 0, TILE_SIZE + 16 , (viewHeight * 2) - (TILE_SIZE * 3.5));
			draw_sprite(s_mouse, 0,TILE_SIZE + 64, (viewHeight * 2) - (TILE_SIZE * 3.35));
		}//end if
		else if(o_player.hp == 7) || (o_player.hp == 8) {
			draw_sprite(s_key_s, 0, TILE_SIZE + 16, (viewHeight * 2) - (TILE_SIZE * 3));
			draw_sprite(s_key_d, 0, TILE_SIZE + 32, (viewHeight * 2) - (TILE_SIZE * 3));
			draw_sprite(s_key_w, 0, TILE_SIZE + 16 , (viewHeight * 2) - (TILE_SIZE * 3.5));
			draw_sprite(s_mouse, 0,TILE_SIZE + 64, (viewHeight * 2) - (TILE_SIZE * 3.35));
		}//end else if
		else if(o_player.hp == 5) || (o_player.hp == 6) {
			draw_sprite(s_key_s, 0, TILE_SIZE + 16, (viewHeight * 2) - (TILE_SIZE * 3));
			draw_sprite(s_key_w, 0, TILE_SIZE + 16 , (viewHeight * 2) - (TILE_SIZE * 3.5));
			draw_sprite(s_mouse, 0,TILE_SIZE + 64, (viewHeight * 2) - (TILE_SIZE * 3.35));
		}//end else if
		else if(o_player.hp == 3) || (o_player.hp == 4) {
			draw_sprite(s_key_s, 0, TILE_SIZE + 16, (viewHeight * 2) - (TILE_SIZE * 3));
			draw_sprite(s_mouse, 0,TILE_SIZE + 64, (viewHeight * 2) - (TILE_SIZE * 3.35));
		}//end else if
		else if(o_player.hp == 1) || (o_player.hp == 2) {
			draw_sprite(s_mouse, 0,TILE_SIZE + 64, (viewHeight * 2) - (TILE_SIZE * 3.35));
		}//end else if
	}//end if
	else {
		//draw_game over
		draw_set_color(_c2);
		draw_set_alpha(0.5)
		draw_rectangle(0, 0, viewWidth * 2, viewHeight * 2, false);
		draw_set_alpha(1);
		draw_set_color(_c);

		draw_text(viewWidth, viewHeight- 32, "Thank you for your unvoluntary participation.");
		draw_set_color(c_yellow)
		draw_text(viewWidth, viewHeight - 32 + 24, "Your Score is: " + string(global.score));
		draw_set_color(_c);
		draw_text(viewWidth, viewHeight - 32 + 40, "Press R to apply for another unvo... test.");
	}//end else

}//end if

if(room == r_mainscreen) {
	draw_sprite(s_welcome, 0, 0, 0);
}//end if

if(room == r_tutorial) {
	draw_sprite(s_tutorial, 0, 0, 0);
}//end if



