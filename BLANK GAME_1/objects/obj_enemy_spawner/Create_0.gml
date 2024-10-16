/// @description Initialize internal variables
enemy_count = 0;

trigger = function() {
	if(!enemy_spawned) {
		show_debug_message("enemies spawning");
		alarm[0] = 1;
		enemy_spawned = true;
	}
}