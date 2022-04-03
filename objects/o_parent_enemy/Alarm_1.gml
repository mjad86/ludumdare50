//MSG("alarm triggered")
if(path_exists(path)) {
	path_delete(path); //check if path exists b4 deleting it
}//end if
path = path_add(); //add new path

if(instance_exists(o_player)) && (o_player.state != player_state_dead) && (state == ENEMYSTATE.FREE) {
	
	//calculate destination
	targetX = o_player.x;
	targetY = o_player.y;
	
	//use the created grid and move in it
	mp_grid_path(global.grid, path, x, y, targetX, targetY, true);
	
	//use the path
	path_start(path, speedRun, path_action_stop, true);
}//end if

//alarm_set(1, 60);//loop alarm
