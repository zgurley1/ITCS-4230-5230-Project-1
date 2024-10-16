/// @description Spawn enemies
if(enemy_count < enemy_limit) {
	layer_sequence_create(layer, x, y, seq_enemy_in);
	instance_create_layer(x,y,layer,obj_slime);
	enemy_count++;
		
	alarm[0] = enemy_delay;
} else {
	alarm[0] = -1; //Stop spawning enemies
}