// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_collision_x(){
	//what all needs collions
	//Walls
	//Pits
	//Potentially AB walls but they could be handeled elsewhere
	
	if place_meeting(obj_player.x + obj_player.xspd, obj_player.y, obj_wall) 
	{
			return true
	} else if place_meeting(obj_player.x + obj_player.xspd, obj_player.y, obj_pit)
	{
		return true
	} else if place_meeting(obj_player.x + obj_player.xspd, obj_player.y, obj_enemy)
	{
		return true
	} else if place_meeting(obj_player.x + obj_player.xspd, obj_player.y, obj_lever)
	{
		return true
	} else if place_meeting(obj_player.x + obj_player.xspd, obj_player.y, obj_A_block)
	{
		return true
	}
	
}

function scr_collision_y(){
	if place_meeting(obj_player.x, obj_player.y + obj_player.yspd, obj_wall) 
	{
		return true
	} else if place_meeting(obj_player.x, obj_player.y + obj_player.yspd, obj_pit)
	{
		return true
	} else if place_meeting(obj_player.x, obj_player.y + obj_player.yspd, obj_enemy)
	{
		return true
	} else if place_meeting(obj_player.x, obj_player.y + obj_player.yspd, obj_lever)
	{
		return true
	} else if place_meeting(obj_player.x, obj_player.y + obj_player.yspd, obj_A_block)
	{
		return true
	}
	
}