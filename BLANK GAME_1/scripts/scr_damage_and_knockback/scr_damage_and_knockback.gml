// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage_and_knockback(attacker, target, damage, distance){
	if(!target.invincible) {
		health -= damage;
	
		if(distance > 0) {
			target.knockback_dir = point_direction(attacker.x, attacker.y, target.x, target.y);
			target.alarm[2] = distance;
			target.alarm[3] = distance * 3;
			target.knockback = true;
		} else {
			target.alarm[3] = 10;
		}
	}
	target.invincible = true;
	target.damaged_now = true;
}