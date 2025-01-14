/// @description AI and Main Logic

//If in the Idle State, find an attack at random (WIP only one attack)
if(boss_state == STATE.IDLE && attack_ready) {
	var _attack_select = irandom_range(ATTACKS.BULLET_HELL,ATTACKS.BIG_FIREBALL);
	
	switch(_attack_select) {
		case ATTACKS.BULLET_HELL:
			boss_state = STATE.BULLET_HELL;
			attack_ready = false;
			
			//Adjust sprite
			sprite_index =spr_wizard_attack;
			
			//Activate bullethell handler
			with(obj_fireball_controller) {
				event_user(0)
			}
			
			//Start firewall sound
			if(!audio_is_playing(firewall_sound)) {
				audio_play_sound(firewall_sound, 0,true);
			}
			break;
		case ATTACKS.FIREBOLT:
			boss_state = STATE.SHOOT_FIREBOLT;
			attack_ready = false;
			
			//Adjust sprite
			sprite_index =spr_wizard_attack;
			
			//Start shooting firebolts
			alarm[1] = firebolt_delay;
			break;
		case ATTACKS.BIG_FIREBALL:
			boss_state = STATE.BIG_FIREBALL;
			attack_ready = false;
			
			//Adjust sprite
			sprite_index =spr_wizard_attack;
			
			//Shoot the big fireball
			big_fireball = instance_create_layer(x,y,"Instances",obj_fireball_followball,
			{
				image_xscale: .5,
				image_yscale: .5,
				caster: id
			});
			
			//Play big fireball sound
			//End all potential sounds
			if(!audio_is_playing(followball_sound)) {
				audio_play_sound(followball_sound, 0, false);
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
	
	
	x = global.wizardport_array[_port_select].x;
	y  = global.wizardport_array[_port_select].y;
	
	//Go to idle
	boss_state = STATE.IDLE;
	
	attack_ready = true;
	
	//End all potential sounds
	if(audio_is_playing(firewall_sound)) {
		audio_stop_sound(firewall_sound);
	}
	
	if(audio_is_playing(followball_sound)) {
		audio_stop_sound(followball_sound);
	}
	
	//Play wizard laugh
	if(!audio_is_playing(wizard_laugh)) {
		audio_play_sound(wizard_laugh, 0, false);
	}
}
