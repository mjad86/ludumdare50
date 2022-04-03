draw_self();
if(flash > 0) {
	shader_set(sh_flash_white);
	draw_self();
	shader_reset();
}//end if

//draw_line(x, y, o_player.x,o_player.y);
//draw_path(path, x, y, 1); //draw path


