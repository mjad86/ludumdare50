//create grid on room start
if(global.grid != noone) {
	mp_grid_destroy(global.grid);//avoid memory leak
}//end if
global.grid = mp_grid_create(0, 0, room_width/(TILE_SIZE/4), room_height/TILE_SIZE, (TILE_SIZE/4), TILE_SIZE);
//add instance to grid
mp_grid_add_instances(global.grid, o_parent_col, true);

global.score = 0;
global.kills = 0;
