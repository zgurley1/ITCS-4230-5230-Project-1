/// @description Track enemy deaths and open gate(s) when quota is reached
var _inst_check = collision_rectangle(check_x1, check_y1, check_x2, check_y2, obj_enemy,false,true);
if(_inst_check == noone) {
	if(!opened) {
		open_gate();
	}
} else if (object_get_parent(_inst_check.object_index) == obj_enemy)  {
	opened = false;
}