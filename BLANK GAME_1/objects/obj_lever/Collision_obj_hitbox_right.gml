/// @description Insert description here
// You can write your code in this editor
if(delay = false) {
	obj_lever.image_index = !image_index;
	
	with(obj_A_block) {
		change_block();
	}

	delay = true;
}