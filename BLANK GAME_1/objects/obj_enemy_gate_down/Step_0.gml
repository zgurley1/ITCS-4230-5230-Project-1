/// @description Insert description here
var _inst_check = collision_rectangle(check_x1, check_y1, check_x2, check_y2, obj_enemy,false,true);
if (_inst_check == noone)  {
	if(opened) {
		show_debug_message("Ready")
		opened = false;
	}
} else if (object_get_parent(_inst_check.object_index) == obj_enemy) {
	if(!opened) {
		show_debug_message("Opening")
		open_gate();
	}
}