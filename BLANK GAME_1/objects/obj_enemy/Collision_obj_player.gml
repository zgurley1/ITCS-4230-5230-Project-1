/// @description Damage the player

scr_damage_and_knockback(id, other, damage, knockback_distance);

if(!ignore_player) {
	enemy_state = ENEMYSTATE.MOVING
	xspd *= -1;
	yspd *= -1;
	
	speed = 0;
}

ignore_player = true;

alarm[2] = 10;