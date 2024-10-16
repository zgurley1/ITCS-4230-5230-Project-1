/// @description Spawn enemies
if(enemy_count < enemy_limit) {
	var _spawn_x;
	var _spawn_y;
	//Get a random x,y for the enemy within bounds, far enough from the player)
	do {
		_spawn_x = random_range(corner1_x, corner2_x);
		_spawn_y = random_range(corner1_y, corner2_y);
	} until (point_distance(obj_player.x, obj_player.y, _spawn_x, _spawn_y) > 10);
	
	layer_sequence_create(layer, _spawn_x,_spawn_y , seq_enemy_in);
	instance_create_layer(_spawn_x,_spawn_y ,layer,obj_slime, {spawner_enemy: true});
	enemy_count++;
		
	alarm[0] = enemy_delay;
} else {
	alarm[0] = -1; //Stop spawning enemies
}