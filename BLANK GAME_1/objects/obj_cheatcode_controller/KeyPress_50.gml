/// @description Teleport to the Second Room if Levelport
if(cheats) {
	if(levelport) {
		room_goto(Room2);
		levelport = false;
		show_debug_message("Levelport Two!")
	}
}