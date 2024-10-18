// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage_and_knockback(attacker, target, damage, distance){
	if(!target.invincible) {
		target.health -= damage;
	}
	
	target.invincible = true;
	
	target.knockback_dir = point_direction(attacker.x, attacker.y, target.x, target.y);
	
	if(distance > 0) {
		target.alarm[2] = distance;
		target.knockback = true;
	} else {
		target.alarm[2] = 10;
	}
}