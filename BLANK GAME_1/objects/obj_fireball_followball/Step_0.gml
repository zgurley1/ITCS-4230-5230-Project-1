/// @description Move towards the player
move_towards_point(obj_player.x,obj_player.y,speed)

if(!audio_is_playing(snd_big_fireball)) {
	if(!audio_is_playing(snd_fire_long)){
		audio_play_sound(snd_fire_long,0,true,1,10);
	}
}