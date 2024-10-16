/// @description Trigger object's user 0 event
if(!triggered) {
	with(triggered_instance) {
		trigger();
	}
	
	triggered = true;
	
	if(!trigger_once) {
		alarm[0] = 200;
	}
}