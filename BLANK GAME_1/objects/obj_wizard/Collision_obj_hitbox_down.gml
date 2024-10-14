/// @description Master code for all sword collisons

//Handle Damage
if(!invincible) {
	hitpoints -= 10;
	
	//Become invincible to prevent spam attacks
	invincible = true;
	//Start an alarm to stop being invincible
	alarm[0] = 60;
	
	//Play hit animation
	sprite_index = spr_wizard_take_hit;
	
	//Check death
	if(hitpoints <= 0) {
		//This is dead, play death animation
		sprite_index = spr_wizard_death;
	}
}



//Check state. If in any attacks, end the attacks
if(boss_state = STATE.BULLET_HELL) {
	//call event in handler to stop bullethell
	with(obj_fireball_controller) {
		event_user(1)
	}
	
	//Change to moving state
	boss_state = STATE.MOVING
} else if(boss_state == STATE.SHOOT_FIREBOLT) {
	//Deactivate firebolts
	alarm[1] = -1;
	
	//Change to moving state
	boss_state = STATE.MOVING
} else if(boss_state == STATE.BIG_FIREBALL) {
	//destroy the big fireball
	instance_destroy(big_fireball);
	
	//Change to moving state
	boss_state = STATE.MOVING
}
	