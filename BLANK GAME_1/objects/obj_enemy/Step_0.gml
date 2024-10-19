/// @description Insert description here
// You can write your code in this editor
if enemy_health <= 0
{
	instance_destroy();	
}

else if (instance_exists(obj_player)) and enemy_state != ENEMYSTATE.IDLE
{
	if (point_distance(x,y,obj_player.x, obj_player.y) <= attack_distance and !ignore_player)
	{
		enemy_state = ENEMYSTATE.CHASING
	} else
	{
		enemy_state = ENEMYSTATE.MOVING
	}
}



if enemy_state == ENEMYSTATE.IDLE
{
	alarm_set(1, idle_time)
	speed = 0
}
else if enemy_state == ENEMYSTATE.MOVING
{
	if scr_enemy_collision_x(self)
	{
		xspd = xspd * -1
	}
	if scr_enemy_collision_y(self)
	{
		yspd = yspd * -1
	}
	
	/*
	dir = irandom(1)
	if dir == 1
	{
		x += xspd
	}
	else
	{
		y += yspd
	}
	*/
	x += xspd
	y += yspd
	
	
}
else if enemy_state == ENEMYSTATE.CHASING
{
	
	if(instance_exists(obj_player)) {
		//Set the direction of the bullet towards the player
		
		if scr_enemy_collision_x(self) or scr_enemy_collision_y(self)
		{
			enemy_state = ENEMYSTATE.MOVING
			speed = 0;
		} else {
		
			direction = point_direction(x,y,obj_player.x,obj_player.y);
			speed = movespd
		}
		
	}
}