/// @description Insert description here
// Check if clicked on this object
if(position_meeting(mouse_x, mouse_y, id)) {
	//Change object imAge index (flip all levers)
	obj_lever.image_index = !image_index;
	
	a_block = !a_block
	
	with(instance_linked) {
		event_user(0);
	}
}