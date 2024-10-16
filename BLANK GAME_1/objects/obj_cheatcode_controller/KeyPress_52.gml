/// @description Teleport to the First Room if Levelport
if(cheats) {
	if(levelport) {
		room_goto(Room4);
		levelport = false;
		show_debug_message("Levelport Four!")
	}
}