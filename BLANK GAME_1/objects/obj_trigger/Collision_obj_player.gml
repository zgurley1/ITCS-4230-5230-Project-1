/// @description Trigger object's user 0 event
if(!triggered) {
	with(triggered_instance) {
		show_debug_message("Trigger Tripped");
		trigger();
	}
	
	triggered = true;
}