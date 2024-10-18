/// @description Insert description here
image_speed = 0;


function open_gate() {
	image_speed = 1;
	audio_play_sound(snd_gate,1,false)
	opened = true;
}