/// @description Track enemy deaths and open gate(s) when quota is reached
if(instance_number(obj_enemy) - enemy_offset <= 0  && !opened) {
	open_gate();
}