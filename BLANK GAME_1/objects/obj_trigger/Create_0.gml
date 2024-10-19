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

triggered = false;

trigger = function() {
	triggered = false;
}