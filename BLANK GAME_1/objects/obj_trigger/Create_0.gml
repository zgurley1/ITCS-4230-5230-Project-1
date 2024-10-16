/// @description Find instance by nearest match to object
var _xpass;
var _ypass;

if(check_x >= 0) {
	_xpass = check_x;
} else {
	_xpass = x;
}

if(check_y >= 0) {
	_ypass = check_y;
} else {
	_ypass = y;
}

triggered_instance = instance_nearest(_xpass,_ypass,triggered_object)

show_debug_message("My ID: {0}",id)
show_debug_message("Triggering ID: {0}",triggered_instance)

triggered = false;

trigger = function() {
	show_debug_message("Triggering");
	triggered = false;
}