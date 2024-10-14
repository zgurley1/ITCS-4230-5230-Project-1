/// @description Target towards the player and go
//Check if the player exists
if(instance_exists(obj_player)) {
	//Set the direction of the bullet towards the player
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}
else {
	//Player does not exist, so "don't spawn" (destroy durring create)
	instance_destroy();
}

//Set the fireball's speed
speed = travel_speed;