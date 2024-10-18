/// @description Check the room and play the correct music

if(room == Room1 or room == Room2 or room == Room3 or room == Room_Start) {
	if(!audio_is_playing(bgm_main)) {
		audio_stop_all();
		audio_play_sound(bgm_main, 0,true);
	}
} 
else if(room == Room4) {
	if(!audio_is_playing(bgm_boss)) {
		audio_stop_all();
		audio_play_sound(bgm_boss, 0,true);
	}
}
