/// @description Insert description here

if(!invincible) {
	enemy_health -= 10;
	
}

invincible = true;

if(!ignore_player) {
	enemy_state = ENEMYSTATE.MOVING
	xspd *= -1;
	yspd *= -1;
	
	speed = 0;
}

ignore_player = true;

alarm[2] = 10;