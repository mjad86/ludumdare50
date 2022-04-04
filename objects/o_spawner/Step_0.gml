var _enemyCount = instance_number(o_parent_enemy);
if(instance_exists(o_player)) && (_enemyCount < global.kills/4){
	if(_enemyCount > 50) {
		exit;
	}//end if
	
	if(global.kills > 20) && (instance_number(o_mob_02) < 5){
		var _enemy = choose(o_mob_01, o_mob_02);
	}//end if
	else {
		var _enemy = o_mob_01;
	}//end else
	
	instance_create_layer(x, y, "player", _enemy);
}//end if
