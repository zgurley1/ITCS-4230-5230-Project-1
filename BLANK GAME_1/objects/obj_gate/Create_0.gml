/// @description Insert description here
image_speed = 0;

opened = false;

function trigger() {
	image_speed = 1;
	
	opened = true;
	audio_play_sound(snd_gate,1, false)
}