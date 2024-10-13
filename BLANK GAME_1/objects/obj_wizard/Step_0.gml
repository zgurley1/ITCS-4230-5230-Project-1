/// @description AI and Main Logic

//If in the Idle State, find an attack at random (WIP only one attack)
if(boss_state == STATE.IDLE && attack_ready) {
	var _attack_select = irandom_range(ATTACKS.BULLET_HELL,ATTACKS.BULLET_HELL);
	
	switch(_attack_select) {
		case ATTACKS.BULLET_HELL:
			boss_state = STATE.BULLET_HELL;
			attack_ready = false
			
			//Adjust sprite
			sprite_index =spr_wizard_attack;
			
			//Activate bullethell handler
			with(obj_fireball_controller) {
				event_user(0)
			}
			break;
	}
}

//If moving, move
if(boss_state == STATE.MOVING) {
	//Teleport to a random wizardport
	var _port_select;
	
	do {
		_port_select = irandom_range(0, array_length(global.wizardport_array) - 1);
	}
	until (global.wizardport_array[_port_select].x != x);
	
	show_debug_message(x);
	show_debug_message(y);
	show_debug_message(global.wizardport_array[_port_select].x);
	show_debug_message(global.wizardport_array[_port_select].y);
	
	x = global.wizardport_array[_port_select].x;
	y  = global.wizardport_array[_port_select].y;
	
	//Go to idle
	boss_state = STATE.IDLE;
	
	attack_ready = true;
}
