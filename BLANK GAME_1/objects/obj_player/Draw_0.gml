/// @description Insert description here
// You can write your code in this editor
draw_self();
if(damaged_now){
	shader_set(shdrColorOverlay);
	shader_set_uniform_f_array(_uniColor, _color);
	draw_self();
	shader_reset();
}

damaged_now = false;