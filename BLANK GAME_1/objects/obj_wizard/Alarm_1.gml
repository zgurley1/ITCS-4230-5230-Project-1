/// @description Shoot firebolts on timer
instance_create_layer(x,y,"Instances",obj_firebolt);

//Play fireball sound
if(!audio_is_playing(firebolt_sound)) {
	audio_play_sound(firebolt_sound, 0, true);
}

alarm[1] = firebolt_delay;