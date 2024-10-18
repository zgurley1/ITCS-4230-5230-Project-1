// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_collision_x(enemy){
	//what all needs collions
	//Walls
	//Pits
	//Potentially AB walls but they could be handeled elsewhere
	
	offset = enemy.xspd * random_range(1,20)
	
	if place_meeting(enemy.x + offset, enemy.y, obj_wall) 
	{
			return true
	} else if place_meeting(enemy.x + offset, enemy.y, obj_pit)
	{
		return true
	} else if place_meeting(enemy.x + offset, enemy.y, obj_enemy)
	{
		return true
	} else if place_meeting(enemy.x + offset, enemy.y, obj_lever)
	{
		return true
	} else if place_meeting(enemy.x + offset, enemy.y, obj_A_block)
	{
		return true
	} else if place_meeting(enemy.x + offset, enemy.y, obj_enemy_gate_up)
	{
		return true
	} else if place_meeting(enemy.x + offset, enemy.y, obj_gate_up)
	{
		return true
	}
	 else if place_meeting(enemy.x + offset, enemy.y, obj_target)
	{
		return true
	}
	
}

function scr_enemy_collision_y(enemy){
	offset = enemy.yspd * random_range(1,20)
	if place_meeting(enemy.x, enemy.y + offset, obj_wall) 
	{
		return true
	} else if place_meeting(enemy.x, enemy.y + offset, obj_pit)
	{
		return true
	} else if place_meeting(enemy.x, enemy.y + offset, obj_enemy)
	{
		return true
	} else if place_meeting(enemy.x, enemy.y + offset, obj_lever)
	{
		return true
	} else if place_meeting(enemy.x, enemy.y + offset, obj_A_block)
	{
		return true
	} else if place_meeting(enemy.x, enemy.y + offset, obj_target)
	{
		return true
	}
	
}