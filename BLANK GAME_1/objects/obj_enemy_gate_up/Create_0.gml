/// @description Insert description here
image_speed = 0;
enemies_dead = 0;
array_push(global.gates_array,id);

function open_gate() {
	image_speed = 1;
	
	if(linked_gate_instance != noone) {
		with(linked_gate_instance) {
			open_gate();
		}
	}
}