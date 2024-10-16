/// @description Logical Cleanup for enemy gates for preassigned enemies

if(!spawner_enemy) {
	if(instance_exists(obj_enemy_gate_up)) {
		with(obj_enemy_gate_up) {
			enemy_offset--;
		}
	} else if(instance_exists(obj_enemy_gate_down)) {
		with(obj_enemy_gate_down) {
			enemy_offset--;
		}
	}
}