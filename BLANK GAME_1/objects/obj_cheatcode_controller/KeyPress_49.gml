/// @description Teleport to the First Room if Levelport
if(cheats) {
	if(levelport) {
		room_goto(Room1);
		levelport = false;
		show_debug_message("Levelport One!")
	}
}