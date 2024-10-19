/// @description Teleport Here if Cheating

if obj_cheatcode_controller.cheats and global.clickable
{
	if(position_meeting(mouse_x, mouse_y, id)) {
		obj_player.x = x;
		obj_player.y = y;
	}
}