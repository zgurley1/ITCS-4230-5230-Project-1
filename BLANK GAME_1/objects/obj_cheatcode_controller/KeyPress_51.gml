/// @description Teleport to the Third Room if Levelport
if(cheats) {
	if(levelport) {
		room_goto(Room3);
		levelport = false;
	}
}